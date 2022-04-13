// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_selection_position_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreSelectionPositionModel _$StoreSelectionPositionModelFromJson(
    Map<String, dynamic> json) {
  return _StoreSelectionPositionModel.fromJson(json);
}

/// @nodoc
class _$StoreSelectionPositionModelTearOff {
  const _$StoreSelectionPositionModelTearOff();

  _StoreSelectionPositionModel call(
      {@HiveField(0)
      @JsonKey(name: 'positionId')
          required int positionId,
      @HiveField(1)
      @JsonKey(name: 'sortOrder')
          int? sortOrder,
      @HiveField(2)
      @JsonKey(name: 'name')
          String? name,
      @HiveField(3)
      @JsonKey(name: 'shr')
          int? shr,
      @HiveField(4)
      @JsonKey(name: 'shz')
          double? shz,
      @HiveField(5)
      @JsonKey(name: 'mobileSelectionEnabled')
          required bool mobileSelectionEnabled,
      @HiveField(6)
      @JsonKey(name: 'vacancySelectionEnabled')
          required bool vacancySelectionEnabled,
      @HiveField(7)
      @JsonKey(name: 'replacementSelectionEnabled')
          required bool replacementSelectionEnabled,
      @HiveField(8)
      @JsonKey(name: 'mobileRequests')
          List<StoreSelectionMobileRequestModel>? mobileRequests,
      @HiveField(9)
      @JsonKey(name: 'selectionRequests')
          List<StoreSelectionRequestModel>? selectionRequests}) {
    return _StoreSelectionPositionModel(
      positionId: positionId,
      sortOrder: sortOrder,
      name: name,
      shr: shr,
      shz: shz,
      mobileSelectionEnabled: mobileSelectionEnabled,
      vacancySelectionEnabled: vacancySelectionEnabled,
      replacementSelectionEnabled: replacementSelectionEnabled,
      mobileRequests: mobileRequests,
      selectionRequests: selectionRequests,
    );
  }

  StoreSelectionPositionModel fromJson(Map<String, Object> json) {
    return StoreSelectionPositionModel.fromJson(json);
  }
}

/// @nodoc
const $StoreSelectionPositionModel = _$StoreSelectionPositionModelTearOff();

/// @nodoc
mixin _$StoreSelectionPositionModel {
  @HiveField(0)
  @JsonKey(name: 'positionId')
  int get positionId => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'sortOrder')
  int? get sortOrder => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'shr')
  int? get shr => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'shz')
  double? get shz => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'mobileSelectionEnabled')
  bool get mobileSelectionEnabled => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'vacancySelectionEnabled')
  bool get vacancySelectionEnabled => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'replacementSelectionEnabled')
  bool get replacementSelectionEnabled => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: 'mobileRequests')
  List<StoreSelectionMobileRequestModel>? get mobileRequests =>
      throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: 'selectionRequests')
  List<StoreSelectionRequestModel>? get selectionRequests =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreSelectionPositionModelCopyWith<StoreSelectionPositionModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreSelectionPositionModelCopyWith<$Res> {
  factory $StoreSelectionPositionModelCopyWith(
          StoreSelectionPositionModel value,
          $Res Function(StoreSelectionPositionModel) then) =
      _$StoreSelectionPositionModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0)
      @JsonKey(name: 'positionId')
          int positionId,
      @HiveField(1)
      @JsonKey(name: 'sortOrder')
          int? sortOrder,
      @HiveField(2)
      @JsonKey(name: 'name')
          String? name,
      @HiveField(3)
      @JsonKey(name: 'shr')
          int? shr,
      @HiveField(4)
      @JsonKey(name: 'shz')
          double? shz,
      @HiveField(5)
      @JsonKey(name: 'mobileSelectionEnabled')
          bool mobileSelectionEnabled,
      @HiveField(6)
      @JsonKey(name: 'vacancySelectionEnabled')
          bool vacancySelectionEnabled,
      @HiveField(7)
      @JsonKey(name: 'replacementSelectionEnabled')
          bool replacementSelectionEnabled,
      @HiveField(8)
      @JsonKey(name: 'mobileRequests')
          List<StoreSelectionMobileRequestModel>? mobileRequests,
      @HiveField(9)
      @JsonKey(name: 'selectionRequests')
          List<StoreSelectionRequestModel>? selectionRequests});
}

