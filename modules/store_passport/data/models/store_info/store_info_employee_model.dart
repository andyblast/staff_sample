import 'package:dixy_staff/core/data/models/datasource_object.dart';
import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'store_info_employee_model.freezed.dart';
part 'store_info_employee_model.g.dart';

@HiveType(typeId: 211)
@freezed
class StoreInfoEmployeeModel
    with _$StoreInfoEmployeeModel
    implements DataSourceObject {
  const StoreInfoEmployeeModel._();

  @Implements(DataSourceObject)
  factory StoreInfoEmployeeModel({
    @HiveField(0) @JsonKey(name: 'employeeId') required int employeeId,
    @HiveField(1)
    @JsonKey(name: 'employeeFullName')
    @Default('')
        String? employeeFullName,
    @HiveField(2)
    @JsonKey(name: 'employeePhone')
    @Default('')
        String? employeePhone,
    @HiveField(3)
    @JsonKey(name: 'employeeEmail')
    @Default('')
        String? employeeEmail,
    @HiveField(4)
    @JsonKey(name: 'positionGroupName')
    @Default('')
        String? positionGroupName,
  }) = _StoreInfoEmployeeModel;

  factory StoreInfoEmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$StoreInfoEmployeeModelFromJson(json);

  @override
  String? getIDValue() {
    return employeeId.toString();
  }

  @override
  List<String> getValuesForSearch() {
    return [];
  }
}
