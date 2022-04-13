// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_info_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreInfoModelAdapter extends TypeAdapter<StoreInfoModel> {
  @override
  final int typeId = 210;

  @override
  StoreInfoModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreInfoModel(
      siteCode: fields[0] as String,
      siteName: fields[1] as String?,
      address: fields[2] as String?,
      postIndex: fields[3] as String?,
      sitePhone: fields[4] as String?,
      openTime: fields[5] as String?,
      closeTime: fields[6] as String?,
      numberOfTills: fields[7] as int?,
      hasPalletes: fields[8] as bool?,
      tillHasBelt: fields[9] as bool?,
      bristol: fields[10] as bool?,
      mobileMonitor: fields[11] as bool?,
      alcoholLicenseExpiration: fields[12] as String?,
      legalEntity: (fields[13] as Map?)?.cast<String, dynamic>(),
      siteRegion: (fields[14] as Map?)?.cast<String, dynamic>(),
      federationSubject: (fields[15] as Map?)?.cast<String, dynamic>(),
      siteTerritory: (fields[16] as Map?)?.cast<String, dynamic>(),
      dateOpenPlan: fields[17] as String?,
      dateOpen: fields[18] as String?,
      siteStatus: (fields[19] as Map?)?.cast<String, dynamic>(),
      reconstructionOpenDate: fields[20] as String?,
      reconstructionExpirationDate: fields[21] as String?,
      reconstructionStatus: (fields[22] as Map?)?.cast<String, dynamic>(),
      dateFullClose: fields[23] as String?,
      closingManager: fields[24] as StoreInfoEmployeeModel?,
      comment: fields[25] as String?,
      ownProductions: (fields[26] as List?)
          ?.map((dynamic e) => (e as Map).cast<String, dynamic>())
          .toList(),
      ownProductionComment: fields[27] as String?,
      shopTotalPlanArea: fields[28] as String?,
      shopTotalArea: fields[29] as String?,
      shopFloorArea: fields[30] as String?,
      shopStoreRoomArea: fields[31] as String?,
      shopAreaSubrented: fields[32] as String?,
      buildingType: (fields[33] as Map?)?.cast<String, dynamic>(),
      floorCounter: (fields[34] as Map?)?.cast<String, dynamic>(),
      tradeAreaStatus: (fields[35] as Map?)?.cast<String, dynamic>(),
      lawType: (fields[36] as Map?)?.cast<String, dynamic>(),
      latitude: fields[37] as String?,
      longitude: fields[38] as String?,
      attachedEmployees: (fields[39] as List?)?.cast<StoreInfoEmployeeModel>(),
      siteTypeName: fields[40] as String?,
      macroregion: fields[41] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, StoreInfoModel obj) {
    writer
      ..writeByte(42)
      ..writeByte(0)
      ..write(obj.siteCode)
      ..writeByte(1)
      ..write(obj.siteName)
      ..writeByte(2)
      ..write(obj.address)
      ..writeByte(3)
      ..write(obj.postIndex)
      ..writeByte(4)
      ..write(obj.sitePhone)
      ..writeByte(5)
      ..write(obj.openTime)
      ..writeByte(6)
      ..write(obj.closeTime)
      ..writeByte(7)
      ..write(obj.numberOfTills)
      ..writeByte(8)
      ..write(obj.hasPalletes)
      ..writeByte(9)
      ..write(obj.tillHasBelt)
      ..writeByte(10)
      ..write(obj.bristol)
      ..writeByte(11)
      ..write(obj.mobileMonitor)
      ..writeByte(12)
      ..write(obj.alcoholLicenseExpiration)
      ..writeByte(13)
      ..write(obj.legalEntity)
      ..writeByte(14)
      ..write(obj.siteRegion)
      ..writeByte(15)
      ..write(obj.federationSubject)
      ..writeByte(16)
      ..write(obj.siteTerritory)
      ..writeByte(17)
      ..write(obj.dateOpenPlan)
      ..writeByte(18)
      ..write(obj.dateOpen)
      ..writeByte(19)
      ..write(obj.siteStatus)
      ..writeByte(20)
      ..write(obj.reconstructionOpenDate)
      ..writeByte(21)
      ..write(obj.reconstructionExpirationDate)
      ..writeByte(22)
      ..write(obj.reconstructionStatus)
      ..writeByte(23)
      ..write(obj.dateFullClose)
      ..writeByte(24)
      ..write(obj.closingManager)
      ..writeByte(25)
      ..write(obj.comment)
      ..writeByte(26)
      ..write(obj.ownProductions)
      ..writeByte(27)
      ..write(obj.ownProductionComment)
      ..writeByte(28)
      ..write(obj.shopTotalPlanArea)
      ..writeByte(29)
      ..write(obj.shopTotalArea)
      ..writeByte(30)
      ..write(obj.shopFloorArea)
      ..writeByte(31)
      ..write(obj.shopStoreRoomArea)
      ..writeByte(32)
      ..write(obj.shopAreaSubrented)
      ..writeByte(33)
      ..write(obj.buildingType)
      ..writeByte(34)
      ..write(obj.floorCounter)
      ..writeByte(35)
      ..write(obj.tradeAreaStatus)
      ..writeByte(36)
      ..write(obj.lawType)
      ..writeByte(37)
      ..write(obj.latitude)
      ..writeByte(38)
      ..write(obj.longitude)
      ..writeByte(39)
      ..write(obj.attachedEmployees)
      ..writeByte(40)
      ..write(obj.siteTypeName)
      ..writeByte(41)
      ..write(obj.macroregion);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreInfoModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreInfoModel _$$_StoreInfoModelFromJson(Map<String, dynamic> json) =>
    _$_StoreInfoModel(
      siteCode: json['siteCode'] as String,
      siteName: json['siteName'] as String? ?? '',
      address: json['address'] as String? ?? '',
      postIndex: json['postIndex'] as String? ?? '',
      sitePhone: json['sitePhone'] as String? ?? '',
      openTime: json['openTime'] as String? ?? '',
      closeTime: json['closeTime'] as String? ?? '',
      numberOfTills: json['numberOfTills'] as int? ?? 0,
      hasPalletes: json['hasPalletes'] as bool? ?? false,
      tillHasBelt: json['tillHasBelt'] as bool? ?? false,
      bristol: json['bristol'] as bool? ?? false,
      mobileMonitor: json['mobileMonitor'] as bool? ?? false,
      alcoholLicenseExpiration:
          json['alcoholLicenseExpiration'] as String? ?? '',
      legalEntity: json['legalEntity'] as Map<String, dynamic>? ?? const {},
      siteRegion: json['siteRegion'] as Map<String, dynamic>? ?? const {},
      federationSubject:
          json['federationSubject'] as Map<String, dynamic>? ?? const {},
      siteTerritory: json['siteTerritory'] as Map<String, dynamic>? ?? const {},
      dateOpenPlan: json['dateOpenPlan'] as String? ?? '',
      dateOpen: json['dateOpen'] as String? ?? '',
      siteStatus: json['siteStatus'] as Map<String, dynamic>? ?? const {},
      reconstructionOpenDate: json['reconstructionOpenDate'] as String? ?? '',
      reconstructionExpirationDate:
          json['reconstructionExpirationDate'] as String? ?? '',
      reconstructionStatus:
          json['reconstructionStatus'] as Map<String, dynamic>? ?? const {},
      dateFullClose: json['dateFullClose'] as String? ?? '',
      closingManager: json['closingManager'] == null
          ? null
          : StoreInfoEmployeeModel.fromJson(
              json['closingManager'] as Map<String, dynamic>),
      comment: json['comment'] as String? ?? '',
      ownProductions: (json['ownProductions'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
      ownProductionComment: json['ownProductionComment'] as String? ?? '',
      shopTotalPlanArea: json['shopTotalPlanArea'] as String? ?? '',
      shopTotalArea: json['shopTotalArea'] as String? ?? '',
      shopFloorArea: json['shopFloorArea'] as String? ?? '',
      shopStoreRoomArea: json['shopStoreRoomArea'] as String? ?? '',
      shopAreaSubrented: json['shopAreaSubrented'] as String? ?? '',
      buildingType: json['buildingType'] as Map<String, dynamic>? ?? const {},
      floorCounter: json['floorCounter'] as Map<String, dynamic>? ?? const {},
      tradeAreaStatus:
          json['tradeAreaStatus'] as Map<String, dynamic>? ?? const {},
      lawType: json['lawType'] as Map<String, dynamic>? ?? const {},
      latitude: json['latitude'] as String? ?? '',
      longitude: json['longitude'] as String? ?? '',
      attachedEmployees: (json['attachedEmployees'] as List<dynamic>?)
              ?.map((e) =>
                  StoreInfoEmployeeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      siteTypeName: json['siteTypeName'] as String? ?? '',
      macroregion: json['macroregion'] as String? ?? '',
    );

Map<String, dynamic> _$$_StoreInfoModelToJson(_$_StoreInfoModel instance) =>
    <String, dynamic>{
      'siteCode': instance.siteCode,
      'siteName': instance.siteName,
      'address': instance.address,
      'postIndex': instance.postIndex,
      'sitePhone': instance.sitePhone,
      'openTime': instance.openTime,
      'closeTime': instance.closeTime,
      'numberOfTills': instance.numberOfTills,
      'hasPalletes': instance.hasPalletes,
      'tillHasBelt': instance.tillHasBelt,
      'bristol': instance.bristol,
      'mobileMonitor': instance.mobileMonitor,
      'alcoholLicenseExpiration': instance.alcoholLicenseExpiration,
      'legalEntity': instance.legalEntity,
      'siteRegion': instance.siteRegion,
      'federationSubject': instance.federationSubject,
      'siteTerritory': instance.siteTerritory,
      'dateOpenPlan': instance.dateOpenPlan,
      'dateOpen': instance.dateOpen,
      'siteStatus': instance.siteStatus,
      'reconstructionOpenDate': instance.reconstructionOpenDate,
      'reconstructionExpirationDate': instance.reconstructionExpirationDate,
      'reconstructionStatus': instance.reconstructionStatus,
      'dateFullClose': instance.dateFullClose,
      'closingManager': instance.closingManager,
      'comment': instance.comment,
      'ownProductions': instance.ownProductions,
      'ownProductionComment': instance.ownProductionComment,
      'shopTotalPlanArea': instance.shopTotalPlanArea,
      'shopTotalArea': instance.shopTotalArea,
      'shopFloorArea': instance.shopFloorArea,
      'shopStoreRoomArea': instance.shopStoreRoomArea,
      'shopAreaSubrented': instance.shopAreaSubrented,
      'buildingType': instance.buildingType,
      'floorCounter': instance.floorCounter,
      'tradeAreaStatus': instance.tradeAreaStatus,
      'lawType': instance.lawType,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'attachedEmployees': instance.attachedEmployees,
      'siteTypeName': instance.siteTypeName,
      'macroregion': instance.macroregion,
    };
