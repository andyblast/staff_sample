import 'package:dixy_staff/core/data/models/datasource_object.dart';
import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'store_selection_post_model.freezed.dart';
part 'store_selection_post_model.g.dart';

@HiveType(typeId: 200)
@freezed
class StoreSelectionPostModel
    with _$StoreSelectionPostModel
    implements DataSourceObject {
  const StoreSelectionPostModel._();

  @Implements(DataSourceObject)
  factory StoreSelectionPostModel({
    @HiveField(0) @JsonKey(name: 'positionId') required int positionId,
    @HiveField(1) @JsonKey(name: 'type') required String type,
    @HiveField(2) @JsonKey(name: 'comment') String? comment,
    @HiveField(3) @JsonKey(name: 'workerScheduleId') String? workerScheduleId,
    @HiveField(4) @JsonKey(name: 'separationDate') String? separationDate,
    @HiveField(5) @JsonKey(name: 'mobileWorkStart') String? mobileWorkStart,
    @HiveField(6) @JsonKey(name: 'mobileWorkEnd') String? mobileWorkEnd,
  }) = _StoreSelectionPostModel;

  factory StoreSelectionPostModel.fromJson(Map<String, dynamic> json) =>
      _$StoreSelectionPostModelFromJson(json);

  @override
  String? getIDValue() {
    return positionId.toString();
  }

  @override
  List<String> getValuesForSearch() {
    return [];
  }
}
