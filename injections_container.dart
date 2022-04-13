import 'package:connectivity/connectivity.dart';
import 'package:dixy_staff/core/data/datasources/utils/hive_adapters.dart';
import 'package:dixy_staff/init_repos.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'modules/store_passport/domain/bloc/index.dart';

final sl = GetIt.instance;

Future<void> init() async {
  try {
    registerHiveAdapters();

    final sharedPreferences = await SharedPreferences.getInstance();
    sl.registerLazySingleton(() => sharedPreferences);
    sl.registerLazySingleton<Connectivity>(() => Connectivity());

    sl.registerLazySingleton<AuthRepo>(() => AuthRepo());

    sl.registerLazySingleton<StoreInfoBloc>(() => StoreInfoBloc(
          baseRepository: sl(),
        ));

    await initRepos();
  } catch (e, st) {
    print(e);
    print(st);

    throw Exception('Ошибка инициализации!');
  }
}
