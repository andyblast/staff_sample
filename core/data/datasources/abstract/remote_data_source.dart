import 'dart:io';

import 'package:dixy_staff/core/data/datasources/abstract/data_source.dart';
import 'package:dixy_staff/core/data/models/datasource_object.dart';

abstract class RemoteDataSource<T extends DataSourceObject>
    extends DataSource<T> {
  //=========== Дополнительные ============
  Future<String> uploadFile(File file);
}
