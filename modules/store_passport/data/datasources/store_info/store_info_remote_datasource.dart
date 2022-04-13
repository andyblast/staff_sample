import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dixy_staff/core/data/datasources/abstract/remote_data_source.dart';
import 'package:dixy_staff/core/data/models/datasource_filter.dart';
import 'package:dixy_staff/get_dio.dart';
import 'package:dixy_staff/injections_container.dart';
import 'package:dixy_staff/modules/store_passport/data/models/index.dart';

class StoreInfo_RemoteDataSource implements RemoteDataSource<StoreInfoModel> {
  final Dio _client = getDio();
  final AuthRepo _authRepo = sl<AuthRepo>();

  @override
  Future<bool> add(StoreInfoModel dataModel) {
    throw UnimplementedError();
  }

  @override
  Future<bool> addAll(List<StoreInfoModel> list) {
    throw UnimplementedError();
  }

  @override
  Future<bool> delete(id) {
    throw UnimplementedError();
  }

  @override
  Future<StoreInfoModel?> read(id) async {
    final shopInfoUrl = shopPassportApi + '/shop_info';

    try {
      final response = await _client.get(
        shopInfoUrl,
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
        return StoreInfoModel.fromJson(response.data);
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (_) {
      throw Exception('Ошибка соединения. Повторите позже');
    }
  }

  @override
  Future<List<StoreInfoModel>> readList(
      {int? page,
      int? limit,
      DataSourceFilter<StoreInfoModel>? filter,
      List<StoreInfoModel> Function(List<StoreInfoModel> allObjects)?
          sortFunction}) {
    throw UnimplementedError();
  }

  @override
  Future<bool> update(StoreInfoModel dataModel) {
    throw UnimplementedError();
  }

  @override
  Future<String> uploadFile(File file) {
    throw UnimplementedError();
  }
}
