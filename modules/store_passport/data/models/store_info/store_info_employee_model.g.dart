// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_info_employee_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreInfoEmployeeModelAdapter
    extends TypeAdapter<StoreInfoEmployeeModel> {
  @override
  final int typeId = 211;

  @override
  StoreInfoEmployeeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreInfoEmployeeModel(
      employeeId: fields[0] as int,
      employeeFullName: fields[1] as String?,
      employeePhone: fields[2] as String?,
      employeeEmail: fields[3] as String?,
      positionGroupName: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, StoreInfoEmployeeModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.employeeId)
      ..writeByte(1)
      ..write(obj.employeeFullName)
      ..writeByte(2)
      ..write(obj.employeePhone)
      ..writeByte(3)
      ..write(obj.employeeEmail)
      ..writeByte(4)
      ..write(obj.positionGroupName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreInfoEmployeeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreInfoEmployeeModel _$$_StoreInfoEmployeeModelFromJson(
        Map<String, dynamic> json) =>
    _$_StoreInfoEmployeeModel(
      employeeId: json['employeeId'] as int,
      employeeFullName: json['employeeFullName'] as String? ?? '',
      employeePhone: json['employeePhone'] as String? ?? '',
      employeeEmail: json['employeeEmail'] as String? ?? '',
      positionGroupName: json['positionGroupName'] as String? ?? '',
    );

Map<String, dynamic> _$$_StoreInfoEmployeeModelToJson(
        _$_StoreInfoEmployeeModel instance) =>
    <String, dynamic>{
      'employeeId': instance.employeeId,
      'employeeFullName': instance.employeeFullName,
      'employeePhone': instance.employeePhone,
      'employeeEmail': instance.employeeEmail,
      'positionGroupName': instance.positionGroupName,
    };
