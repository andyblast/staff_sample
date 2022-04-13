import 'package:dixy_staff/core/data/models/datasource_object.dart';
import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'store_selection_mobile_request_model.freezed.dart';
part 'store_selection_mobile_request_model.g.dart';

@HiveType(typeId: 208)
@freezed
class StoreSelectionMobileRequestModel
    with _$StoreSelectionMobileRequestModel
    implements DataSourceObject {
  const StoreSelectionMobileRequestModel._();

  @Implements(DataSourceObject)
  factory StoreSelectionMobileRequestModel({
    @HiveField(0) @JsonKey(name: 'requestId') required String requestId,
    @HiveField(1)
    @JsonKey(name: 'mobileWorkStartDate')
        String? mobileWorkStartDate,
    @HiveField(2) @JsonKey(name: 'mobileWorkEndDate') String? mobileWorkEndDate,
    @HiveField(3) @JsonKey(name: 'closeDt') String? closeDt,
    @HiveField(4)
    @JsonKey(name: 'isEnableClosing')
        required bool isEnableClosing,
    @HiveField(5) @JsonKey(name: 'foundPercent') required int foundPercent,
    @HiveField(6)
    @JsonKey(name: 'mobileWorkActiveCount')
        required int mobileWorkActiveCount,
    @HiveField(7)
    @JsonKey(name: 'workerSchedule')
        Map<String, String>? workerSchedule,
    @HiveField(8)
    @JsonKey(name: 'mobileWorkStartTime')
        String? mobileWorkStartTime,
    @HiveField(9) @JsonKey(name: 'mobileWorkEndTime') String? mobileWorkEndTime,
    @HiveField(10) @JsonKey(name: 'comment') String? comment,
    @HiveField(11)
    @JsonKey(name: 'createEmployeeName')
        String? createEmployeeName,
    @HiveField(12)
    @JsonKey(name: 'cancelEmployeeName')
        String? cancelEmployeeName,
    @HiveField(13) @JsonKey(name: 'createDt') String? createDt,
  }) = _StoreSelectionMobileRequestModel;

  factory StoreSelectionMobileRequestModel.fromJson(
          Map<String, dynamic> json) =>
      _$StoreSelectionMobileRequestModelFromJson(json);

  @override
  String? getIDValue() {
    return requestId.toString();
  }

  @override
  List<String> getValuesForSearch() {
    return [];
  }
}
