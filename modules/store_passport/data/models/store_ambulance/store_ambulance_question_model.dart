import 'package:dixy_staff/core/data/models/datasource_object.dart';
import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'store_ambulance_question_model.freezed.dart';
part 'store_ambulance_question_model.g.dart';

@HiveType(typeId: 206)
@freezed
class StoreAmbulanceQuestionModel
    with _$StoreAmbulanceQuestionModel
    implements DataSourceObject {
  const StoreAmbulanceQuestionModel._();

  @Implements(DataSourceObject)
  factory StoreAmbulanceQuestionModel({
    @HiveField(0) @JsonKey(name: 'questionId') required int questionId,
    @HiveField(1)
    @JsonKey(name: 'questionGroupId')
        required int questionGroupId,
    @HiveField(2) @JsonKey(name: 'name') required String name,
    @HiveField(3) @JsonKey(name: 'answer') required bool answer,
  }) = _StoreAmbulanceQuestionModel;

  factory StoreAmbulanceQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$StoreAmbulanceQuestionModelFromJson(json);

  @override
  String? getIDValue() {
    return questionId.toString();
  }

  @override
  List<String> getValuesForSearch() {
    return [];
  }
}
