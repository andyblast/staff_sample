import 'package:dixy_staff/core/data/models/datasource_object.dart';
import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'store_selection_request_detail_model.freezed.dart';
part 'store_selection_request_detail_model.g.dart';

@HiveType(typeId: 201)
@freezed
class StoreSelectionRequestDetailModel
    with _$StoreSelectionRequestDetailModel
    implements DataSourceObject {
  const StoreSelectionRequestDetailModel._();

  @Implements(DataSourceObject)
  factory StoreSelectionRequestDetailModel({
    @HiveField(0) @JsonKey(name: 'id') required int id,
    @HiveField(1) @JsonKey(name: 'startDt') String? startDt,
    @HiveField(2) @JsonKey(name: 'finishDt') String? finishDt,
    @HiveField(3) @JsonKey(name: 'closeDt') String? closeDt,
    @HiveField(4)
    @JsonKey(name: 'executorEmployeeTabNumber')
        String? executorEmployeeTabNumber,
    @HiveField(5)
    @JsonKey(name: 'executorEmployeeName')
        String? executorEmployeeName,
    @HiveField(6)
    @JsonKey(name: 'cancelEmployeeName')
        String? cancelEmployeeName,
  }) = _StoreSelectionRequestDetailModel;

  factory StoreSelectionRequestDetailModel.fromJson(
          Map<String, dynamic> json) =>
      _$StoreSelectionRequestDetailModelFromJson(json);

  @override
  String? getIDValue() {
    return id.toString();
  }

  @override
  List<String> getValuesForSearch() {
    return [];
  }
}
