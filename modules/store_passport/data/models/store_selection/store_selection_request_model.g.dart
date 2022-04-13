// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_selection_request_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreSelectionRequestModelAdapter
    extends TypeAdapter<StoreSelectionRequestModel> {
  @override
  final int typeId = 212;

  @override
  StoreSelectionRequestModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreSelectionRequestModel(
      requestId: fields[0] as String,
      createDt: fields[1] as String?,
      closeDt: fields[2] as String?,
      isEnableClosing: fields[3] as bool,
      type: fields[4] as String?,
      workerSchedule: (fields[5] as Map?)?.cast<String, String>(),
      separationDate: fields[6] as String?,
      comment: fields[7] as String?,
      createEmployeeName: fields[8] as String?,
      cancelEmployeeName: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, StoreSelectionRequestModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.requestId)
      ..writeByte(1)
      ..write(obj.createDt)
      ..writeByte(2)
      ..write(obj.closeDt)
      ..writeByte(3)
      ..write(obj.isEnableClosing)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.workerSchedule)
      ..writeByte(6)
      ..write(obj.separationDate)
      ..writeByte(7)
      ..write(obj.comment)
      ..writeByte(8)
      ..write(obj.createEmployeeName)
      ..writeByte(9)
      ..write(obj.cancelEmployeeName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreSelectionRequestModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreSelectionRequestModel _$$_StoreSelectionRequestModelFromJson(
        Map<String, dynamic> json) =>
    _$_StoreSelectionRequestModel(
      requestId: json['requestId'] as String,
      createDt: json['createDt'] as String?,
      closeDt: json['closeDt'] as String?,
      isEnableClosing: json['isEnableClosing'] as bool,
      type: json['type'] as String?,
      workerSchedule: (json['workerSchedule'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      separationDate: json['separationDate'] as String?,
      comment: json['comment'] as String?,
      createEmployeeName: json['createEmployeeName'] as String?,
      cancelEmployeeName: json['cancelEmployeeName'] as String?,
    );

Map<String, dynamic> _$$_StoreSelectionRequestModelToJson(
        _$_StoreSelectionRequestModel instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'createDt': instance.createDt,
      'closeDt': instance.closeDt,
      'isEnableClosing': instance.isEnableClosing,
      'type': instance.type,
      'workerSchedule': instance.workerSchedule,
      'separationDate': instance.separationDate,
      'comment': instance.comment,
      'createEmployeeName': instance.createEmployeeName,
      'cancelEmployeeName': instance.cancelEmployeeName,
    };
