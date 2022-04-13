import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:dixy_staff/core/data/datasources/abstract/remote_data_source.dart';
import 'package:dixy_staff/core/data/models/datasource_filter.dart';
import 'package:dixy_staff/get_dio.dart';
import 'package:dixy_staff/injections_container.dart';
import 'package:dixy_staff/modules/store_passport/data/models/index.dart';

class StoreSelectionPost_RemoteDataSource
    implements RemoteDataSource<StoreSelectionPostModel> {
  final Dio _client = getDio();
  final AuthRepo _authRepo = sl<AuthRepo>();

  @override
  Future<bool> add(StoreSelectionPostModel dataModel) async {
    final shopSelectionUrl = shopPassportApi + '/selection/createRequest';

    try {
      final connect = await Connectivity().checkConnectivity();

      if (connect != ConnectivityResult.none) {
        final response = await _client.post(
          shopSelectionUrl,
          data: dataModel.toJson(),
          options: Options(
            receiveTimeout: 60000,
            contentType: Headers.jsonContentType,
            followRedirects: false,
            headers: {
              'Authorization': _authRepo.token.authorizationHeaderValue,
              'siteId': _authRepo.defaultSiteId
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
  Future<bool> addAll(List<StoreSelectionPostModel> list) {
    throw UnimplementedError();
  }

  @override
  Future<bool> delete(id) async {
    final shopSelectionUrl = shopPassportApi + '/selection/$id/cancel';

    try {
      final connect = await Connectivity().checkConnectivity();

      if (connect != ConnectivityResult.none) {
        final response = await _client.put(
          shopSelectionUrl,
          options: Options(
            receiveTimeout: 60000,
            contentType: Headers.jsonContentType,
            followRedirects: false,
            headers: {
              'Authorization': _authRepo.token.authorizationHeaderValue,
              'siteId': _authRepo.defaultSiteId
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
      throw Exception('Ошибка соединения. Не удалось удалить данные');
    }
  }

  @override
  Future<StoreSelectionPostModel?> read(id) {
    throw UnimplementedError();
  }

  @override
  Future<List<StoreSelectionPostModel>> readList(
      {int? page,
      int? limit,
      DataSourceFilter<StoreSelectionPostModel>? filter,
      List<StoreSelectionPostModel> Function(
              List<StoreSelectionPostModel> allObjects)?
          sortFunction}) {
    throw UnimplementedError();
  }

  @override
  Future<bool> update(StoreSelectionPostModel dataModel) {
    throw UnimplementedError();
  }

  @override
  Future<String> uploadFile(File file) {
    throw UnimplementedError();
  }
}
