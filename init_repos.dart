import 'package:dixy_staff/core/data/datasources/abstract/local_data_source.dart';
import 'package:dixy_staff/core/data/datasources/abstract/remote_data_source.dart';
import 'package:dixy_staff/core/data/datasources/implementations/hive_data_source.dart';
import 'package:dixy_staff/core/data/models/datasource_object.dart';
import 'package:dixy_staff/core/domain/repositories/base_repository.dart';
import 'package:dixy_staff/injections_container.dart';
import 'modules/store_passport/data/datasources/index.dart';
import 'modules/store_passport/data/models/index.dart';

Future<void> initRepos() async {
  /// StorePassport models
  //=========================================================

  /// StoreAmbulanceModel
  sl.registerLazySingleton<RemoteDataSource<StoreAmbulanceModel>>(
      () => StoreAmbulance_RemoteDataSource());
  await initRepoFor<StoreAmbulanceModel>();

  sl.registerLazySingleton<RemoteDataSource<StoreAmbulancePostModel>>(
      () => StoreAmbulancePost_RemoteDataSource());
  await initRepoFor<StoreAmbulancePostModel>();

  /// StoreSelectionModel
  sl.registerLazySingleton<RemoteDataSource<StoreSelectionViewModel>>(
      () => StoreSelectionView_RemoteDataSource());
  await initRepoFor<StoreSelectionViewModel>();

  sl.registerLazySingleton<RemoteDataSource<StoreSelectionPostModel>>(
      () => StoreSelectionPost_RemoteDataSource());
  await initRepoFor<StoreSelectionPostModel>();

  sl.registerLazySingleton<RemoteDataSource<StoreSelectionRequestDetailModel>>(
      () => StoreSelectionDetail_RemoteDataSource());
  await initRepoFor<StoreSelectionRequestDetailModel>();

  /// StoreInfoModel
  sl.registerLazySingleton<RemoteDataSource<StoreInfoModel>>(
      () => StoreInfo_RemoteDataSource());
  await initRepoFor<StoreInfoModel>();
}

class ExecutorsGroupModel_RemoteDataSource {}

//Функция для связывания имплементаций репозиторий с типами объектов
Future<void> initRepoFor<T extends DataSourceObject>(
    {bool needCheckSiteCode = false}) async {
  //Инициализируем локальный DataSource для заданного типа
  final localDataSource = HiveDataSource<T>();
  sl.registerLazySingleton<LocalDataSource<T>>(() => localDataSource);

  //Делаем инициализацию локального репозитория (нужно для hive)
  await localDataSource.init(needCheckSiteCode: needCheckSiteCode);

  //Инициализируем Базовый репозиторий
  sl.registerLazySingleton<BaseRepository<T>>(() => BaseRepository<T>(
        localDataSource: sl(),
        remoteDataSource: sl(),
        eventsDataSource: sl(),
        connectivity: sl(),
      ));
}

//Функция для связывания имплементаций репозиторий с типами объектов
Future<void> initLocalRepo<T extends DataSourceObject>() async {
  //Инициализируем локальный DataSource для заданного типа
  final localDataSource = HiveDataSource<T>();
  sl.registerLazySingleton<LocalDataSource<T>>(() => localDataSource);

  //Делаем инициализацию локального репозитория (нужно для hive)
  await localDataSource.init();
}
