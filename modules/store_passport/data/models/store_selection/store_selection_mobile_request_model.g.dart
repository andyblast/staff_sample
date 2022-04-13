// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_selection_mobile_request_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreSelectionMobileRequestModelAdapter
    extends TypeAdapter<StoreSelectionMobileRequestModel> {
  @override
  final int typeId = 208;

  @override
  StoreSelectionMobileRequestModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreSelectionMobileRequestModel(
      requestId: fields[0] as String,
      mobileWorkStartDate: fields[1] as String?,
      mobileWorkEndDate: fields[2] as String?,
      closeDt: fields[3] as String?,
      isEnableClosing: fields[4] as bool,
      foundPercent: fields[5] as int,
      mobileWorkActiveCount: fields[6] as int,
      workerSchedule: (fields[7] as Map?)?.cast<String, String>(),
      mobileWorkStartTime: fields[8] as String?,
      mobileWorkEndTime: fields[9] as String?,
      comment: fields[10] as String?,
      createEmployeeName: fields[11] as String?,
      cancelEmployeeName: fields[12] as String?,
      createDt: fields[13] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, StoreSelectionMobileRequestModel obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.requestId)
      ..writeByte(1)
      ..write(obj.mobileWorkStartDate)
      ..writeByte(2)
      ..write(obj.mobileWorkEndDate)
      ..writeByte(3)
      ..write(obj.closeDt)
      ..writeByte(4)
      ..write(obj.isEnableClosing)
      ..writeByte(5)
      ..write(obj.foundPercent)
      ..writeByte(6)
      ..write(obj.mobileWorkActiveCount)
      ..writeByte(7)
      ..write(obj.workerSchedule)
      ..writeByte(8)
      ..write(obj.mobileWorkStartTime)
      ..writeByte(9)
      ..write(obj.mobileWorkEndTime)
      ..writeByte(10)
      ..write(obj.comment)
      ..writeByte(11)
      ..write(obj.createEmployeeName)
      ..writeByte(12)
      ..write(obj.cancelEmployeeName)
      ..writeByte(13)
      ..write(obj.createDt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreSelectionMobileRequestModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreSelectionMobileRequestModel
    _$$_StoreSelectionMobileRequestModelFromJson(Map<String, dynamic> json) =>
        _$_StoreSelectionMobileRequestModel(
          requestId: json['requestId'] as String,
          mobileWorkStartDate: json['mobileWorkStartDate'] as String?,
          mobileWorkEndDate: json['mobileWorkEndDate'] as String?,
          closeDt: json['closeDt'] as String?,
          isEnableClosing: json['isEnableClosing'] as bool,
          foundPercent: json['foundPercent'] as int,
          mobileWorkActiveCount: json['mobileWorkActiveCount'] as int,
          workerSchedule:
              (json['workerSchedule'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
          mobileWorkStartTime: json['mobileWorkStartTime'] as String?,
          mobileWorkEndTime: json['mobileWorkEndTime'] as String?,
          comment: json['comment'] as String?,
          createEmployeeName: json['createEmployeeName'] as String?,
          cancelEmployeeName: json['cancelEmployeeName'] as String?,
          createDt: json['createDt'] as String?,
        );

Map<String, dynamic> _$$_StoreSelectionMobileRequestModelToJson(
        _$_StoreSelectionMobileRequestModel instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'mobileWorkStartDate': instance.mobileWorkStartDate,
      'mobileWorkEndDate': instance.mobileWorkEndDate,
      'closeDt': instance.closeDt,
      'isEnableClosing': instance.isEnableClosing,
      'foundPercent': instance.foundPercent,
      'mobileWorkActiveCount': instance.mobileWorkActiveCount,
      'workerSchedule': instance.workerSchedule,
      'mobileWorkStartTime': instance.mobileWorkStartTime,
      'mobileWorkEndTime': instance.mobileWorkEndTime,
      'comment': instance.comment,
      'createEmployeeName': instance.createEmployeeName,
      'cancelEmployeeName': instance.cancelEmployeeName,
      'createDt': instance.createDt,
    };
