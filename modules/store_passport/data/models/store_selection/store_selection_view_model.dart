import 'package:dixy_staff/core/data/models/datasource_object.dart';
import 'package:dixy_staff/modules/store_passport/data/models/store_selection/store_selection_worker_schedule_model.dart';
import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'store_selection_position_model.dart';

part 'store_selection_view_model.freezed.dart';
part 'store_selection_view_model.g.dart';

@HiveType(typeId: 207)
@freezed
class StoreSelectionViewModel
    with _$StoreSelectionViewModel
    implements DataSourceObject {
  const StoreSelectionViewModel._();

  @Implements(DataSourceObject)
  factory StoreSelectionViewModel({
    @HiveField(0) @JsonKey(name: 'siteId') required int siteId,
    @HiveField(1)
    @JsonKey(name: 'positions')
        List<StoreSelectionPositionModel>? positions,
    @HiveField(2)
    @JsonKey(name: 'isShowTabNumberError')
        required bool isShowTabNumberError,
    @HiveField(3) @JsonKey(name: 'saveError') String? saveError,
    @HiveField(4)
    @JsonKey(name: 'workerSchedules')
        List<StoreSelectionWorkerSchedule>? workerSchedules,
    @HiveField(5)
    @JsonKey(name: 'workerSchedulesMobile')
        List<StoreSelectionWorkerSchedule>? workerSchedulesMobile,
  }) = _StoreSelectionViewModel;

  factory StoreSelectionViewModel.fromJson(Map<String, dynamic> json) =>
      _$StoreSelectionViewModelFromJson(json);

  @override
  String? getIDValue() {
    return siteId.toString();
  }

  @override
  List<String> getValuesForSearch() {
    return [];
  }
}
