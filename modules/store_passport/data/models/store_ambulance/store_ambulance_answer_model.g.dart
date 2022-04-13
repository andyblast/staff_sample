// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_ambulance_answer_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreAmbulanceAnswerModelAdapter
    extends TypeAdapter<StoreAmbulanceAnswerModel> {
  @override
  final int typeId = 203;

  @override
  StoreAmbulanceAnswerModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreAmbulanceAnswerModel(
      questionId: fields[0] as int,
      answer: fields[1] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, StoreAmbulanceAnswerModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.questionId)
      ..writeByte(1)
      ..write(obj.answer);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreAmbulanceAnswerModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreAmbulanceAnswerModel _$$_StoreAmbulanceAnswerModelFromJson(
        Map<String, dynamic> json) =>
    _$_StoreAmbulanceAnswerModel(
      questionId: json['questionId'] as int,
      answer: json['answer'] as bool,
    );

Map<String, dynamic> _$$_StoreAmbulanceAnswerModelToJson(
        _$_StoreAmbulanceAnswerModel instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'answer': instance.answer,
    };
