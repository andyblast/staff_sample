import 'package:dixy_staff/core/data/models/datasource_filter.dart';
import 'package:dixy_staff/core/data/models/datasource_object.dart';

abstract class DataSource<T extends DataSourceObject> {
  //============== Чтение =================
  Future<T?> read(dynamic id);

  Future<List<T>> readList({
    int? page,
    int? limit,
    DataSourceFilter<T>? filter,
    List<T> Function(List<T> allObjects)? sortFunction,
  });

  //============== Запись =================
  Future<bool> add(T dataModel);

  Future<bool> addAll(List<T> list);

  //============== Удаление ===============
  Future<bool> delete(dynamic id);

  //============ Обновление ===============
  Future<bool> update(T dataModel);
}
