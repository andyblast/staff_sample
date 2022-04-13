// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_ambulance_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreAmbulancePostModel _$StoreAmbulancePostModelFromJson(
    Map<String, dynamic> json) {
  return _StoreAmbulancePostModel.fromJson(json);
}

/// @nodoc
class _$StoreAmbulancePostModelTearOff {
  const _$StoreAmbulancePostModelTearOff();

  _StoreAmbulancePostModel call(
      {@HiveField(0)
      @JsonKey(name: 'shopAmbulanceAnswers')
          List<StoreAmbulanceAnswerModel>? shopAmbulanceAnswers = const []}) {
    return _StoreAmbulancePostModel(
      shopAmbulanceAnswers: shopAmbulanceAnswers,
    );
  }

  StoreAmbulancePostModel fromJson(Map<String, Object> json) {
    return StoreAmbulancePostModel.fromJson(json);
  }
}

/// @nodoc
const $StoreAmbulancePostModel = _$StoreAmbulancePostModelTearOff();

/// @nodoc
mixin _$StoreAmbulancePostModel {
  @HiveField(0)
  @JsonKey(name: 'shopAmbulanceAnswers')
  List<StoreAmbulanceAnswerModel>? get shopAmbulanceAnswers =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreAmbulancePostModelCopyWith<StoreAmbulancePostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreAmbulancePostModelCopyWith<$Res> {
  factory $StoreAmbulancePostModelCopyWith(StoreAmbulancePostModel value,
          $Res Function(StoreAmbulancePostModel) then) =
      _$StoreAmbulancePostModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0)
      @JsonKey(name: 'shopAmbulanceAnswers')
          List<StoreAmbulanceAnswerModel>? shopAmbulanceAnswers});
}

/// @nodoc
class _$StoreAmbulancePostModelCopyWithImpl<$Res>
    implements $StoreAmbulancePostModelCopyWith<$Res> {
  _$StoreAmbulancePostModelCopyWithImpl(this._value, this._then);

  final StoreAmbulancePostModel _value;
  // ignore: unused_field
  final $Res Function(StoreAmbulancePostModel) _then;

  @override
  $Res call({
    Object? shopAmbulanceAnswers = freezed,
  }) {
    return _then(_value.copyWith(
      shopAmbulanceAnswers: shopAmbulanceAnswers == freezed
          ? _value.shopAmbulanceAnswers
          : shopAmbulanceAnswers // ignore: cast_nullable_to_non_nullable
              as List<StoreAmbulanceAnswerModel>?,
    ));
  }
}

/// @nodoc
abstract class _$StoreAmbulancePostModelCopyWith<$Res>
    implements $StoreAmbulancePostModelCopyWith<$Res> {
  factory _$StoreAmbulancePostModelCopyWith(_StoreAmbulancePostModel value,
          $Res Function(_StoreAmbulancePostModel) then) =
      __$StoreAmbulancePostModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0)
      @JsonKey(name: 'shopAmbulanceAnswers')
          List<StoreAmbulanceAnswerModel>? shopAmbulanceAnswers});
}

/// @nodoc
class __$StoreAmbulancePostModelCopyWithImpl<$Res>
    extends _$StoreAmbulancePostModelCopyWithImpl<$Res>
    implements _$StoreAmbulancePostModelCopyWith<$Res> {
  __$StoreAmbulancePostModelCopyWithImpl(_StoreAmbulancePostModel _value,
      $Res Function(_StoreAmbulancePostModel) _then)
      : super(_value, (v) => _then(v as _StoreAmbulancePostModel));

  @override
  _StoreAmbulancePostModel get _value =>
      super._value as _StoreAmbulancePostModel;

  @override
  $Res call({
    Object? shopAmbulanceAnswers = freezed,
  }) {
    return _then(_StoreAmbulancePostModel(
      shopAmbulanceAnswers: shopAmbulanceAnswers == freezed
          ? _value.shopAmbulanceAnswers
          : shopAmbulanceAnswers // ignore: cast_nullable_to_non_nullable
              as List<StoreAmbulanceAnswerModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(DataSourceObject)
class _$_StoreAmbulancePostModel extends _StoreAmbulancePostModel {
  _$_StoreAmbulancePostModel(
      {@HiveField(0)
      @JsonKey(name: 'shopAmbulanceAnswers')
          this.shopAmbulanceAnswers = const []})
      : super._();

  factory _$_StoreAmbulancePostModel.fromJson(Map<String, dynamic> json) =>
      _$$_StoreAmbulancePostModelFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'shopAmbulanceAnswers')
  final List<StoreAmbulanceAnswerModel>? shopAmbulanceAnswers;

  @override
  String toString() {
    return 'StoreAmbulancePostModel(shopAmbulanceAnswers: $shopAmbulanceAnswers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoreAmbulancePostModel &&
            (identical(other.shopAmbulanceAnswers, shopAmbulanceAnswers) ||
                const DeepCollectionEquality()
                    .equals(other.shopAmbulanceAnswers, shopAmbulanceAnswers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(shopAmbulanceAnswers);

  @JsonKey(ignore: true)
  @override
  _$StoreAmbulancePostModelCopyWith<_StoreAmbulancePostModel> get copyWith =>
      __$StoreAmbulancePostModelCopyWithImpl<_StoreAmbulancePostModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreAmbulancePostModelToJson(this);
  }
}

abstract class _StoreAmbulancePostModel extends StoreAmbulancePostModel
    implements DataSourceObject {
  factory _StoreAmbulancePostModel(
          {@HiveField(0)
          @JsonKey(name: 'shopAmbulanceAnswers')
              List<StoreAmbulanceAnswerModel>? shopAmbulanceAnswers}) =
      _$_StoreAmbulancePostModel;
  _StoreAmbulancePostModel._() : super._();

  factory _StoreAmbulancePostModel.fromJson(Map<String, dynamic> json) =
      _$_StoreAmbulancePostModel.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'shopAmbulanceAnswers')
  List<StoreAmbulanceAnswerModel>? get shopAmbulanceAnswers =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StoreAmbulancePostModelCopyWith<_StoreAmbulancePostModel> get copyWith =>
      throw _privateConstructorUsedError;
}
