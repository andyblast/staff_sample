// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_ambulance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreAmbulanceModel _$StoreAmbulanceModelFromJson(Map<String, dynamic> json) {
  return _StoreAmbulanceModel.fromJson(json);
}

/// @nodoc
class _$StoreAmbulanceModelTearOff {
  const _$StoreAmbulanceModelTearOff();

  _StoreAmbulanceModel call(
      {@HiveField(0)
      @JsonKey(name: 'isWriteAllowed')
          required bool isWriteAllowed,
      @HiveField(1)
      @JsonKey(name: 'isReadAllowed')
          required bool isReadAllowed,
      @HiveField(2)
      @JsonKey(name: 'shopAmbulanceQuestions')
          List<StoreAmbulanceQuestionModel> shopAmbulanceQuestions = const [],
      @HiveField(3)
      @JsonKey(name: 'shopAmbulanceQuestionGroups')
          List<StoreAmbulanceGroupModel>
              shopAmbulanceQuestionGroups = const []}) {
    return _StoreAmbulanceModel(
      isWriteAllowed: isWriteAllowed,
      isReadAllowed: isReadAllowed,
      shopAmbulanceQuestions: shopAmbulanceQuestions,
      shopAmbulanceQuestionGroups: shopAmbulanceQuestionGroups,
    );
  }

  StoreAmbulanceModel fromJson(Map<String, Object> json) {
    return StoreAmbulanceModel.fromJson(json);
  }
}

/// @nodoc
const $StoreAmbulanceModel = _$StoreAmbulanceModelTearOff();

/// @nodoc
mixin _$StoreAmbulanceModel {
  @HiveField(0)
  @JsonKey(name: 'isWriteAllowed')
  bool get isWriteAllowed => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'isReadAllowed')
  bool get isReadAllowed => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'shopAmbulanceQuestions')
  List<StoreAmbulanceQuestionModel> get shopAmbulanceQuestions =>
      throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'shopAmbulanceQuestionGroups')
  List<StoreAmbulanceGroupModel> get shopAmbulanceQuestionGroups =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreAmbulanceModelCopyWith<StoreAmbulanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreAmbulanceModelCopyWith<$Res> {
  factory $StoreAmbulanceModelCopyWith(
          StoreAmbulanceModel value, $Res Function(StoreAmbulanceModel) then) =
      _$StoreAmbulanceModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0)
      @JsonKey(name: 'isWriteAllowed')
          bool isWriteAllowed,
      @HiveField(1)
      @JsonKey(name: 'isReadAllowed')
          bool isReadAllowed,
      @HiveField(2)
      @JsonKey(name: 'shopAmbulanceQuestions')
          List<StoreAmbulanceQuestionModel> shopAmbulanceQuestions,
      @HiveField(3)
      @JsonKey(name: 'shopAmbulanceQuestionGroups')
          List<StoreAmbulanceGroupModel> shopAmbulanceQuestionGroups});
}

/// @nodoc
class _$StoreAmbulanceModelCopyWithImpl<$Res>
    implements $StoreAmbulanceModelCopyWith<$Res> {
  _$StoreAmbulanceModelCopyWithImpl(this._value, this._then);

  final StoreAmbulanceModel _value;
  // ignore: unused_field
  final $Res Function(StoreAmbulanceModel) _then;

  @override
  $Res call({
    Object? isWriteAllowed = freezed,
    Object? isReadAllowed = freezed,
    Object? shopAmbulanceQuestions = freezed,
    Object? shopAmbulanceQuestionGroups = freezed,
  }) {
    return _then(_value.copyWith(
      isWriteAllowed: isWriteAllowed == freezed
          ? _value.isWriteAllowed
          : isWriteAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      isReadAllowed: isReadAllowed == freezed
          ? _value.isReadAllowed
          : isReadAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      shopAmbulanceQuestions: shopAmbulanceQuestions == freezed
          ? _value.shopAmbulanceQuestions
          : shopAmbulanceQuestions // ignore: cast_nullable_to_non_nullable
              as List<StoreAmbulanceQuestionModel>,
      shopAmbulanceQuestionGroups: shopAmbulanceQuestionGroups == freezed
          ? _value.shopAmbulanceQuestionGroups
          : shopAmbulanceQuestionGroups // ignore: cast_nullable_to_non_nullable
              as List<StoreAmbulanceGroupModel>,
    ));
  }
}

/// @nodoc
abstract class _$StoreAmbulanceModelCopyWith<$Res>
    implements $StoreAmbulanceModelCopyWith<$Res> {
  factory _$StoreAmbulanceModelCopyWith(_StoreAmbulanceModel value,
          $Res Function(_StoreAmbulanceModel) then) =
      __$StoreAmbulanceModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0)
      @JsonKey(name: 'isWriteAllowed')
          bool isWriteAllowed,
      @HiveField(1)
      @JsonKey(name: 'isReadAllowed')
          bool isReadAllowed,
      @HiveField(2)
      @JsonKey(name: 'shopAmbulanceQuestions')
          List<StoreAmbulanceQuestionModel> shopAmbulanceQuestions,
      @HiveField(3)
      @JsonKey(name: 'shopAmbulanceQuestionGroups')
          List<StoreAmbulanceGroupModel> shopAmbulanceQuestionGroups});
}

