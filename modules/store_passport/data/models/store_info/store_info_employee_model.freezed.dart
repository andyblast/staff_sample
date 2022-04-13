// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_info_employee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreInfoEmployeeModel _$StoreInfoEmployeeModelFromJson(
    Map<String, dynamic> json) {
  return _StoreInfoEmployeeModel.fromJson(json);
}

/// @nodoc
class _$StoreInfoEmployeeModelTearOff {
  const _$StoreInfoEmployeeModelTearOff();

  _StoreInfoEmployeeModel call(
      {@HiveField(0)
      @JsonKey(name: 'employeeId')
          required int employeeId,
      @HiveField(1)
      @JsonKey(name: 'employeeFullName')
          String? employeeFullName = '',
      @HiveField(2)
      @JsonKey(name: 'employeePhone')
          String? employeePhone = '',
      @HiveField(3)
      @JsonKey(name: 'employeeEmail')
          String? employeeEmail = '',
      @HiveField(4)
      @JsonKey(name: 'positionGroupName')
          String? positionGroupName = ''}) {
    return _StoreInfoEmployeeModel(
      employeeId: employeeId,
      employeeFullName: employeeFullName,
      employeePhone: employeePhone,
      employeeEmail: employeeEmail,
      positionGroupName: positionGroupName,
    );
  }

  StoreInfoEmployeeModel fromJson(Map<String, Object> json) {
    return StoreInfoEmployeeModel.fromJson(json);
  }
}

/// @nodoc
const $StoreInfoEmployeeModel = _$StoreInfoEmployeeModelTearOff();

/// @nodoc
mixin _$StoreInfoEmployeeModel {
  @HiveField(0)
  @JsonKey(name: 'employeeId')
  int get employeeId => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'employeeFullName')
  String? get employeeFullName => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'employeePhone')
  String? get employeePhone => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'employeeEmail')
  String? get employeeEmail => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'positionGroupName')
  String? get positionGroupName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreInfoEmployeeModelCopyWith<StoreInfoEmployeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreInfoEmployeeModelCopyWith<$Res> {
  factory $StoreInfoEmployeeModelCopyWith(StoreInfoEmployeeModel value,
          $Res Function(StoreInfoEmployeeModel) then) =
      _$StoreInfoEmployeeModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0)
      @JsonKey(name: 'employeeId')
          int employeeId,
      @HiveField(1)
      @JsonKey(name: 'employeeFullName')
          String? employeeFullName,
      @HiveField(2)
      @JsonKey(name: 'employeePhone')
          String? employeePhone,
      @HiveField(3)
      @JsonKey(name: 'employeeEmail')
          String? employeeEmail,
      @HiveField(4)
      @JsonKey(name: 'positionGroupName')
          String? positionGroupName});
}

