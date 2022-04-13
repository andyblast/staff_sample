import 'package:dixy_staff/core/data/models/datasource_object.dart';
import 'package:dixy_staff/modules/store_passport/data/models/store_ambulance/store_ambulance_answer_model.dart';
import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'store_ambulance_post_model.freezed.dart';
part 'store_ambulance_post_model.g.dart';

@HiveType(typeId: 205)
@freezed
class StoreAmbulancePostModel
    with _$StoreAmbulancePostModel
    implements DataSourceObject {
  const StoreAmbulancePostModel._();

  @Implements(DataSourceObject)
  factory StoreAmbulancePostModel({
    @HiveField(0)
    @JsonKey(name: 'shopAmbulanceAnswers')
    @Default([])
        List<StoreAmbulanceAnswerModel>? shopAmbulanceAnswers,
  }) = _StoreAmbulancePostModel;

  factory StoreAmbulancePostModel.fromJson(Map<String, dynamic> json) =>
      _$StoreAmbulancePostModelFromJson(json);

  @override
  String? getIDValue() {
    return '';
  }

  @override
  List<String> getValuesForSearch() {
    return [];
  }
}
