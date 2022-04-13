import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:dixy_staff/core/data/datasources/abstract/remote_data_source.dart';
import 'package:dixy_staff/core/data/models/datasource_filter.dart';
import 'package:dixy_staff/get_dio.dart';
import 'package:dixy_staff/injections_container.dart';
import 'package:dixy_staff/modules/store_passport/data/models/index.dart';

class StoreAmbulancePost_RemoteDataSource
    implements RemoteDataSource<StoreAmbulancePostModel> {
  final Dio _client = getDio();
  final AuthRepo _authRepo = sl<AuthRepo>();

  @override
  Future<bool> add(StoreAmbulancePostModel dataModel) async {
    final shopAmbulanceUrl = shopPassportApi + '/questions';

    try {
      final connect = await Connectivity().checkConnectivity();

      if (connect != ConnectivityResult.none) {
        final response = await _client.post(
          shopAmbulanceUrl,
          data: dataModel.toJson(),
          options: Options(
            receiveTimeout: 60000,
            contentType: Headers.jsonContentType,
            followRedirects: false,
            headers: {
              'Authorization': _authRepo.token.authorizationHeaderValue,
              'siteId': _authRepo.defaultSiteId,
            },
          ),
        );

        if (response.statusCode! >= 200 && response.statusCode! < 300) {
          return true;
        } else {
          throw Exception(response.statusMessage);
        }
      } else {
        throw Exception('Нет соединения с интернетом');
      }
    } catch (_) {
      throw Exception('Ошибка соединения. Не удалось отправить данные');
    }
  }

  @override
  Future<bool> addAll(List<StoreAmbulancePostModel> list) {
    throw UnimplementedError();
  }

  @override
  Future<bool> delete(id) {
    throw UnimplementedError();
  }

  @override
  Future<StoreAmbulancePostModel?> read(id) {
    throw UnimplementedError();
  }

  @override
  Future<List<StoreAmbulancePostModel>> readList(
      {int? page,
      int? limit,
      DataSourceFilter<StoreAmbulancePostModel>? filter,
      List<StoreAmbulancePostModel> Function(
              List<StoreAmbulancePostModel> allObjects)?
          sortFunction}) {
    throw UnimplementedError();
  }

  @override
  Future<bool> update(StoreAmbulancePostModel dataModel) {
    throw UnimplementedError();
  }

  @override
  Future<String> uploadFile(File file) {
    throw UnimplementedError();
  }
}
