// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_ambulance_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreAmbulanceModelAdapter extends TypeAdapter<StoreAmbulanceModel> {
  @override
  final int typeId = 202;

  @override
  StoreAmbulanceModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreAmbulanceModel(
      isWriteAllowed: fields[0] as bool,
      isReadAllowed: fields[1] as bool,
      shopAmbulanceQuestions:
          (fields[2] as List).cast<StoreAmbulanceQuestionModel>(),
      shopAmbulanceQuestionGroups:
          (fields[3] as List).cast<StoreAmbulanceGroupModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, StoreAmbulanceModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.isWriteAllowed)
      ..writeByte(1)
      ..write(obj.isReadAllowed)
      ..writeByte(2)
      ..write(obj.shopAmbulanceQuestions)
      ..writeByte(3)
      ..write(obj.shopAmbulanceQuestionGroups);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreAmbulanceModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreAmbulanceModel _$$_StoreAmbulanceModelFromJson(
        Map<String, dynamic> json) =>
    _$_StoreAmbulanceModel(
      isWriteAllowed: json['isWriteAllowed'] as bool,
      isReadAllowed: json['isReadAllowed'] as bool,
      shopAmbulanceQuestions: (json['shopAmbulanceQuestions'] as List<dynamic>?)
              ?.map((e) => StoreAmbulanceQuestionModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
      shopAmbulanceQuestionGroups: (json['shopAmbulanceQuestionGroups']
                  as List<dynamic>?)
              ?.map((e) =>
                  StoreAmbulanceGroupModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_StoreAmbulanceModelToJson(
        _$_StoreAmbulanceModel instance) =>
    <String, dynamic>{
      'isWriteAllowed': instance.isWriteAllowed,
      'isReadAllowed': instance.isReadAllowed,
      'shopAmbulanceQuestions': instance.shopAmbulanceQuestions,
      'shopAmbulanceQuestionGroups': instance.shopAmbulanceQuestionGroups,
    };
