import 'package:dixy_staff/core/data/models/datasource_object.dart';
import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'store_ambulance_group_model.dart';
import 'store_ambulance_question_model.dart';

part 'store_ambulance_model.freezed.dart';
part 'store_ambulance_model.g.dart';

@HiveType(typeId: 202)
@freezed
class StoreAmbulanceModel
    with _$StoreAmbulanceModel
    implements DataSourceObject {
  const StoreAmbulanceModel._();

  @Implements(DataSourceObject)
  factory StoreAmbulanceModel({
    @HiveField(0) @JsonKey(name: 'isWriteAllowed') required bool isWriteAllowed,
    @HiveField(1) @JsonKey(name: 'isReadAllowed') required bool isReadAllowed,
    @HiveField(2)
    @JsonKey(name: 'shopAmbulanceQuestions')
    @Default([])
        List<StoreAmbulanceQuestionModel> shopAmbulanceQuestions,
    @HiveField(3)
    @JsonKey(name: 'shopAmbulanceQuestionGroups')
    @Default([])
        List<StoreAmbulanceGroupModel> shopAmbulanceQuestionGroups,
  }) = _StoreAmbulanceModel;

  factory StoreAmbulanceModel.fromJson(Map<String, dynamic> json) =>
      _$StoreAmbulanceModelFromJson(json);

  @override
  String? getIDValue() {
    return '';
  }

  @override
  List<String> getValuesForSearch() {
    return [];
  }
}