/// @nodoc
class _$StoreSelectionPositionModelCopyWithImpl<$Res>
    implements $StoreSelectionPositionModelCopyWith<$Res> {
  _$StoreSelectionPositionModelCopyWithImpl(this._value, this._then);

  final StoreSelectionPositionModel _value;
  // ignore: unused_field
  final $Res Function(StoreSelectionPositionModel) _then;

  @override
  $Res call({
    Object? positionId = freezed,
    Object? sortOrder = freezed,
    Object? name = freezed,
    Object? shr = freezed,
    Object? shz = freezed,
    Object? mobileSelectionEnabled = freezed,
    Object? vacancySelectionEnabled = freezed,
    Object? replacementSelectionEnabled = freezed,
    Object? mobileRequests = freezed,
    Object? selectionRequests = freezed,
  }) {
    return _then(_value.copyWith(
      positionId: positionId == freezed
          ? _value.positionId
          : positionId // ignore: cast_nullable_to_non_nullable
              as int,
      sortOrder: sortOrder == freezed
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      shr: shr == freezed
          ? _value.shr
          : shr // ignore: cast_nullable_to_non_nullable
              as int?,
      shz: shz == freezed
          ? _value.shz
          : shz // ignore: cast_nullable_to_non_nullable
              as double?,
      mobileSelectionEnabled: mobileSelectionEnabled == freezed
          ? _value.mobileSelectionEnabled
          : mobileSelectionEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      vacancySelectionEnabled: vacancySelectionEnabled == freezed
          ? _value.vacancySelectionEnabled
          : vacancySelectionEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      replacementSelectionEnabled: replacementSelectionEnabled == freezed
          ? _value.replacementSelectionEnabled
          : replacementSelectionEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      mobileRequests: mobileRequests == freezed
          ? _value.mobileRequests
          : mobileRequests // ignore: cast_nullable_to_non_nullable
              as List<StoreSelectionMobileRequestModel>?,
      selectionRequests: selectionRequests == freezed
          ? _value.selectionRequests
          : selectionRequests // ignore: cast_nullable_to_non_nullable
              as List<StoreSelectionRequestModel>?,
    ));
  }
}

/// @nodoc
abstract class _$StoreSelectionPositionModelCopyWith<$Res>
    implements $StoreSelectionPositionModelCopyWith<$Res> {
  factory _$StoreSelectionPositionModelCopyWith(
          _StoreSelectionPositionModel value,
          $Res Function(_StoreSelectionPositionModel) then) =
      __$StoreSelectionPositionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0)
      @JsonKey(name: 'positionId')
          int positionId,
      @HiveField(1)
      @JsonKey(name: 'sortOrder')
          int? sortOrder,
      @HiveField(2)
      @JsonKey(name: 'name')
          String? name,
      @HiveField(3)
      @JsonKey(name: 'shr')
          int? shr,
      @HiveField(4)
      @JsonKey(name: 'shz')
          double? shz,
      @HiveField(5)
      @JsonKey(name: 'mobileSelectionEnabled')
          bool mobileSelectionEnabled,
      @HiveField(6)
      @JsonKey(name: 'vacancySelectionEnabled')
          bool vacancySelectionEnabled,
      @HiveField(7)
      @JsonKey(name: 'replacementSelectionEnabled')
          bool replacementSelectionEnabled,
      @HiveField(8)
      @JsonKey(name: 'mobileRequests')
          List<StoreSelectionMobileRequestModel>? mobileRequests,
      @HiveField(9)
      @JsonKey(name: 'selectionRequests')
          List<StoreSelectionRequestModel>? selectionRequests});
}

