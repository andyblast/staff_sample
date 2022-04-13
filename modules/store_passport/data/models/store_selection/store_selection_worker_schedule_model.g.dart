// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_selection_worker_schedule_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreSelectionWorkerScheduleAdapter
    extends TypeAdapter<StoreSelectionWorkerSchedule> {
  @override
  final int typeId = 213;

  @override
  StoreSelectionWorkerSchedule read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreSelectionWorkerSchedule(
      scheduleId: fields[0] as String,
      name: fields[1] as String?,
      description: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, StoreSelectionWorkerSchedule obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.scheduleId)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreSelectionWorkerScheduleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreSekectionWorkerSchedule _$$_StoreSekectionWorkerScheduleFromJson(
        Map<String, dynamic> json) =>
    _$_StoreSekectionWorkerSchedule(
      scheduleId: json['scheduleId'] as String,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_StoreSekectionWorkerScheduleToJson(
        _$_StoreSekectionWorkerSchedule instance) =>
    <String, dynamic>{
      'scheduleId': instance.scheduleId,
      'name': instance.name,
      'description': instance.description,
    };
