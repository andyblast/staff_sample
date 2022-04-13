// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_ambulance_question_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreAmbulanceQuestionModelAdapter
    extends TypeAdapter<StoreAmbulanceQuestionModel> {
  @override
  final int typeId = 206;

  @override
  StoreAmbulanceQuestionModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreAmbulanceQuestionModel(
      questionId: fields[0] as int,
      questionGroupId: fields[1] as int,
      name: fields[2] as String,
      answer: fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, StoreAmbulanceQuestionModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.questionId)
      ..writeByte(1)
      ..write(obj.questionGroupId)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.answer);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreAmbulanceQuestionModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreAmbulanceQuestionModel _$$_StoreAmbulanceQuestionModelFromJson(
        Map<String, dynamic> json) =>
    _$_StoreAmbulanceQuestionModel(
      questionId: json['questionId'] as int,
      questionGroupId: json['questionGroupId'] as int,
      name: json['name'] as String,
      answer: json['answer'] as bool,
    );

Map<String, dynamic> _$$_StoreAmbulanceQuestionModelToJson(
        _$_StoreAmbulanceQuestionModel instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'questionGroupId': instance.questionGroupId,
      'name': instance.name,
      'answer': instance.answer,
    };
