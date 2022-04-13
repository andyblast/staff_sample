import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:dixy_staff/core/data/datasources/abstract/remote_data_source.dart';
import 'package:dixy_staff/core/data/models/datasource_filter.dart';
import 'package:dixy_staff/get_dio.dart';
import 'package:dixy_staff/injections_container.dart';
import 'package:dixy_staff/modules/store_passport/data/models/index.dart';

class StoreSelectionDetail_RemoteDataSource
    implements RemoteDataSource<StoreSelectionRequestDetailModel> {
  final Dio _client = getDio();
  final AuthRepo _authRepo = sl<AuthRepo>();

  @override
  Future<bool> add(StoreSelectionRequestDetailModel dataModel) {
    throw UnimplementedError();
  }

  @override
  Future<bool> addAll(List<StoreSelectionRequestDetailModel> list) {
    throw UnimplementedError();
  }

  @override
  Future<bool> delete(id) async {
    final shopSelectionUrl = shopPassportApi + '/selection/details/$id/cancel';

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
  Future<StoreSelectionRequestDetailModel?> read(id) {
    throw UnimplementedError();
  }

  @override
  Future<List<StoreSelectionRequestDetailModel>> readList({
    int? page,
    int? limit,
    DataSourceFilter<StoreSelectionRequestDetailModel>? filter,
    List<StoreSelectionRequestDetailModel> Function(
            List<StoreSelectionRequestDetailModel> allObjects)?
        sortFunction,
  }) async {
    if (filter == null ||
        filter.params == null ||
        filter.params!['requestId'] == null) {
      throw Exception('Не передан параметр requestId');
    }

    final requestId = filter.params!['requestId'];
    final shopSelectionUrl = shopPassportApi + '/selection/$requestId/details';

    try {
      final connect = await Connectivity().checkConnectivity();

      if (connect != ConnectivityResult.none) {
        final response = await _client.get(
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
          final result = <StoreSelectionRequestDetailModel>[];

          (response.data as List).forEach((element) {
            result.add(StoreSelectionRequestDetailModel.fromJson(element));
          });

          return result;
        } else {
          throw Exception(response.statusMessage);
        }
      } else {
        throw Exception('Нет соединения с интернетом');
      }
    } catch (_) {
      throw Exception('Ошибка соединения. Не удалось загрузить данные');
    }
  }

  @override
  Future<bool> update(StoreSelectionRequestDetailModel dataModel) {
    throw UnimplementedError();
  }

  @override
  Future<String> uploadFile(File file) {
    throw UnimplementedError();
  }
}
