import 'package:dixy_staff/core/data/models/datasource_object.dart';
import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'store_selection_mobile_request_model.dart';
import 'store_selection_request_model.dart';
part 'store_selection_position_model.freezed.dart';
part 'store_selection_position_model.g.dart';

@HiveType(typeId: 209)
@freezed
class StoreSelectionPositionModel
    with _$StoreSelectionPositionModel
    implements DataSourceObject {
  const StoreSelectionPositionModel._();

  @Implements(DataSourceObject)
  factory StoreSelectionPositionModel({
    @HiveField(0) @JsonKey(name: 'positionId') required int positionId,
    @HiveField(1) @JsonKey(name: 'sortOrder') int? sortOrder,
    @HiveField(2) @JsonKey(name: 'name') String? name,
    @HiveField(3) @JsonKey(name: 'shr') int? shr,
    @HiveField(4) @JsonKey(name: 'shz') double? shz,
    @HiveField(5)
    @JsonKey(name: 'mobileSelectionEnabled')
        required bool mobileSelectionEnabled,
    @HiveField(6)
    @JsonKey(name: 'vacancySelectionEnabled')
        required bool vacancySelectionEnabled,
    @HiveField(7)
    @JsonKey(name: 'replacementSelectionEnabled')
        required bool replacementSelectionEnabled,
    @HiveField(8)
    @JsonKey(name: 'mobileRequests')
        List<StoreSelectionMobileRequestModel>? mobileRequests,
    @HiveField(9)
    @JsonKey(name: 'selectionRequests')
        List<StoreSelectionRequestModel>? selectionRequests,
  }) = _StoreSelectionPositionModel;

  factory StoreSelectionPositionModel.fromJson(Map<String, dynamic> json) =>
      _$StoreSelectionPositionModelFromJson(json);

  @override
  String? getIDValue() {
    return positionId.toString();
  }

  @override
  List<String> getValuesForSearch() {
    return [];
  }
}
