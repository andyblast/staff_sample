// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_ambulance_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreAmbulanceQuestionModel _$StoreAmbulanceQuestionModelFromJson(
    Map<String, dynamic> json) {
  return _StoreAmbulanceQuestionModel.fromJson(json);
}

/// @nodoc
class _$StoreAmbulanceQuestionModelTearOff {
  const _$StoreAmbulanceQuestionModelTearOff();

  _StoreAmbulanceQuestionModel call(
      {@HiveField(0)
      @JsonKey(name: 'questionId')
          required int questionId,
      @HiveField(1)
      @JsonKey(name: 'questionGroupId')
          required int questionGroupId,
      @HiveField(2)
      @JsonKey(name: 'name')
          required String name,
      @HiveField(3)
      @JsonKey(name: 'answer')
          required bool answer}) {
    return _StoreAmbulanceQuestionModel(
      questionId: questionId,
      questionGroupId: questionGroupId,
      name: name,
      answer: answer,
    );
  }

  StoreAmbulanceQuestionModel fromJson(Map<String, Object> json) {
    return StoreAmbulanceQuestionModel.fromJson(json);
  }
}

/// @nodoc
const $StoreAmbulanceQuestionModel = _$StoreAmbulanceQuestionModelTearOff();

/// @nodoc
mixin _$StoreAmbulanceQuestionModel {
  @HiveField(0)
  @JsonKey(name: 'questionId')
  int get questionId => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'questionGroupId')
  int get questionGroupId => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'answer')
  bool get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreAmbulanceQuestionModelCopyWith<StoreAmbulanceQuestionModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreAmbulanceQuestionModelCopyWith<$Res> {
  factory $StoreAmbulanceQuestionModelCopyWith(
          StoreAmbulanceQuestionModel value,
          $Res Function(StoreAmbulanceQuestionModel) then) =
      _$StoreAmbulanceQuestionModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) @JsonKey(name: 'questionId') int questionId,
      @HiveField(1) @JsonKey(name: 'questionGroupId') int questionGroupId,
      @HiveField(2) @JsonKey(name: 'name') String name,
      @HiveField(3) @JsonKey(name: 'answer') bool answer});
}

/// @nodoc
class _$StoreAmbulanceQuestionModelCopyWithImpl<$Res>
    implements $StoreAmbulanceQuestionModelCopyWith<$Res> {
  _$StoreAmbulanceQuestionModelCopyWithImpl(this._value, this._then);

  final StoreAmbulanceQuestionModel _value;
  // ignore: unused_field
  final $Res Function(StoreAmbulanceQuestionModel) _then;

  @override
  $Res call({
    Object? questionId = freezed,
    Object? questionGroupId = freezed,
    Object? name = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      questionId: questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      questionGroupId: questionGroupId == freezed
          ? _value.questionGroupId
          : questionGroupId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$StoreAmbulanceQuestionModelCopyWith<$Res>
    implements $StoreAmbulanceQuestionModelCopyWith<$Res> {
  factory _$StoreAmbulanceQuestionModelCopyWith(
          _StoreAmbulanceQuestionModel value,
          $Res Function(_StoreAmbulanceQuestionModel) then) =
      __$StoreAmbulanceQuestionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) @JsonKey(name: 'questionId') int questionId,
      @HiveField(1) @JsonKey(name: 'questionGroupId') int questionGroupId,
      @HiveField(2) @JsonKey(name: 'name') String name,
      @HiveField(3) @JsonKey(name: 'answer') bool answer});
}

/// @nodoc
class __$StoreAmbulanceQuestionModelCopyWithImpl<$Res>
    extends _$StoreAmbulanceQuestionModelCopyWithImpl<$Res>
    implements _$StoreAmbulanceQuestionModelCopyWith<$Res> {
  __$StoreAmbulanceQuestionModelCopyWithImpl(
      _StoreAmbulanceQuestionModel _value,
      $Res Function(_StoreAmbulanceQuestionModel) _then)
      : super(_value, (v) => _then(v as _StoreAmbulanceQuestionModel));

  @override
  _StoreAmbulanceQuestionModel get _value =>
      super._value as _StoreAmbulanceQuestionModel;

  @override
  $Res call({
    Object? questionId = freezed,
    Object? questionGroupId = freezed,
    Object? name = freezed,
    Object? answer = freezed,
  }) {
    return _then(_StoreAmbulanceQuestionModel(
      questionId: questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      questionGroupId: questionGroupId == freezed
          ? _value.questionGroupId
          : questionGroupId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_StoreAmbulanceQuestionModel extends _StoreAmbulanceQuestionModel {
  _$_StoreAmbulanceQuestionModel(
      {@HiveField(0)
      @JsonKey(name: 'questionId')
          required this.questionId,
      @HiveField(1)
      @JsonKey(name: 'questionGroupId')
          required this.questionGroupId,
      @HiveField(2)
      @JsonKey(name: 'name')
          required this.name,
      @HiveField(3)
      @JsonKey(name: 'answer')
          required this.answer})
      : super._();

  factory _$_StoreAmbulanceQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$$_StoreAmbulanceQuestionModelFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'questionId')
  final int questionId;
  @override
  @HiveField(1)
  @JsonKey(name: 'questionGroupId')
  final int questionGroupId;
  @override
  @HiveField(2)
  @JsonKey(name: 'name')
  final String name;
  @override
  @HiveField(3)
  @JsonKey(name: 'answer')
  final bool answer;

  @override
  String toString() {
    return 'StoreAmbulanceQuestionModel(questionId: $questionId, questionGroupId: $questionGroupId, name: $name, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoreAmbulanceQuestionModel &&
            (identical(other.questionId, questionId) ||
                const DeepCollectionEquality()
                    .equals(other.questionId, questionId)) &&
            (identical(other.questionGroupId, questionGroupId) ||
                const DeepCollectionEquality()
                    .equals(other.questionGroupId, questionGroupId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(questionId) ^
      const DeepCollectionEquality().hash(questionGroupId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(answer);

  @JsonKey(ignore: true)
  @override
  _$StoreAmbulanceQuestionModelCopyWith<_StoreAmbulanceQuestionModel>
      get copyWith => __$StoreAmbulanceQuestionModelCopyWithImpl<
          _StoreAmbulanceQuestionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreAmbulanceQuestionModelToJson(this);
  }
}

abstract class _StoreAmbulanceQuestionModel extends StoreAmbulanceQuestionModel
    implements DataSourceObject {
  factory _StoreAmbulanceQuestionModel(
      {@HiveField(0)
      @JsonKey(name: 'questionId')
          required int questionId,
      @HiveField(1)
      @JsonKey(name: 'questionGroupId')
          required int questionGroupId,
      @HiveField(2)
      @JsonKey(name: 'name')
          required String name,
      @HiveField(3)
      @JsonKey(name: 'answer')
          required bool answer}) = _$_StoreAmbulanceQuestionModel;
  _StoreAmbulanceQuestionModel._() : super._();

  factory _StoreAmbulanceQuestionModel.fromJson(Map<String, dynamic> json) =
      _$_StoreAmbulanceQuestionModel.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'questionId')
  int get questionId => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  @JsonKey(name: 'questionGroupId')
  int get questionGroupId => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  @JsonKey(name: 'answer')
  bool get answer => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StoreAmbulanceQuestionModelCopyWith<_StoreAmbulanceQuestionModel>
      get copyWith => throw _privateConstructorUsedError;
}
