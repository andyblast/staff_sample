import 'package:dixy_staff/core/data/models/datasource_object.dart';

class DataSourceFilter<T extends DataSourceObject> {
  Map<String, dynamic>? params;

  ///Можно использовать для локального поиска
  final List<T> Function(
    List<T> allObjects,
  )? forLocal;

  //Можно использовать для запроса к API
  final List? forRemote;

  //Для поиска в API
  final String? searchText;

  DataSourceFilter({
    this.params,
    this.forLocal,
    this.forRemote,
    this.searchText,
  });

  @override
  String toString() {
    return 'DataSourceFilter<$T>('
        'searchText: $searchText,'
        'params: $params,'
        'forLocal: $forLocal,'
        'forRemote: $forRemote,'
        ')';
  }
}
