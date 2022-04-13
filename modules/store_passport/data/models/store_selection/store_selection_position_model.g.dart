// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_selection_position_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreSelectionPositionModelAdapter
    extends TypeAdapter<StoreSelectionPositionModel> {
  @override
  final int typeId = 209;

  @override
  StoreSelectionPositionModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreSelectionPositionModel(
      positionId: fields[0] as int,
      sortOrder: fields[1] as int?,
      name: fields[2] as String?,
      shr: fields[3] as int?,
      shz: fields[4] as double?,
      mobileSelectionEnabled: fields[5] as bool,
      vacancySelectionEnabled: fields[6] as bool,
      replacementSelectionEnabled: fields[7] as bool,
      mobileRequests:
          (fields[8] as List?)?.cast<StoreSelectionMobileRequestModel>(),
      selectionRequests:
          (fields[9] as List?)?.cast<StoreSelectionRequestModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, StoreSelectionPositionModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.positionId)
      ..writeByte(1)
      ..write(obj.sortOrder)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.shr)
      ..writeByte(4)
      ..write(obj.shz)
      ..writeByte(5)
      ..write(obj.mobileSelectionEnabled)
      ..writeByte(6)
      ..write(obj.vacancySelectionEnabled)
      ..writeByte(7)
      ..write(obj.replacementSelectionEnabled)
      ..writeByte(8)
      ..write(obj.mobileRequests)
      ..writeByte(9)
      ..write(obj.selectionRequests);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreSelectionPositionModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreSelectionPositionModel _$$_StoreSelectionPositionModelFromJson(
        Map<String, dynamic> json) =>
    _$_StoreSelectionPositionModel(
      positionId: json['positionId'] as int,
      sortOrder: json['sortOrder'] as int?,
      name: json['name'] as String?,
      shr: json['shr'] as int?,
      shz: (json['shz'] as num?)?.toDouble(),
      mobileSelectionEnabled: json['mobileSelectionEnabled'] as bool,
      vacancySelectionEnabled: json['vacancySelectionEnabled'] as bool,
      replacementSelectionEnabled: json['replacementSelectionEnabled'] as bool,
      mobileRequests: (json['mobileRequests'] as List<dynamic>?)
          ?.map((e) => StoreSelectionMobileRequestModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      selectionRequests: (json['selectionRequests'] as List<dynamic>?)
          ?.map((e) =>
              StoreSelectionRequestModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StoreSelectionPositionModelToJson(
        _$_StoreSelectionPositionModel instance) =>
    <String, dynamic>{
      'positionId': instance.positionId,
      'sortOrder': instance.sortOrder,
      'name': instance.name,
      'shr': instance.shr,
      'shz': instance.shz,
      'mobileSelectionEnabled': instance.mobileSelectionEnabled,
      'vacancySelectionEnabled': instance.vacancySelectionEnabled,
      'replacementSelectionEnabled': instance.replacementSelectionEnabled,
      'mobileRequests': instance.mobileRequests,
      'selectionRequests': instance.selectionRequests,
    };
