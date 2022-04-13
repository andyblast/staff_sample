import 'package:dixy_staff/core/data/models/datasource_object.dart';
import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'store_selection_worker_schedule_model.freezed.dart';
part 'store_selection_worker_schedule_model.g.dart';

@HiveType(typeId: 213)
@freezed
class StoreSelectionWorkerSchedule
    with _$StoreSelectionWorkerSchedule
    implements DataSourceObject {
  const StoreSelectionWorkerSchedule._();

  @Implements(DataSourceObject)
  factory StoreSelectionWorkerSchedule({
    @HiveField(0) @JsonKey(name: 'scheduleId') required String scheduleId,
    @HiveField(1) @JsonKey(name: 'name') String? name,
    @HiveField(2) @JsonKey(name: 'description') String? description,
  }) = _StoreSekectionWorkerSchedule;

  factory StoreSelectionWorkerSchedule.fromJson(Map<String, dynamic> json) =>
      _$StoreSelectionWorkerScheduleFromJson(json);

  @override
  String? getIDValue() {
    return scheduleId.toString();
  }

  @override
  List<String> getValuesForSearch() {
    return [];
  }
}
