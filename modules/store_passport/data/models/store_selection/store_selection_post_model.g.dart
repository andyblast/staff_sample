// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_selection_post_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreSelectionPostModelAdapter
    extends TypeAdapter<StoreSelectionPostModel> {
  @override
  final int typeId = 200;

  @override
  StoreSelectionPostModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreSelectionPostModel(
      positionId: fields[0] as int,
      type: fields[1] as String,
      comment: fields[2] as String?,
      workerScheduleId: fields[3] as String?,
      separationDate: fields[4] as String?,
      mobileWorkStart: fields[5] as String?,
      mobileWorkEnd: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, StoreSelectionPostModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.positionId)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.comment)
      ..writeByte(3)
      ..write(obj.workerScheduleId)
      ..writeByte(4)
      ..write(obj.separationDate)
      ..writeByte(5)
      ..write(obj.mobileWorkStart)
      ..writeByte(6)
      ..write(obj.mobileWorkEnd);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreSelectionPostModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreSelectionPostModel _$$_StoreSelectionPostModelFromJson(
        Map<String, dynamic> json) =>
    _$_StoreSelectionPostModel(
      positionId: json['positionId'] as int,
      type: json['type'] as String,
      comment: json['comment'] as String?,
      workerScheduleId: json['workerScheduleId'] as String?,
      separationDate: json['separationDate'] as String?,
      mobileWorkStart: json['mobileWorkStart'] as String?,
      mobileWorkEnd: json['mobileWorkEnd'] as String?,
    );

Map<String, dynamic> _$$_StoreSelectionPostModelToJson(
        _$_StoreSelectionPostModel instance) =>
    <String, dynamic>{
      'positionId': instance.positionId,
      'type': instance.type,
      'comment': instance.comment,
      'workerScheduleId': instance.workerScheduleId,
      'separationDate': instance.separationDate,
      'mobileWorkStart': instance.mobileWorkStart,
      'mobileWorkEnd': instance.mobileWorkEnd,
    };
