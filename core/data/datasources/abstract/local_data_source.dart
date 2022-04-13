import 'package:dixy_staff/core/data/datasources/abstract/data_source.dart';
import 'package:dixy_staff/core/data/models/datasource_filter.dart';
import 'package:dixy_staff/core/data/models/datasource_object.dart';
import 'package:dixy_staff/injections_container.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalDataSource<T extends DataSourceObject>
    extends DataSource<T> {
  late final SharedPreferences sp;
  late final bool needCheckSiteCode;

  //=========== Дополнительные ============
  Future<void> init({bool needCheckSiteCode = false}) async {
    this.needCheckSiteCode = needCheckSiteCode;

    sp = await SharedPreferences.getInstance();
  }

  Future<void> clear();

  ///Функция проверяет, что данные которые в последний раз были загружены
  ///были для текущего магазина
  Future<bool> checkSiteCode() async {
    final current = await _getCurrentSiteCode();
    final old = await _getLastSiteCode();

    if (current != old) {
      return false;
    } else {
      return true;
    }
  }

  Future<T?> readWithCheckSiteCode(dynamic id) async {
    if (await checkSiteCode() == false) {
      return null;
    }
    return await read(id);
  }

  Future<List<T>> readListWithCheckSiteCode({
    int? page,
    int? limit,
    DataSourceFilter<T>? filter,
    List<T> Function(List<T> allObjects)? sortFunction,
  }) async {
    if (await checkSiteCode() == false) {
      return [];
    }
    return await readList(
      page: page,
      limit: limit,
      filter: filter,
      sortFunction: sortFunction,
    );
  }

  Future<String> _getCurrentSiteCode() async {
    try {
      final user = sl<AuthRepo>();
      return user.defaultSiteCode ?? '';
    } catch (e) {
      print(e);
    }
    return '';
  }

  Future<void> setCurrentSiteCode() async {
    try {
      final siteCode = await _getCurrentSiteCode();
      await sp.setString('LastSiteCode_' + T.toString(), siteCode);
    } catch (e) {
      print(e);
    }
  }

  Future<String> _getLastSiteCode() async {
    try {
      final result = sp.getString('LastSiteCode_' + T.toString());

      return result ?? '';
    } catch (e) {
      print(e);
      return '';
    }
  }
}
