import 'package:dixy_staff/core/data/models/datasource_object.dart';
import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'store_ambulance_group_model.freezed.dart';
part 'store_ambulance_group_model.g.dart';

@HiveType(typeId: 204)
@freezed
class StoreAmbulanceGroupModel
    with _$StoreAmbulanceGroupModel
    implements DataSourceObject {
  const StoreAmbulanceGroupModel._();

  @Implements(DataSourceObject)
  factory StoreAmbulanceGroupModel({
    @HiveField(0)
    @JsonKey(name: 'questionGroupId')
        required int questionGroupId,
    @HiveField(1) @JsonKey(name: 'name') @Default('') String? name,
  }) = _StoreAmbulanceGroupModel;

  factory StoreAmbulanceGroupModel.fromJson(Map<String, dynamic> json) =>
      _$StoreAmbulanceGroupModelFromJson(json);

  @override
  String? getIDValue() {
    return questionGroupId.toString();
  }

  @override
  List<String> getValuesForSearch() {
    return [];
  }
}