/// @nodoc
class __$StoreSelectionPositionModelCopyWithImpl<$Res>
    extends _$StoreSelectionPositionModelCopyWithImpl<$Res>
    implements _$StoreSelectionPositionModelCopyWith<$Res> {
  __$StoreSelectionPositionModelCopyWithImpl(
      _StoreSelectionPositionModel _value,
      $Res Function(_StoreSelectionPositionModel) _then)
      : super(_value, (v) => _then(v as _StoreSelectionPositionModel));

  @override
  _StoreSelectionPositionModel get _value =>
      super._value as _StoreSelectionPositionModel;

  @override
  $Res call({
    Object? positionId = freezed,
    Object? sortOrder = freezed,
    Object? name = freezed,
    Object? shr = freezed,
    Object? shz = freezed,
    Object? mobileSelectionEnabled = freezed,
    Object? vacancySelectionEnabled = freezed,
    Object? replacementSelectionEnabled = freezed,
    Object? mobileRequests = freezed,
    Object? selectionRequests = freezed,
  }) {
    return _then(_StoreSelectionPositionModel(
      positionId: positionId == freezed
          ? _value.positionId
          : positionId // ignore: cast_nullable_to_non_nullable
              as int,
      sortOrder: sortOrder == freezed
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      shr: shr == freezed
          ? _value.shr
          : shr // ignore: cast_nullable_to_non_nullable
              as int?,
      shz: shz == freezed
          ? _value.shz
          : shz // ignore: cast_nullable_to_non_nullable
              as double?,
      mobileSelectionEnabled: mobileSelectionEnabled == freezed
          ? _value.mobileSelectionEnabled
          : mobileSelectionEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      vacancySelectionEnabled: vacancySelectionEnabled == freezed
          ? _value.vacancySelectionEnabled
          : vacancySelectionEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      replacementSelectionEnabled: replacementSelectionEnabled == freezed
          ? _value.replacementSelectionEnabled
          : replacementSelectionEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      mobileRequests: mobileRequests == freezed
          ? _value.mobileRequests
          : mobileRequests // ignore: cast_nullable_to_non_nullable
              as List<StoreSelectionMobileRequestModel>?,
      selectionRequests: selectionRequests == freezed
          ? _value.selectionRequests
          : selectionRequests // ignore: cast_nullable_to_non_nullable
              as List<StoreSelectionRequestModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(DataSourceObject)
class _$_StoreSelectionPositionModel extends _StoreSelectionPositionModel {
  _$_StoreSelectionPositionModel(
      {@HiveField(0)
      @JsonKey(name: 'positionId')
          required this.positionId,
      @HiveField(1)
      @JsonKey(name: 'sortOrder')
          this.sortOrder,
      @HiveField(2)
      @JsonKey(name: 'name')
          this.name,
      @HiveField(3)
      @JsonKey(name: 'shr')
          this.shr,
      @HiveField(4)
      @JsonKey(name: 'shz')
          this.shz,
      @HiveField(5)
      @JsonKey(name: 'mobileSelectionEnabled')
          required this.mobileSelectionEnabled,
      @HiveField(6)
      @JsonKey(name: 'vacancySelectionEnabled')
          required this.vacancySelectionEnabled,
      @HiveField(7)
      @JsonKey(name: 'replacementSelectionEnabled')
          required this.replacementSelectionEnabled,
      @HiveField(8)
      @JsonKey(name: 'mobileRequests')
          this.mobileRequests,
      @HiveField(9)
      @JsonKey(name: 'selectionRequests')
          this.selectionRequests})
      : super._();

  factory _$_StoreSelectionPositionModel.fromJson(Map<String, dynamic> json) =>
      _$$_StoreSelectionPositionModelFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'positionId')
  final int positionId;
  @override
  @HiveField(1)
  @JsonKey(name: 'sortOrder')
  final int? sortOrder;
  @override
  @HiveField(2)
  @JsonKey(name: 'name')
  final String? name;
  @override
  @HiveField(3)
  @JsonKey(name: 'shr')
  final int? shr;
  @override
  @HiveField(4)
  @JsonKey(name: 'shz')
  final double? shz;
  @override
  @HiveField(5)
  @JsonKey(name: 'mobileSelectionEnabled')
  final bool mobileSelectionEnabled;
  @override
  @HiveField(6)
  @JsonKey(name: 'vacancySelectionEnabled')
  final bool vacancySelectionEnabled;
  @override
  @HiveField(7)
  @JsonKey(name: 'replacementSelectionEnabled')
  final bool replacementSelectionEnabled;
  @override
  @HiveField(8)
  @JsonKey(name: 'mobileRequests')
  final List<StoreSelectionMobileRequestModel>? mobileRequests;
  @override
  @HiveField(9)
  @JsonKey(name: 'selectionRequests')
  final List<StoreSelectionRequestModel>? selectionRequests;

  @override
  String toString() {
    return 'StoreSelectionPositionModel(positionId: $positionId, sortOrder: $sortOrder, name: $name, shr: $shr, shz: $shz, mobileSelectionEnabled: $mobileSelectionEnabled, vacancySelectionEnabled: $vacancySelectionEnabled, replacementSelectionEnabled: $replacementSelectionEnabled, mobileRequests: $mobileRequests, selectionRequests: $selectionRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoreSelectionPositionModel &&
            (identical(other.positionId, positionId) ||
                const DeepCollectionEquality()
                    .equals(other.positionId, positionId)) &&
            (identical(other.sortOrder, sortOrder) ||
                const DeepCollectionEquality()
                    .equals(other.sortOrder, sortOrder)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.shr, shr) ||
                const DeepCollectionEquality().equals(other.shr, shr)) &&
            (identical(other.shz, shz) ||
                const DeepCollectionEquality().equals(other.shz, shz)) &&
            (identical(other.mobileSelectionEnabled, mobileSelectionEnabled) ||
                const DeepCollectionEquality().equals(
                    other.mobileSelectionEnabled, mobileSelectionEnabled)) &&
            (identical(
                    other.vacancySelectionEnabled, vacancySelectionEnabled) ||
                const DeepCollectionEquality().equals(
                    other.vacancySelectionEnabled, vacancySelectionEnabled)) &&
            (identical(other.replacementSelectionEnabled,
                    replacementSelectionEnabled) ||
                const DeepCollectionEquality().equals(
                    other.replacementSelectionEnabled,
                    replacementSelectionEnabled)) &&
            (identical(other.mobileRequests, mobileRequests) ||
                const DeepCollectionEquality()
                    .equals(other.mobileRequests, mobileRequests)) &&
            (identical(other.selectionRequests, selectionRequests) ||
                const DeepCollectionEquality()
                    .equals(other.selectionRequests, selectionRequests)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(positionId) ^
      const DeepCollectionEquality().hash(sortOrder) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(shr) ^
      const DeepCollectionEquality().hash(shz) ^
      const DeepCollectionEquality().hash(mobileSelectionEnabled) ^
      const DeepCollectionEquality().hash(vacancySelectionEnabled) ^
      const DeepCollectionEquality().hash(replacementSelectionEnabled) ^
      const DeepCollectionEquality().hash(mobileRequests) ^
      const DeepCollectionEquality().hash(selectionRequests);

  @JsonKey(ignore: true)
  @override
  _$StoreSelectionPositionModelCopyWith<_StoreSelectionPositionModel>
      get copyWith => __$StoreSelectionPositionModelCopyWithImpl<
          _StoreSelectionPositionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreSelectionPositionModelToJson(this);
  }
}

abstract class _StoreSelectionPositionModel extends StoreSelectionPositionModel
    implements DataSourceObject {
  factory _StoreSelectionPositionModel(
          {@HiveField(0)
          @JsonKey(name: 'positionId')
              required int positionId,
          @HiveField(1)
          @JsonKey(name: 'sortOrder')
              int? sortOrder,
          @HiveField(2)
          @JsonKey(name: 'name')
              String? name,
          @HiveField(3)
          @JsonKey(name: 'shr')
              int? shr,
          @HiveField(4)
          @JsonKey(name: 'shz')
              double? shz,
          @HiveField(5)
          @JsonKey(name: 'mobileSelectionEnabled')
              required bool mobileSelectionEnabled,
          @HiveField(6)
          @JsonKey(name: 'vacancySelectionEnabled')
              required bool vacancySelectionEnabled,
          @HiveField(7)
          @JsonKey(name: 'replacementSelectionEnabled')
              required bool replacementSelectionEnabled,
          @HiveField(8)
          @JsonKey(name: 'mobileRequests')
              List<StoreSelectionMobileRequestModel>? mobileRequests,
          @HiveField(9)
          @JsonKey(name: 'selectionRequests')
              List<StoreSelectionRequestModel>? selectionRequests}) =
      _$_StoreSelectionPositionModel;
  _StoreSelectionPositionModel._() : super._();

  factory _StoreSelectionPositionModel.fromJson(Map<String, dynamic> json) =
      _$_StoreSelectionPositionModel.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'positionId')
  int get positionId => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  @JsonKey(name: 'sortOrder')
  int? get sortOrder => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  @JsonKey(name: 'shr')
  int? get shr => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  @JsonKey(name: 'shz')
  double? get shz => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  @JsonKey(name: 'mobileSelectionEnabled')
  bool get mobileSelectionEnabled => throw _privateConstructorUsedError;
  @override
  @HiveField(6)
  @JsonKey(name: 'vacancySelectionEnabled')
  bool get vacancySelectionEnabled => throw _privateConstructorUsedError;
  @override
  @HiveField(7)
  @JsonKey(name: 'replacementSelectionEnabled')
  bool get replacementSelectionEnabled => throw _privateConstructorUsedError;
  @override
  @HiveField(8)
  @JsonKey(name: 'mobileRequests')
  List<StoreSelectionMobileRequestModel>? get mobileRequests =>
      throw _privateConstructorUsedError;
  @override
  @HiveField(9)
  @JsonKey(name: 'selectionRequests')
  List<StoreSelectionRequestModel>? get selectionRequests =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StoreSelectionPositionModelCopyWith<_StoreSelectionPositionModel>
      get copyWith => throw _privateConstructorUsedError;
}
