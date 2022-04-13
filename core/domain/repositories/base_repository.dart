import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:dixy_staff/core/data/datasources/abstract/local_data_source.dart';
import 'package:dixy_staff/core/data/datasources/abstract/remote_data_source.dart';
import 'package:dixy_staff/core/data/models/datasource_filter.dart';
import 'package:dixy_staff/core/data/models/datasource_object.dart';
import 'package:dixy_staff/core/data/models/event_model.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class BaseRepository<T extends DataSourceObject> {
  final Connectivity connectivity;
  final LocalDataSource<T> localDataSource;
  final RemoteDataSource<T> remoteDataSource;
  final LocalDataSource<EventModel> eventsDataSource;
  DateTime? lastDateUpdate;

  BaseRepository({
    required this.localDataSource,
    required this.remoteDataSource,
    required this.eventsDataSource,
    required this.connectivity,
  }) : super();

  Future<Either<Exception, ResultRepo<T?>>> read(dynamic id) async {
    /// Получает данные заданного типа из локального или удаленного хранилища
    /// в зависимости от соединения с инертнетом.
    /// Если нет соединения, читает из локального хранилища.
    /// При наличии соединения сначала проверяет, есть ли записи событий,
    /// которые пользователь совершал при отсутствии коннекта (читает лог).
    /// Если записи есть, то производит отправку информации на сервер.
    /// Затем получает информацию из удаленного хранилища и кеширует ее в
    /// локальном хранилище.
    try {
      await _loadLastDateUpdate();

      final connect = await connectivity.checkConnectivity();

      if (connect != ConnectivityResult.none) {
        /// отправляем записи из локальной базы на сервер
        await uploadEvents();

        /// запрашиваем с сервера
        final resultFromServer = await remoteDataSource.read(id);

        /// очистка кеша локальной базы
        // await localDataSource.clear();

        if (resultFromServer != null) {
          /// записываем в локальную базу ответ сервера
          await localDataSource.add(resultFromServer);
        }

        await _setLastDateUpdate();

        /// возвращаем результат с данными из ответа сервера
        return Right(ResultRepo(
          connected: true,
          data: resultFromServer,
          dateLastUpdate: lastDateUpdate,
        ));
      }
      final result = await localDataSource.read(id);

      return Right(ResultRepo(
        connected: false,
        data: result,
        dateLastUpdate: lastDateUpdate,
      ));
    } catch (e) {
      return Left(Exception(e));
    }
  }

  Future<Either<Exception, ResultRepo<List<T>>>> readList(
      {int? page,
      int? limit,
      DataSourceFilter<T>? filter,
      List<T> Function(List<T> allObjects)? sortFunction}) async {
    try {
      await _loadLastDateUpdate();

      final connect = await connectivity.checkConnectivity();

      if (connect != ConnectivityResult.none) {
        /// читаем журнал событий из локальной базы
        await uploadEvents();

        /// запрашиваем с сервера
        final resultFromServer = await remoteDataSource.readList(
            page: page,
            limit: limit,
            filter: filter,
            sortFunction: sortFunction);

        /// очистка кеша локальной базы
        await localDataSource.clear();

        // if (resultFromServer.isEmpty) {
        //   await localDataSource.clear();
        // }

        /// записываем в локальную базу ответ сервера
        await localDataSource.addAll(resultFromServer);

        await _setLastDateUpdate();

        /// возвращаем результат с данными из ответа сервера
        return Right(
          ResultRepo(
            connected: true,
            data: resultFromServer,
            dateLastUpdate: lastDateUpdate,
          ),
        );
      }
      final result = await localDataSource.readList(page: page, limit: limit);

      return Right(ResultRepo(
        connected: false,
        data: result,
        dateLastUpdate: lastDateUpdate,
      ));
    } catch (e) {
      return Left(Exception(e));
    }
  }

  Future<void> uploadEvents() async {
    /// читаем журнал событий из локальной базы
    final eventsFromDb = await eventsDataSource.readList();

    /// если есть записи в журнале событий
    if (eventsFromDb.isNotEmpty) {
      await Future.forEach(eventsFromDb, (EventModel event) async {
        var uploadEvent = '';
        if (event.eventType == EventType.upload) {
          final result = (await uploadFileOrPhoto(File(event.payload)));
          if (result.connected) {
            uploadEvent = result.data;
          }
        } else {
          final upl = await addData(event.payload as T);
          if (upl.connected && upl.data) {
            uploadEvent = 'success';
          }
        }

        /// удаляем отправленные записи из журнала событий
        if (uploadEvent.isNotEmpty) {
          await eventsDataSource.delete(event.id);
        } else {
          throw Exception(
              'Не удалось добавить запись в журнал событий репозитория');
        }
      });
    }
  }

  Future<Either<Exception, List<T>>> fetchCashedData(
      int page, int limit) async {
    try {
      final result = await localDataSource.readList(page: page, limit: limit);
      return Right(result);
    } on Exception {
      return Left(Exception());
    }
  }

  Future<ResultRepo<bool>> addData(T dataModel) async {
    await _loadLastDateUpdate();

    /// Добавляет данные заданного типа в локальное или удаленное хранилище
    /// в зависимости от наличия соединения с интернетом
    final connect = await connectivity.checkConnectivity();
    if (connect != ConnectivityResult.none) {
      final result = await remoteDataSource.add(dataModel);

      await _setLastDateUpdate();

      return ResultRepo(
        connected: true,
        data: result,
        dateLastUpdate: lastDateUpdate,
      );
    } else {
      final _event = EventModel<T>(
        id: Uuid().v4(),
        eventType: EventType.create,
        payload: dataModel,
      );
      try {
        await eventsDataSource.add(_event);
        final result = await localDataSource.add(dataModel);

        return ResultRepo(
          connected: false,
          data: result,
          dateLastUpdate: lastDateUpdate,
        );
      } catch (e) {
        print('add data to local DB error: $e');
        return ResultRepo(
          connected: false,
          data: false,
          dateLastUpdate: lastDateUpdate,
        );
      }
    }
  }

  Future<ResultRepo<bool>> updateData(T dataModel) async {
    await _loadLastDateUpdate();

    final connect = await connectivity.checkConnectivity();
    if (connect != ConnectivityResult.none) {
      final result = await remoteDataSource.update(dataModel);

      await _setLastDateUpdate();

      return ResultRepo(
        connected: true,
        data: result,
        dateLastUpdate: lastDateUpdate,
      );
    } else {
      final _event = EventModel<T>(
        id: Uuid().v4(),
        eventType: EventType.update,
        payload: dataModel,
      );
      try {
        await eventsDataSource.add(_event);
        final result = await localDataSource.update(dataModel);

        return ResultRepo(
          connected: false,
          data: result,
          dateLastUpdate: lastDateUpdate,
        );
      } catch (e) {
        print('update data to local DB error: $e');

        return ResultRepo(
          connected: false,
          data: false,
          dateLastUpdate: lastDateUpdate,
        );
      }
    }
  }

  Future<ResultRepo<bool>> deleteData(String id) async {
    await _loadLastDateUpdate();

    /// Удаление заданного объекта по его айди из удаленного и локального
    /// хранилища
    final connect = await connectivity.checkConnectivity();
    if (connect != ConnectivityResult.none) {
      final result = await remoteDataSource.delete(id);

      await _setLastDateUpdate();

      return ResultRepo(
        connected: true,
        data: result,
        dateLastUpdate: lastDateUpdate,
      );
    } else {
      final _event = EventModel<String>(
        id: Uuid().v4(),
        eventType: EventType.delete,
        payload: id,
      );
      try {
        await eventsDataSource.add(_event);
        final result = await localDataSource.delete(id);

        return ResultRepo(
          connected: false,
          data: result,
          dateLastUpdate: lastDateUpdate,
        );
      } catch (e) {
        print('add data to local DB error: $e');

        return ResultRepo(
          connected: false,
          data: false,
          dateLastUpdate: lastDateUpdate,
        );
      }
    }
  }

  Future<ResultRepo<String>> uploadFileOrPhoto(File file) async {
    await _loadLastDateUpdate();

    final connect = await connectivity.checkConnectivity();
    if (connect != ConnectivityResult.none) {
      final result = await remoteDataSource.uploadFile(file);

      await _setLastDateUpdate();

      return ResultRepo(
        connected: true,
        data: result,
        dateLastUpdate: lastDateUpdate,
      );
    } else {
      final _event = EventModel<File>(
        id: Uuid().v4(),
        eventType: EventType.create,
        payload: file,
      );
      try {
        await eventsDataSource.add(_event);

        return ResultRepo(
          connected: false,
          data: file.path,
          dateLastUpdate: lastDateUpdate,
        );
      } catch (e) {
        print('add data to local DB error: $e');

        return ResultRepo(
          connected: false,
          data: '',
          dateLastUpdate: lastDateUpdate,
        );
      }
    }
  }

  Future<void> _loadLastDateUpdate() async {
    try {
      if (lastDateUpdate == null) {
        final sp = await SharedPreferences.getInstance();
        final lastDate = sp.getString('LastDateUpdate_' + T.toString());

        if (lastDate != null) {
          lastDateUpdate =
              DateTime.fromMillisecondsSinceEpoch(int.parse(lastDate));
        } else {
          lastDateUpdate = null;
        }
      } else {
        lastDateUpdate = lastDateUpdate;
      }
    } catch (e) {
      print(e);
      lastDateUpdate = lastDateUpdate;
    }
  }

  Future<void> _setLastDateUpdate() async {
    try {
      lastDateUpdate = DateTime.now();
      final sp = await SharedPreferences.getInstance();
      await sp.setString('LastDateUpdate_' + T.toString(),
          lastDateUpdate!.millisecondsSinceEpoch.toString());
    } catch (e) {
      print(e);
    }
  }
}

class ResultRepo<T> {
  final bool connected;
  final T data;
  final DateTime? dateLastUpdate;

  ResultRepo({
    required this.connected,
    required this.data,
    required this.dateLastUpdate,
  });

  ResultRepo<T> copyWith({
    bool? connected,
    T? data,
    DateTime? dateLastUpdate,
  }) {
    return ResultRepo<T>(
      connected: connected ?? this.connected,
      data: data ?? this.data,
      dateLastUpdate: dateLastUpdate ?? this.dateLastUpdate,
    );
  }
}
