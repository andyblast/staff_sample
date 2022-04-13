import 'package:dixy_staff/core/data/models/datasource_object.dart';
import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'store_info_employee_model.dart';
part 'store_info_model.freezed.dart';
part 'store_info_model.g.dart';

@HiveType(typeId: 210)
@freezed
class StoreInfoModel with _$StoreInfoModel implements DataSourceObject {
  const StoreInfoModel._();

  @Implements(DataSourceObject)
  factory StoreInfoModel({
    @HiveField(0) @JsonKey(name: 'siteCode') required String siteCode,
    @HiveField(1) @JsonKey(name: 'siteName') @Default('') String? siteName,
    @HiveField(2) @JsonKey(name: 'address') @Default('') String? address,
    @HiveField(3) @JsonKey(name: 'postIndex') @Default('') String? postIndex,
    @HiveField(4) @JsonKey(name: 'sitePhone') @Default('') String? sitePhone,
    @HiveField(5) @JsonKey(name: 'openTime') @Default('') String? openTime,
    @HiveField(6) @JsonKey(name: 'closeTime') @Default('') String? closeTime,
    @HiveField(7)
    @JsonKey(name: 'numberOfTills')
    @Default(0)
        int? numberOfTills,
    @HiveField(8)
    @JsonKey(name: 'hasPalletes')
    @Default(false)
        bool? hasPalletes,
    @HiveField(9)
    @JsonKey(name: 'tillHasBelt')
    @Default(false)
        bool? tillHasBelt,
    @HiveField(10) @JsonKey(name: 'bristol') @Default(false) bool? bristol,
    @HiveField(11)
    @JsonKey(name: 'mobileMonitor')
    @Default(false)
        bool? mobileMonitor,
    @HiveField(12)
    @JsonKey(name: 'alcoholLicenseExpiration')
    @Default('')
        String? alcoholLicenseExpiration,
    @HiveField(13)
    @JsonKey(name: 'legalEntity')
    @Default({})
        Map<String, dynamic>? legalEntity,
    @HiveField(14)
    @JsonKey(name: 'siteRegion')
    @Default({})
        Map<String, dynamic>? siteRegion,
    @HiveField(15)
    @JsonKey(name: 'federationSubject')
    @Default({})
        Map<String, dynamic>? federationSubject,
    @HiveField(16)
    @JsonKey(name: 'siteTerritory')
    @Default({})
        Map<String, dynamic>? siteTerritory,
    @HiveField(17)
    @JsonKey(name: 'dateOpenPlan')
    @Default('')
        String? dateOpenPlan,
    @HiveField(18) @JsonKey(name: 'dateOpen') @Default('') String? dateOpen,
    @HiveField(19)
    @JsonKey(name: 'siteStatus')
    @Default({})
        Map<String, dynamic>? siteStatus,
    @HiveField(20)
    @JsonKey(name: 'reconstructionOpenDate')
    @Default('')
        String? reconstructionOpenDate,
    @HiveField(21)
    @JsonKey(name: 'reconstructionExpirationDate')
    @Default('')
        String? reconstructionExpirationDate,
    @HiveField(22)
    @JsonKey(name: 'reconstructionStatus')
    @Default({})
        Map<String, dynamic>? reconstructionStatus,
    @HiveField(23)
    @JsonKey(name: 'dateFullClose')
    @Default('')
        String? dateFullClose,
    @HiveField(24)
    @JsonKey(name: 'closingManager')
        StoreInfoEmployeeModel? closingManager,
    @HiveField(25) @JsonKey(name: 'comment') @Default('') String? comment,
    @HiveField(26)
    @JsonKey(name: 'ownProductions')
    @Default([])
        List<Map<String, dynamic>>? ownProductions,
    @HiveField(27)
    @JsonKey(name: 'ownProductionComment')
    @Default('')
        String? ownProductionComment,
    @HiveField(28)
    @JsonKey(name: 'shopTotalPlanArea')
    @Default('')
        String? shopTotalPlanArea,
    @HiveField(29)
    @JsonKey(name: 'shopTotalArea')
    @Default('')
        String? shopTotalArea,
    @HiveField(30)
    @JsonKey(name: 'shopFloorArea')
    @Default('')
        String? shopFloorArea,
    @HiveField(31)
    @JsonKey(name: 'shopStoreRoomArea')
    @Default('')
        String? shopStoreRoomArea,
    @HiveField(32)
    @JsonKey(name: 'shopAreaSubrented')
    @Default('')
        String? shopAreaSubrented,
    @HiveField(33)
    @JsonKey(name: 'buildingType')
    @Default({})
        Map<String, dynamic>? buildingType,
    @HiveField(34)
    @JsonKey(name: 'floorCounter')
    @Default({})
        Map<String, dynamic>? floorCounter,
    @HiveField(35)
    @JsonKey(name: 'tradeAreaStatus')
    @Default({})
        Map<String, dynamic>? tradeAreaStatus,
    @HiveField(36)
    @JsonKey(name: 'lawType')
    @Default({})
        Map<String, dynamic>? lawType,
    @HiveField(37) @JsonKey(name: 'latitude') @Default('') String? latitude,
    @HiveField(38) @JsonKey(name: 'longitude') @Default('') String? longitude,
    @HiveField(39)
    @JsonKey(name: 'attachedEmployees')
    @Default([])
        List<StoreInfoEmployeeModel>? attachedEmployees,
    @HiveField(40)
    @JsonKey(name: 'siteTypeName')
    @Default('')
        String? siteTypeName,
    @HiveField(41)
    @JsonKey(name: 'macroregion')
    @Default('')
        String? macroregion,
  }) = _StoreInfoModel;

  factory StoreInfoModel.fromJson(Map<String, dynamic> json) =>
      _$StoreInfoModelFromJson(json);

  @override
  String? getIDValue() {
    return siteCode.toString();
  }

  @override
  List<String> getValuesForSearch() {
    return [];
  }
}