/// @nodoc
class __$StoreAmbulanceModelCopyWithImpl<$Res>
    extends _$StoreAmbulanceModelCopyWithImpl<$Res>
    implements _$StoreAmbulanceModelCopyWith<$Res> {
  __$StoreAmbulanceModelCopyWithImpl(
      _StoreAmbulanceModel _value, $Res Function(_StoreAmbulanceModel) _then)
      : super(_value, (v) => _then(v as _StoreAmbulanceModel));

  @override
  _StoreAmbulanceModel get _value => super._value as _StoreAmbulanceModel;

  @override
  $Res call({
    Object? isWriteAllowed = freezed,
    Object? isReadAllowed = freezed,
    Object? shopAmbulanceQuestions = freezed,
    Object? shopAmbulanceQuestionGroups = freezed,
  }) {
    return _then(_StoreAmbulanceModel(
      isWriteAllowed: isWriteAllowed == freezed
          ? _value.isWriteAllowed
          : isWriteAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      isReadAllowed: isReadAllowed == freezed
          ? _value.isReadAllowed
          : isReadAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      shopAmbulanceQuestions: shopAmbulanceQuestions == freezed
          ? _value.shopAmbulanceQuestions
          : shopAmbulanceQuestions // ignore: cast_nullable_to_non_nullable
              as List<StoreAmbulanceQuestionModel>,
      shopAmbulanceQuestionGroups: shopAmbulanceQuestionGroups == freezed
          ? _value.shopAmbulanceQuestionGroups
          : shopAmbulanceQuestionGroups // ignore: cast_nullable_to_non_nullable
              as List<StoreAmbulanceGroupModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(DataSourceObject)
class _$_StoreAmbulanceModel extends _StoreAmbulanceModel {
  _$_StoreAmbulanceModel(
      {@HiveField(0)
      @JsonKey(name: 'isWriteAllowed')
          required this.isWriteAllowed,
      @HiveField(1)
      @JsonKey(name: 'isReadAllowed')
          required this.isReadAllowed,
      @HiveField(2)
      @JsonKey(name: 'shopAmbulanceQuestions')
          this.shopAmbulanceQuestions = const [],
      @HiveField(3)
      @JsonKey(name: 'shopAmbulanceQuestionGroups')
          this.shopAmbulanceQuestionGroups = const []})
      : super._();

  factory _$_StoreAmbulanceModel.fromJson(Map<String, dynamic> json) =>
      _$$_StoreAmbulanceModelFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'isWriteAllowed')
  final bool isWriteAllowed;
  @override
  @HiveField(1)
  @JsonKey(name: 'isReadAllowed')
  final bool isReadAllowed;
  @override
  @HiveField(2)
  @JsonKey(name: 'shopAmbulanceQuestions')
  final List<StoreAmbulanceQuestionModel> shopAmbulanceQuestions;
  @override
  @HiveField(3)
  @JsonKey(name: 'shopAmbulanceQuestionGroups')
  final List<StoreAmbulanceGroupModel> shopAmbulanceQuestionGroups;

  @override
  String toString() {
    return 'StoreAmbulanceModel(isWriteAllowed: $isWriteAllowed, isReadAllowed: $isReadAllowed, shopAmbulanceQuestions: $shopAmbulanceQuestions, shopAmbulanceQuestionGroups: $shopAmbulanceQuestionGroups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoreAmbulanceModel &&
            (identical(other.isWriteAllowed, isWriteAllowed) ||
                const DeepCollectionEquality()
                    .equals(other.isWriteAllowed, isWriteAllowed)) &&
            (identical(other.isReadAllowed, isReadAllowed) ||
                const DeepCollectionEquality()
                    .equals(other.isReadAllowed, isReadAllowed)) &&
            (identical(other.shopAmbulanceQuestions, shopAmbulanceQuestions) ||
                const DeepCollectionEquality().equals(
                    other.shopAmbulanceQuestions, shopAmbulanceQuestions)) &&
            (identical(other.shopAmbulanceQuestionGroups,
                    shopAmbulanceQuestionGroups) ||
                const DeepCollectionEquality().equals(
                    other.shopAmbulanceQuestionGroups,
                    shopAmbulanceQuestionGroups)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isWriteAllowed) ^
      const DeepCollectionEquality().hash(isReadAllowed) ^
      const DeepCollectionEquality().hash(shopAmbulanceQuestions) ^
      const DeepCollectionEquality().hash(shopAmbulanceQuestionGroups);

  @JsonKey(ignore: true)
  @override
  _$StoreAmbulanceModelCopyWith<_StoreAmbulanceModel> get copyWith =>
      __$StoreAmbulanceModelCopyWithImpl<_StoreAmbulanceModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreAmbulanceModelToJson(this);
  }
}

abstract class _StoreAmbulanceModel extends StoreAmbulanceModel
    implements DataSourceObject {
  factory _StoreAmbulanceModel(
          {@HiveField(0)
          @JsonKey(name: 'isWriteAllowed')
              required bool isWriteAllowed,
          @HiveField(1)
          @JsonKey(name: 'isReadAllowed')
              required bool isReadAllowed,
          @HiveField(2)
          @JsonKey(name: 'shopAmbulanceQuestions')
              List<StoreAmbulanceQuestionModel> shopAmbulanceQuestions,
          @HiveField(3)
          @JsonKey(name: 'shopAmbulanceQuestionGroups')
              List<StoreAmbulanceGroupModel> shopAmbulanceQuestionGroups}) =
      _$_StoreAmbulanceModel;
  _StoreAmbulanceModel._() : super._();

  factory _StoreAmbulanceModel.fromJson(Map<String, dynamic> json) =
      _$_StoreAmbulanceModel.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'isWriteAllowed')
  bool get isWriteAllowed => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  @JsonKey(name: 'isReadAllowed')
  bool get isReadAllowed => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  @JsonKey(name: 'shopAmbulanceQuestions')
  List<StoreAmbulanceQuestionModel> get shopAmbulanceQuestions =>
      throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  @JsonKey(name: 'shopAmbulanceQuestionGroups')
  List<StoreAmbulanceGroupModel> get shopAmbulanceQuestionGroups =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StoreAmbulanceModelCopyWith<_StoreAmbulanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
