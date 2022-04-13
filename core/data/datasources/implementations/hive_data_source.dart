import 'package:dixy_staff/core/data/datasources/abstract/local_data_source.dart';
import 'package:dixy_staff/core/data/datasources/utils/data_object_utils.dart';
import 'package:dixy_staff/core/data/models/datasource_filter.dart';
import 'package:dixy_staff/core/data/models/datasource_object.dart';
import 'package:hive/hive.dart';

class HiveDataSource<T extends DataSourceObject> extends LocalDataSource<T> {
  late Box<T> _box;

  @override
  Future<void> init({bool needCheckSiteCode = false}) async {
    await super.init(needCheckSiteCode: needCheckSiteCode);

    try {
      _box = await Hive.openBox<T>(T.toString());
    } catch (e) {
      await Hive.deleteBoxFromDisk(T.toString());
      _box = await Hive.openBox<T>(T.toString());
    }
  }

  @override
  Future<bool> add(T dataModel) async {
    await _box.delete(dataModel.getIDValue());
    await _box.put(dataModel.getIDValue(), dataModel);
    await setCurrentSiteCode();
    return true;
  }

  @override
  Future<bool> addAll(List<T> list) async {
    list.forEach((element) async {
      await add(element);
    });
    await setCurrentSiteCode();
    return true;
  }

  @override
  Future<void> clear() async {
    await _box.clear();
  }

  @override
  Future<bool> delete(dynamic id) async {
    await _box.delete(id);
    return true;
  }

  @override
  Future<T?> read(id) async {
    if (needCheckSiteCode && await checkSiteCode() == false) {
      return null;
    }
    return _box.get(id);
  }

  @override
  Future<List<T>> readList(
      {int? page,
      int? limit,
      DataSourceFilter<T>? filter,
      List<T> Function(List<T> allObjects)? sortFunction}) async {
    if (needCheckSiteCode && await checkSiteCode() == false) {
      return [];
    }
    if (_box.length == 0) return [];

    var list = _box.values.toList();

    final resultList = filterDataSourceObjects(list, filter, sortFunction);

    return paginateList(resultList, page, limit);
  }

  @override
  Future<bool> update(T dataModel) async {
    try {
      await _box.put(dataModel.getIDValue(), dataModel);
      return true;
    } catch (e) {
      return false;
    }
  }
}