/// @nodoc
class _$StoreInfoEmployeeModelCopyWithImpl<$Res>
    implements $StoreInfoEmployeeModelCopyWith<$Res> {
  _$StoreInfoEmployeeModelCopyWithImpl(this._value, this._then);

  final StoreInfoEmployeeModel _value;
  // ignore: unused_field
  final $Res Function(StoreInfoEmployeeModel) _then;

  @override
  $Res call({
    Object? employeeId = freezed,
    Object? employeeFullName = freezed,
    Object? employeePhone = freezed,
    Object? employeeEmail = freezed,
    Object? positionGroupName = freezed,
  }) {
    return _then(_value.copyWith(
      employeeId: employeeId == freezed
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int,
      employeeFullName: employeeFullName == freezed
          ? _value.employeeFullName
          : employeeFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      employeePhone: employeePhone == freezed
          ? _value.employeePhone
          : employeePhone // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeEmail: employeeEmail == freezed
          ? _value.employeeEmail
          : employeeEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      positionGroupName: positionGroupName == freezed
          ? _value.positionGroupName
          : positionGroupName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$StoreInfoEmployeeModelCopyWith<$Res>
    implements $StoreInfoEmployeeModelCopyWith<$Res> {
  factory _$StoreInfoEmployeeModelCopyWith(_StoreInfoEmployeeModel value,
          $Res Function(_StoreInfoEmployeeModel) then) =
      __$StoreInfoEmployeeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0)
      @JsonKey(name: 'employeeId')
          int employeeId,
      @HiveField(1)
      @JsonKey(name: 'employeeFullName')
          String? employeeFullName,
      @HiveField(2)
      @JsonKey(name: 'employeePhone')
          String? employeePhone,
      @HiveField(3)
      @JsonKey(name: 'employeeEmail')
          String? employeeEmail,
      @HiveField(4)
      @JsonKey(name: 'positionGroupName')
          String? positionGroupName});
}

/// @nodoc
class __$StoreInfoEmployeeModelCopyWithImpl<$Res>
    extends _$StoreInfoEmployeeModelCopyWithImpl<$Res>
    implements _$StoreInfoEmployeeModelCopyWith<$Res> {
  __$StoreInfoEmployeeModelCopyWithImpl(_StoreInfoEmployeeModel _value,
      $Res Function(_StoreInfoEmployeeModel) _then)
      : super(_value, (v) => _then(v as _StoreInfoEmployeeModel));

  @override
  _StoreInfoEmployeeModel get _value => super._value as _StoreInfoEmployeeModel;

  @override
  $Res call({
    Object? employeeId = freezed,
    Object? employeeFullName = freezed,
    Object? employeePhone = freezed,
    Object? employeeEmail = freezed,
    Object? positionGroupName = freezed,
  }) {
    return _then(_StoreInfoEmployeeModel(
      employeeId: employeeId == freezed
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int,
      employeeFullName: employeeFullName == freezed
          ? _value.employeeFullName
          : employeeFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      employeePhone: employeePhone == freezed
          ? _value.employeePhone
          : employeePhone // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeEmail: employeeEmail == freezed
          ? _value.employeeEmail
          : employeeEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      positionGroupName: positionGroupName == freezed
          ? _value.positionGroupName
          : positionGroupName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(DataSourceObject)
class _$_StoreInfoEmployeeModel extends _StoreInfoEmployeeModel {
  _$_StoreInfoEmployeeModel(
      {@HiveField(0)
      @JsonKey(name: 'employeeId')
          required this.employeeId,
      @HiveField(1)
      @JsonKey(name: 'employeeFullName')
          this.employeeFullName = '',
      @HiveField(2)
      @JsonKey(name: 'employeePhone')
          this.employeePhone = '',
      @HiveField(3)
      @JsonKey(name: 'employeeEmail')
          this.employeeEmail = '',
      @HiveField(4)
      @JsonKey(name: 'positionGroupName')
          this.positionGroupName = ''})
      : super._();

  factory _$_StoreInfoEmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$$_StoreInfoEmployeeModelFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'employeeId')
  final int employeeId;
  @override
  @HiveField(1)
  @JsonKey(name: 'employeeFullName')
  final String? employeeFullName;
  @override
  @HiveField(2)
  @JsonKey(name: 'employeePhone')
  final String? employeePhone;
  @override
  @HiveField(3)
  @JsonKey(name: 'employeeEmail')
  final String? employeeEmail;
  @override
  @HiveField(4)
  @JsonKey(name: 'positionGroupName')
  final String? positionGroupName;

  @override
  String toString() {
    return 'StoreInfoEmployeeModel(employeeId: $employeeId, employeeFullName: $employeeFullName, employeePhone: $employeePhone, employeeEmail: $employeeEmail, positionGroupName: $positionGroupName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoreInfoEmployeeModel &&
            (identical(other.employeeId, employeeId) ||
                const DeepCollectionEquality()
                    .equals(other.employeeId, employeeId)) &&
            (identical(other.employeeFullName, employeeFullName) ||
                const DeepCollectionEquality()
                    .equals(other.employeeFullName, employeeFullName)) &&
            (identical(other.employeePhone, employeePhone) ||
                const DeepCollectionEquality()
                    .equals(other.employeePhone, employeePhone)) &&
            (identical(other.employeeEmail, employeeEmail) ||
                const DeepCollectionEquality()
                    .equals(other.employeeEmail, employeeEmail)) &&
            (identical(other.positionGroupName, positionGroupName) ||
                const DeepCollectionEquality()
                    .equals(other.positionGroupName, positionGroupName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(employeeId) ^
      const DeepCollectionEquality().hash(employeeFullName) ^
      const DeepCollectionEquality().hash(employeePhone) ^
      const DeepCollectionEquality().hash(employeeEmail) ^
      const DeepCollectionEquality().hash(positionGroupName);

  @JsonKey(ignore: true)
  @override
  _$StoreInfoEmployeeModelCopyWith<_StoreInfoEmployeeModel> get copyWith =>
      __$StoreInfoEmployeeModelCopyWithImpl<_StoreInfoEmployeeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreInfoEmployeeModelToJson(this);
  }
}

abstract class _StoreInfoEmployeeModel extends StoreInfoEmployeeModel
    implements DataSourceObject {
  factory _StoreInfoEmployeeModel(
      {@HiveField(0)
      @JsonKey(name: 'employeeId')
          required int employeeId,
      @HiveField(1)
      @JsonKey(name: 'employeeFullName')
          String? employeeFullName,
      @HiveField(2)
      @JsonKey(name: 'employeePhone')
          String? employeePhone,
      @HiveField(3)
      @JsonKey(name: 'employeeEmail')
          String? employeeEmail,
      @HiveField(4)
      @JsonKey(name: 'positionGroupName')
          String? positionGroupName}) = _$_StoreInfoEmployeeModel;
  _StoreInfoEmployeeModel._() : super._();

  factory _StoreInfoEmployeeModel.fromJson(Map<String, dynamic> json) =
      _$_StoreInfoEmployeeModel.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'employeeId')
  int get employeeId => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  @JsonKey(name: 'employeeFullName')
  String? get employeeFullName => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  @JsonKey(name: 'employeePhone')
  String? get employeePhone => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  @JsonKey(name: 'employeeEmail')
  String? get employeeEmail => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  @JsonKey(name: 'positionGroupName')
  String? get positionGroupName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StoreInfoEmployeeModelCopyWith<_StoreInfoEmployeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
