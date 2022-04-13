// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_selection_request_detail_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreSelectionRequestDetailModelAdapter
    extends TypeAdapter<StoreSelectionRequestDetailModel> {
  @override
  final int typeId = 201;

  @override
  StoreSelectionRequestDetailModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreSelectionRequestDetailModel(
      id: fields[0] as int,
      startDt: fields[1] as String?,
      finishDt: fields[2] as String?,
      closeDt: fields[3] as String?,
      executorEmployeeTabNumber: fields[4] as String?,
      executorEmployeeName: fields[5] as String?,
      cancelEmployeeName: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, StoreSelectionRequestDetailModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.startDt)
      ..writeByte(2)
      ..write(obj.finishDt)
      ..writeByte(3)
      ..write(obj.closeDt)
      ..writeByte(4)
      ..write(obj.executorEmployeeTabNumber)
      ..writeByte(5)
      ..write(obj.executorEmployeeName)
      ..writeByte(6)
      ..write(obj.cancelEmployeeName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreSelectionRequestDetailModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreSelectionRequestDetailModel
    _$$_StoreSelectionRequestDetailModelFromJson(Map<String, dynamic> json) =>
        _$_StoreSelectionRequestDetailModel(
          id: json['id'] as int,
          startDt: json['startDt'] as String?,
          finishDt: json['finishDt'] as String?,
          closeDt: json['closeDt'] as String?,
          executorEmployeeTabNumber:
              json['executorEmployeeTabNumber'] as String?,
          executorEmployeeName: json['executorEmployeeName'] as String?,
          cancelEmployeeName: json['cancelEmployeeName'] as String?,
        );

Map<String, dynamic> _$$_StoreSelectionRequestDetailModelToJson(
        _$_StoreSelectionRequestDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDt': instance.startDt,
      'finishDt': instance.finishDt,
      'closeDt': instance.closeDt,
      'executorEmployeeTabNumber': instance.executorEmployeeTabNumber,
      'executorEmployeeName': instance.executorEmployeeName,
      'cancelEmployeeName': instance.cancelEmployeeName,
    };
