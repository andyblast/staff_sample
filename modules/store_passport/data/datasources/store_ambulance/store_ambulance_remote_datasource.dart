import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:dixy_staff/core/data/datasources/abstract/remote_data_source.dart';
import 'package:dixy_staff/core/data/models/datasource_filter.dart';
import 'package:dixy_staff/get_dio.dart';
import 'package:dixy_staff/injections_container.dart';
import 'package:dixy_staff/modules/store_passport/data/models/store_ambulance/store_ambulance_model.dart';

class StoreAmbulance_RemoteDataSource
    implements RemoteDataSource<StoreAmbulanceModel> {
  final Dio _client = getDio();
  final AuthRepo _authRepo = sl<AuthRepo>();

  @override
  Future<bool> add(StoreAmbulanceModel dataModel) async {
    throw UnimplementedError();
  }

  @override
  Future<bool> addAll(List<StoreAmbulanceModel> list) {
    throw UnimplementedError();
  }

  @override
  Future<bool> delete(id) {
    throw UnimplementedError();
  }

  @override
  Future<StoreAmbulanceModel?> read(id) async {
    final shopAmbulanceUrl = shopPassportApi + '/questions';

    try {
      final connect = await Connectivity().checkConnectivity();

      if (connect != ConnectivityResult.none) {
        final response = await _client.get(
          shopAmbulanceUrl,
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
          return StoreAmbulanceModel.fromJson(response.data);
        } else {
          throw Exception(response.statusCode);
        }
      } else {
        throw Exception('Нет соединения с интернетом');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<List<StoreAmbulanceModel>> readList(
      {int? page,
      int? limit,
      DataSourceFilter<StoreAmbulanceModel>? filter,
      List<StoreAmbulanceModel> Function(List<StoreAmbulanceModel> allObjects)?
          sortFunction}) {
    throw UnimplementedError();
  }

  @override
  Future<bool> update(StoreAmbulanceModel dataModel) {
    throw UnimplementedError();
  }

  @override
  Future<String> uploadFile(File file) {
    throw UnimplementedError();
  }
}
