// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_ambulance_group_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreAmbulanceGroupModelAdapter
    extends TypeAdapter<StoreAmbulanceGroupModel> {
  @override
  final int typeId = 204;

  @override
  StoreAmbulanceGroupModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreAmbulanceGroupModel(
      questionGroupId: fields[0] as int,
      name: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, StoreAmbulanceGroupModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.questionGroupId)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreAmbulanceGroupModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreAmbulanceGroupModel _$$_StoreAmbulanceGroupModelFromJson(
        Map<String, dynamic> json) =>
    _$_StoreAmbulanceGroupModel(
      questionGroupId: json['questionGroupId'] as int,
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$_StoreAmbulanceGroupModelToJson(
        _$_StoreAmbulanceGroupModel instance) =>
    <String, dynamic>{
      'questionGroupId': instance.questionGroupId,
      'name': instance.name,
    };
