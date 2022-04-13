// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_ambulance_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreAmbulanceGroupModel _$StoreAmbulanceGroupModelFromJson(
    Map<String, dynamic> json) {
  return _StoreAmbulanceGroupModel.fromJson(json);
}

/// @nodoc
class _$StoreAmbulanceGroupModelTearOff {
  const _$StoreAmbulanceGroupModelTearOff();

  _StoreAmbulanceGroupModel call(
      {@HiveField(0)
      @JsonKey(name: 'questionGroupId')
          required int questionGroupId,
      @HiveField(1)
      @JsonKey(name: 'name')
          String? name = ''}) {
    return _StoreAmbulanceGroupModel(
      questionGroupId: questionGroupId,
      name: name,
    );
  }

  StoreAmbulanceGroupModel fromJson(Map<String, Object> json) {
    return StoreAmbulanceGroupModel.fromJson(json);
  }
}

/// @nodoc
const $StoreAmbulanceGroupModel = _$StoreAmbulanceGroupModelTearOff();

/// @nodoc
mixin _$StoreAmbulanceGroupModel {
  @HiveField(0)
  @JsonKey(name: 'questionGroupId')
  int get questionGroupId => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreAmbulanceGroupModelCopyWith<StoreAmbulanceGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreAmbulanceGroupModelCopyWith<$Res> {
  factory $StoreAmbulanceGroupModelCopyWith(StoreAmbulanceGroupModel value,
          $Res Function(StoreAmbulanceGroupModel) then) =
      _$StoreAmbulanceGroupModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) @JsonKey(name: 'questionGroupId') int questionGroupId,
      @HiveField(1) @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$StoreAmbulanceGroupModelCopyWithImpl<$Res>
    implements $StoreAmbulanceGroupModelCopyWith<$Res> {
  _$StoreAmbulanceGroupModelCopyWithImpl(this._value, this._then);

  final StoreAmbulanceGroupModel _value;
  // ignore: unused_field
  final $Res Function(StoreAmbulanceGroupModel) _then;

  @override
  $Res call({
    Object? questionGroupId = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      questionGroupId: questionGroupId == freezed
          ? _value.questionGroupId
          : questionGroupId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$StoreAmbulanceGroupModelCopyWith<$Res>
    implements $StoreAmbulanceGroupModelCopyWith<$Res> {
  factory _$StoreAmbulanceGroupModelCopyWith(_StoreAmbulanceGroupModel value,
          $Res Function(_StoreAmbulanceGroupModel) then) =
      __$StoreAmbulanceGroupModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) @JsonKey(name: 'questionGroupId') int questionGroupId,
      @HiveField(1) @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$StoreAmbulanceGroupModelCopyWithImpl<$Res>
    extends _$StoreAmbulanceGroupModelCopyWithImpl<$Res>
    implements _$StoreAmbulanceGroupModelCopyWith<$Res> {
  __$StoreAmbulanceGroupModelCopyWithImpl(_StoreAmbulanceGroupModel _value,
      $Res Function(_StoreAmbulanceGroupModel) _then)
      : super(_value, (v) => _then(v as _StoreAmbulanceGroupModel));

  @override
  _StoreAmbulanceGroupModel get _value =>
      super._value as _StoreAmbulanceGroupModel;

  @override
  $Res call({
    Object? questionGroupId = freezed,
    Object? name = freezed,
  }) {
    return _then(_StoreAmbulanceGroupModel(
      questionGroupId: questionGroupId == freezed
          ? _value.questionGroupId
          : questionGroupId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(DataSourceObject)
class _$_StoreAmbulanceGroupModel extends _StoreAmbulanceGroupModel {
  _$_StoreAmbulanceGroupModel(
      {@HiveField(0)
      @JsonKey(name: 'questionGroupId')
          required this.questionGroupId,
      @HiveField(1)
      @JsonKey(name: 'name')
          this.name = ''})
      : super._();

  factory _$_StoreAmbulanceGroupModel.fromJson(Map<String, dynamic> json) =>
      _$$_StoreAmbulanceGroupModelFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'questionGroupId')
  final int questionGroupId;
  @override
  @HiveField(1)
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'StoreAmbulanceGroupModel(questionGroupId: $questionGroupId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoreAmbulanceGroupModel &&
            (identical(other.questionGroupId, questionGroupId) ||
                const DeepCollectionEquality()
                    .equals(other.questionGroupId, questionGroupId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(questionGroupId) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$StoreAmbulanceGroupModelCopyWith<_StoreAmbulanceGroupModel> get copyWith =>
      __$StoreAmbulanceGroupModelCopyWithImpl<_StoreAmbulanceGroupModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreAmbulanceGroupModelToJson(this);
  }
}

abstract class _StoreAmbulanceGroupModel extends StoreAmbulanceGroupModel
    implements DataSourceObject {
  factory _StoreAmbulanceGroupModel(
      {@HiveField(0)
      @JsonKey(name: 'questionGroupId')
          required int questionGroupId,
      @HiveField(1)
      @JsonKey(name: 'name')
          String? name}) = _$_StoreAmbulanceGroupModel;
  _StoreAmbulanceGroupModel._() : super._();

  factory _StoreAmbulanceGroupModel.fromJson(Map<String, dynamic> json) =
      _$_StoreAmbulanceGroupModel.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'questionGroupId')
  int get questionGroupId => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StoreAmbulanceGroupModelCopyWith<_StoreAmbulanceGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}
