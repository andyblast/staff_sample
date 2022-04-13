import 'package:dixy_staff/core/data/models/datasource_filter.dart';
import 'package:dixy_staff/core/data/models/datasource_object.dart';

List<T> filterDataSourceObjects<T extends DataSourceObject>(
    List<T> list,
    DataSourceFilter<T>? filter,
    List<T> Function(List<T> allObjects)? sortFunction) {
  var resultList = list;

  if (filter != null) {
    if (filter.forLocal != null) {
      resultList = filter.forLocal!(resultList);
    }

    resultList = searchDataSourceObjects<T>(resultList, filter.searchText);
  }

  if (sortFunction != null) {
    resultList = sortFunction(resultList);
  }

  return resultList;
}

List<T> searchDataSourceObjects<T extends DataSourceObject>(
    List<T> list, String? searchText) {
  if (searchText != null && searchText.isNotEmpty) {
    final _searchText = searchText.trim().toLowerCase();
    //Ищем среди объектов
    return list.where((T object) {
      var values = object.getValuesForSearch().join(' ').trim().toLowerCase();

      return values.contains(_searchText);
    }).toList();
  } else {
    return list;
  }
}

List<T> paginateList<T>(List<T> resultList, int? page, int? limit) {
  if (resultList.isEmpty) return [];

  if (page != null && limit != null) {
    final rangeStart = page * limit;
    var rangeEnd = rangeStart + limit;

    if (resultList.length < rangeStart) {
      return [];
    }

    if (resultList.length < rangeEnd) {
      rangeEnd = resultList.length;
    }

    resultList = resultList.getRange(rangeStart, rangeEnd).toList();

    return resultList;
  } else {
    return resultList;
  }
}
