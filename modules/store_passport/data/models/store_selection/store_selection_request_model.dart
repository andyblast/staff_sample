import 'package:dixy_staff/core/data/models/datasource_object.dart';
import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'store_selection_request_model.freezed.dart';
part 'store_selection_request_model.g.dart';

@HiveType(typeId: 212)
@freezed
class StoreSelectionRequestModel
    with _$StoreSelectionRequestModel
    implements DataSourceObject {
  const StoreSelectionRequestModel._();

  @Implements(DataSourceObject)
  factory StoreSelectionRequestModel({
    @HiveField(0) @JsonKey(name: 'requestId') required String requestId,
    @HiveField(1) @JsonKey(name: 'createDt') String? createDt,
    @HiveField(2) @JsonKey(name: 'closeDt') String? closeDt,
    @HiveField(3)
    @JsonKey(name: 'isEnableClosing')
        required bool isEnableClosing,
    @HiveField(4) @JsonKey(name: 'type') String? type,
    @HiveField(5)
    @JsonKey(name: 'workerSchedule')
        Map<String, String>? workerSchedule,
    @HiveField(6) @JsonKey(name: 'separationDate') String? separationDate,
    @HiveField(7) @JsonKey(name: 'comment') String? comment,
    @HiveField(8)
    @JsonKey(name: 'createEmployeeName')
        String? createEmployeeName,
    @HiveField(9)
    @JsonKey(name: 'cancelEmployeeName')
        String? cancelEmployeeName,
  }) = _StoreSelectionRequestModel;

  factory StoreSelectionRequestModel.fromJson(Map<String, dynamic> json) =>
      _$StoreSelectionRequestModelFromJson(json);

  @override
  String? getIDValue() {
    return requestId.toString();
  }

  @override
  List<String> getValuesForSearch() {
    return [];
  }
}
