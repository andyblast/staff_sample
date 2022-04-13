// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_selection_view_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreSelectionViewModelAdapter
    extends TypeAdapter<StoreSelectionViewModel> {
  @override
  final int typeId = 207;

  @override
  StoreSelectionViewModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreSelectionViewModel(
      siteId: fields[0] as int,
      positions: (fields[1] as List?)?.cast<StoreSelectionPositionModel>(),
      isShowTabNumberError: fields[2] as bool,
      saveError: fields[3] as String?,
      workerSchedules:
          (fields[4] as List?)?.cast<StoreSelectionWorkerSchedule>(),
      workerSchedulesMobile:
          (fields[5] as List?)?.cast<StoreSelectionWorkerSchedule>(),
    );
  }

  @override
  void write(BinaryWriter writer, StoreSelectionViewModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.siteId)
      ..writeByte(1)
      ..write(obj.positions)
      ..writeByte(2)
      ..write(obj.isShowTabNumberError)
      ..writeByte(3)
      ..write(obj.saveError)
      ..writeByte(4)
      ..write(obj.workerSchedules)
      ..writeByte(5)
      ..write(obj.workerSchedulesMobile);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreSelectionViewModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreSelectionViewModel _$$_StoreSelectionViewModelFromJson(
        Map<String, dynamic> json) =>
    _$_StoreSelectionViewModel(
      siteId: json['siteId'] as int,
      positions: (json['positions'] as List<dynamic>?)
          ?.map((e) =>
              StoreSelectionPositionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isShowTabNumberError: json['isShowTabNumberError'] as bool,
      saveError: json['saveError'] as String?,
      workerSchedules: (json['workerSchedules'] as List<dynamic>?)
          ?.map((e) =>
              StoreSelectionWorkerSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
      workerSchedulesMobile: (json['workerSchedulesMobile'] as List<dynamic>?)
          ?.map((e) =>
              StoreSelectionWorkerSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StoreSelectionViewModelToJson(
        _$_StoreSelectionViewModel instance) =>
    <String, dynamic>{
      'siteId': instance.siteId,
      'positions': instance.positions,
      'isShowTabNumberError': instance.isShowTabNumberError,
      'saveError': instance.saveError,
      'workerSchedules': instance.workerSchedules,
      'workerSchedulesMobile': instance.workerSchedulesMobile,
    };
