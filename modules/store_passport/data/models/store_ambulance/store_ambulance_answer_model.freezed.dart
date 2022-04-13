// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_ambulance_answer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreAmbulanceAnswerModel _$StoreAmbulanceAnswerModelFromJson(
    Map<String, dynamic> json) {
  return _StoreAmbulanceAnswerModel.fromJson(json);
}

/// @nodoc
class _$StoreAmbulanceAnswerModelTearOff {
  const _$StoreAmbulanceAnswerModelTearOff();

  _StoreAmbulanceAnswerModel call(
      {@HiveField(0) @JsonKey(name: 'questionId') required int questionId,
      @HiveField(1) @JsonKey(name: 'answer') required bool answer}) {
    return _StoreAmbulanceAnswerModel(
      questionId: questionId,
      answer: answer,
    );
  }

  StoreAmbulanceAnswerModel fromJson(Map<String, Object> json) {
    return StoreAmbulanceAnswerModel.fromJson(json);
  }
}

/// @nodoc
const $StoreAmbulanceAnswerModel = _$StoreAmbulanceAnswerModelTearOff();

/// @nodoc
mixin _$StoreAmbulanceAnswerModel {
  @HiveField(0)
  @JsonKey(name: 'questionId')
  int get questionId => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'answer')
  bool get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreAmbulanceAnswerModelCopyWith<StoreAmbulanceAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreAmbulanceAnswerModelCopyWith<$Res> {
  factory $StoreAmbulanceAnswerModelCopyWith(StoreAmbulanceAnswerModel value,
          $Res Function(StoreAmbulanceAnswerModel) then) =
      _$StoreAmbulanceAnswerModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) @JsonKey(name: 'questionId') int questionId,
      @HiveField(1) @JsonKey(name: 'answer') bool answer});
}

/// @nodoc
class _$StoreAmbulanceAnswerModelCopyWithImpl<$Res>
    implements $StoreAmbulanceAnswerModelCopyWith<$Res> {
  _$StoreAmbulanceAnswerModelCopyWithImpl(this._value, this._then);

  final StoreAmbulanceAnswerModel _value;
  // ignore: unused_field
  final $Res Function(StoreAmbulanceAnswerModel) _then;

  @override
  $Res call({
    Object? questionId = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      questionId: questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$StoreAmbulanceAnswerModelCopyWith<$Res>
    implements $StoreAmbulanceAnswerModelCopyWith<$Res> {
  factory _$StoreAmbulanceAnswerModelCopyWith(_StoreAmbulanceAnswerModel value,
          $Res Function(_StoreAmbulanceAnswerModel) then) =
      __$StoreAmbulanceAnswerModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) @JsonKey(name: 'questionId') int questionId,
      @HiveField(1) @JsonKey(name: 'answer') bool answer});
}

/// @nodoc
class __$StoreAmbulanceAnswerModelCopyWithImpl<$Res>
    extends _$StoreAmbulanceAnswerModelCopyWithImpl<$Res>
    implements _$StoreAmbulanceAnswerModelCopyWith<$Res> {
  __$StoreAmbulanceAnswerModelCopyWithImpl(_StoreAmbulanceAnswerModel _value,
      $Res Function(_StoreAmbulanceAnswerModel) _then)
      : super(_value, (v) => _then(v as _StoreAmbulanceAnswerModel));

  @override
  _StoreAmbulanceAnswerModel get _value =>
      super._value as _StoreAmbulanceAnswerModel;

  @override
  $Res call({
    Object? questionId = freezed,
    Object? answer = freezed,
  }) {
    return _then(_StoreAmbulanceAnswerModel(
      questionId: questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(DataSourceObject)
class _$_StoreAmbulanceAnswerModel extends _StoreAmbulanceAnswerModel {
  _$_StoreAmbulanceAnswerModel(
      {@HiveField(0) @JsonKey(name: 'questionId') required this.questionId,
      @HiveField(1) @JsonKey(name: 'answer') required this.answer})
      : super._();

  factory _$_StoreAmbulanceAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$$_StoreAmbulanceAnswerModelFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'questionId')
  final int questionId;
  @override
  @HiveField(1)
  @JsonKey(name: 'answer')
  final bool answer;

  @override
  String toString() {
    return 'StoreAmbulanceAnswerModel(questionId: $questionId, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoreAmbulanceAnswerModel &&
            (identical(other.questionId, questionId) ||
                const DeepCollectionEquality()
                    .equals(other.questionId, questionId)) &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(questionId) ^
      const DeepCollectionEquality().hash(answer);

  @JsonKey(ignore: true)
  @override
  _$StoreAmbulanceAnswerModelCopyWith<_StoreAmbulanceAnswerModel>
      get copyWith =>
          __$StoreAmbulanceAnswerModelCopyWithImpl<_StoreAmbulanceAnswerModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreAmbulanceAnswerModelToJson(this);
  }
}

abstract class _StoreAmbulanceAnswerModel extends StoreAmbulanceAnswerModel
    implements DataSourceObject {
  factory _StoreAmbulanceAnswerModel(
          {@HiveField(0) @JsonKey(name: 'questionId') required int questionId,
          @HiveField(1) @JsonKey(name: 'answer') required bool answer}) =
      _$_StoreAmbulanceAnswerModel;
  _StoreAmbulanceAnswerModel._() : super._();

  factory _StoreAmbulanceAnswerModel.fromJson(Map<String, dynamic> json) =
      _$_StoreAmbulanceAnswerModel.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'questionId')
  int get questionId => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  @JsonKey(name: 'answer')
  bool get answer => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StoreAmbulanceAnswerModelCopyWith<_StoreAmbulanceAnswerModel>
      get copyWith => throw _privateConstructorUsedError;
}
