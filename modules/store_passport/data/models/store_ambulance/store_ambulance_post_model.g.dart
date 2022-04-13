// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_ambulance_post_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreAmbulancePostModelAdapter
    extends TypeAdapter<StoreAmbulancePostModel> {
  @override
  final int typeId = 205;

  @override
  StoreAmbulancePostModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreAmbulancePostModel(
      shopAmbulanceAnswers:
          (fields[0] as List?)?.cast<StoreAmbulanceAnswerModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, StoreAmbulancePostModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.shopAmbulanceAnswers);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreAmbulancePostModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreAmbulancePostModel _$$_StoreAmbulancePostModelFromJson(
        Map<String, dynamic> json) =>
    _$_StoreAmbulancePostModel(
      shopAmbulanceAnswers: (json['shopAmbulanceAnswers'] as List<dynamic>?)
              ?.map((e) =>
                  StoreAmbulanceAnswerModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_StoreAmbulancePostModelToJson(
        _$_StoreAmbulancePostModel instance) =>
    <String, dynamic>{
      'shopAmbulanceAnswers': instance.shopAmbulanceAnswers,
    };
