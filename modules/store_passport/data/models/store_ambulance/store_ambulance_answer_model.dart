import 'package:dixy_staff/core/data/models/datasource_object.dart';
import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'store_ambulance_answer_model.freezed.dart';
part 'store_ambulance_answer_model.g.dart';

@HiveType(typeId: 203)
@freezed
class StoreAmbulanceAnswerModel
    with _$StoreAmbulanceAnswerModel
    implements DataSourceObject {
  const StoreAmbulanceAnswerModel._();

  @Implements(DataSourceObject)
  factory StoreAmbulanceAnswerModel({
    @HiveField(0) @JsonKey(name: 'questionId') required int questionId,
    @HiveField(1) @JsonKey(name: 'answer') required bool answer,
  }) = _StoreAmbulanceAnswerModel;

  factory StoreAmbulanceAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$StoreAmbulanceAnswerModelFromJson(json);

  @override
  String? getIDValue() {
    return questionId.toString();
  }

  @override
  List<String> getValuesForSearch() {
    return [];
  }
}
