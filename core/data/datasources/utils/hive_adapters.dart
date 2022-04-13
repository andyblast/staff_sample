import 'package:dixy_staff/modules/store_passport/data/models/index.dart';
import 'package:hive/hive.dart';

void registerHiveAdapters() {
  Hive.registerAdapter(StoreInfoModelAdapter());
  Hive.registerAdapter(StoreInfoEmployeeModelAdapter());
  Hive.registerAdapter(StoreAmbulanceModelAdapter());
  Hive.registerAdapter(StoreAmbulanceQuestionModelAdapter());
  Hive.registerAdapter(StoreAmbulancePostModelAdapter());
  Hive.registerAdapter(StoreAmbulanceAnswerModelAdapter());
  Hive.registerAdapter(StoreAmbulanceGroupModelAdapter());
  Hive.registerAdapter(StoreSelectionRequestModelAdapter());
  Hive.registerAdapter(StoreSelectionViewModelAdapter());
  Hive.registerAdapter(StoreSelectionPositionModelAdapter());
  Hive.registerAdapter(StoreSelectionMobileRequestModelAdapter());
  Hive.registerAdapter(StoreSelectionWorkerScheduleAdapter());
  Hive.registerAdapter(StoreSelectionPostModelAdapter());
  Hive.registerAdapter(StoreSelectionRequestDetailModelAdapter());
}
