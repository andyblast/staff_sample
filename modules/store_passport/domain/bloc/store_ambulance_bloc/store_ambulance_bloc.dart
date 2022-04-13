import 'package:bloc/bloc.dart';
import 'package:dixy_staff/core/data/datasources/abstract/remote_data_source.dart';
import 'package:dixy_staff/modules/store_passport/data/models/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_ambulance_bloc.freezed.dart';

@freezed
class StoreAmbulanceEvent with _$StoreAmbulanceEvent {
  const StoreAmbulanceEvent._();

  const factory StoreAmbulanceEvent.create(StoreAmbulanceModel model) =
      CreateStoreAmbulanceEvent;
  const factory StoreAmbulanceEvent.read() = ReadStoreAmbulanceEvent;
  const factory StoreAmbulanceEvent.update(StoreAmbulancePostModel postModel) =
      UpdateStoreAmbulanceEvent;
  const factory StoreAmbulanceEvent.delete() = DeleteStoreAmbulanceEvent;
}

@freezed
class StoreAmbulanceState with _$StoreAmbulanceState {
  const StoreAmbulanceState._();

  const factory StoreAmbulanceState.initial() = InitialStoreAmbulanceState;

  const factory StoreAmbulanceState.loading(String message) =
      LoadingStoreAmbulanceState;
  const factory StoreAmbulanceState.loaded(StoreAmbulanceModel model) =
      LoadedStoreAmbulanceState;

  const factory StoreAmbulanceState.uploading() = UploadingStoreAmbulanceState;
  const factory StoreAmbulanceState.uploaded() = UploadedStoreAmbulanceState;
  const factory StoreAmbulanceState.error(String message) =
      ErrorStoreAmbulancState;
  const factory StoreAmbulanceState.postError(String message) =
      PostErrorStoreAmbulancState;
  const factory StoreAmbulanceState.forbidden(String message) =
      ForbiddenStoreAmbulancState;
}

class StoreAmbulanceBloc
    extends Bloc<StoreAmbulanceEvent, StoreAmbulanceState> {
  final RemoteDataSource<StoreAmbulanceModel> _remotaDataSource;
  final RemoteDataSource<StoreAmbulancePostModel> _postRemotaDataSource;

  StoreAmbulanceBloc({
    required RemoteDataSource<StoreAmbulanceModel> remotaDataSource,
    required RemoteDataSource<StoreAmbulancePostModel> postRemotaDataSource,
  })  : _remotaDataSource = remotaDataSource,
        _postRemotaDataSource = postRemotaDataSource,
        super(const InitialStoreAmbulanceState());

  @override
  Stream<StoreAmbulanceState> mapEventToState(StoreAmbulanceEvent event) =>
      event.when<Stream<StoreAmbulanceState>>(
        create: _create,
        read: _read,
        update: _update,
        delete: _delete,
      );

  Stream<StoreAmbulanceState> _create(StoreAmbulanceModel model) async* {}

  Stream<StoreAmbulanceState> _read() async* {
    yield LoadingStoreAmbulanceState('Загрузка списка вопросов...');

    try {
      final result = await _remotaDataSource.read(0);

      if (result != null) {
        yield LoadedStoreAmbulanceState(result);
      } else {
        yield ErrorStoreAmbulancState('Не удалось загрузить список вопросов');
      }
    } catch (e) {
      if (e.toString().contains('403')) {
        yield ForbiddenStoreAmbulancState(
          'Недостаточно прав для просмотра этой страницы',
        );
      } else {
        yield ErrorStoreAmbulancState(
          'Ошибка соединения. Не удалось загрузить данные',
        );
      }
    }
  }

  Stream<StoreAmbulanceState> _update(
      StoreAmbulancePostModel postModel) async* {
    yield LoadingStoreAmbulanceState('Отправка данных...');

    try {
      final addResult = await _postRemotaDataSource.add(postModel);

      if (!addResult) {
        yield PostErrorStoreAmbulancState('Не удалось отправить запрос');
      } else {
        yield UploadedStoreAmbulanceState();
      }

      yield* _read();
    } catch (e) {
      yield PostErrorStoreAmbulancState('Возникла ошибка при отправке данных');
    }
  }

  Stream<StoreAmbulanceState> _delete() async* {}
}
