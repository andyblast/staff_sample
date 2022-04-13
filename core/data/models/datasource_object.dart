//Класс для описания объекта в DataSource
//Его нужно унаследовать на те модели,
//которые будут записываться в локальный DataSource
abstract class DataSourceObject {
  String? getIDValue();

  List<String> getValuesForSearch();
}
