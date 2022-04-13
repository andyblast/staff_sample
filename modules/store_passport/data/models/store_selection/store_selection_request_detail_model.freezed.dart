// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_selection_request_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreSelectionRequestDetailModel _$StoreSelectionRequestDetailModelFromJson(
    Map<String, dynamic> json) {
  return _StoreSelectionRequestDetailModel.fromJson(json);
}

/// @nodoc
class _$StoreSelectionRequestDetailModelTearOff {
  const _$StoreSelectionRequestDetailModelTearOff();

  _StoreSelectionRequestDetailModel call(
      {@HiveField(0)
      @JsonKey(name: 'id')
          required int id,
      @HiveField(1)
      @JsonKey(name: 'startDt')
          String? startDt,
      @HiveField(2)
      @JsonKey(name: 'finishDt')
          String? finishDt,
      @HiveField(3)
      @JsonKey(name: 'closeDt')
          String? closeDt,
      @HiveField(4)
      @JsonKey(name: 'executorEmployeeTabNumber')
          String? executorEmployeeTabNumber,
      @HiveField(5)
      @JsonKey(name: 'executorEmployeeName')
          String? executorEmployeeName,
      @HiveField(6)
      @JsonKey(name: 'cancelEmployeeName')
          String? cancelEmployeeName}) {
    return _StoreSelectionRequestDetailModel(
      id: id,
      startDt: startDt,
      finishDt: finishDt,
      closeDt: closeDt,
      executorEmployeeTabNumber: executorEmployeeTabNumber,
      executorEmployeeName: executorEmployeeName,
      cancelEmployeeName: cancelEmployeeName,
    );
  }

  StoreSelectionRequestDetailModel fromJson(Map<String, Object> json) {
    return StoreSelectionRequestDetailModel.fromJson(json);
  }
}

/// @nodoc
const $StoreSelectionRequestDetailModel =
    _$StoreSelectionRequestDetailModelTearOff();

/// @nodoc
mixin _$StoreSelectionRequestDetailModel {
  @HiveField(0)
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'startDt')
  String? get startDt => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'finishDt')
  String? get finishDt => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'closeDt')
  String? get closeDt => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'executorEmployeeTabNumber')
  String? get executorEmployeeTabNumber => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'executorEmployeeName')
  String? get executorEmployeeName => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'cancelEmployeeName')
  String? get cancelEmployeeName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreSelectionRequestDetailModelCopyWith<StoreSelectionRequestDetailModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreSelectionRequestDetailModelCopyWith<$Res> {
  factory $StoreSelectionRequestDetailModelCopyWith(
          StoreSelectionRequestDetailModel value,
          $Res Function(StoreSelectionRequestDetailModel) then) =
      _$StoreSelectionRequestDetailModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0)
      @JsonKey(name: 'id')
          int id,
      @HiveField(1)
      @JsonKey(name: 'startDt')
          String? startDt,
      @HiveField(2)
      @JsonKey(name: 'finishDt')
          String? finishDt,
      @HiveField(3)
      @JsonKey(name: 'closeDt')
          String? closeDt,
      @HiveField(4)
      @JsonKey(name: 'executorEmployeeTabNumber')
          String? executorEmployeeTabNumber,
      @HiveField(5)
      @JsonKey(name: 'executorEmployeeName')
          String? executorEmployeeName,
      @HiveField(6)
      @JsonKey(name: 'cancelEmployeeName')
          String? cancelEmployeeName});
}

/// @nodoc
class _$StoreSelectionRequestDetailModelCopyWithImpl<$Res>
    implements $StoreSelectionRequestDetailModelCopyWith<$Res> {
  _$StoreSelectionRequestDetailModelCopyWithImpl(this._value, this._then);

  final StoreSelectionRequestDetailModel _value;
  // ignore: unused_field
  final $Res Function(StoreSelectionRequestDetailModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDt = freezed,
    Object? finishDt = freezed,
    Object? closeDt = freezed,
    Object? executorEmployeeTabNumber = freezed,
    Object? executorEmployeeName = freezed,
    Object? cancelEmployeeName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startDt: startDt == freezed
          ? _value.startDt
          : startDt // ignore: cast_nullable_to_non_nullable
              as String?,
      finishDt: finishDt == freezed
          ? _value.finishDt
          : finishDt // ignore: cast_nullable_to_non_nullable
              as String?,
      closeDt: closeDt == freezed
          ? _value.closeDt
          : closeDt // ignore: cast_nullable_to_non_nullable
              as String?,
      executorEmployeeTabNumber: executorEmployeeTabNumber == freezed
          ? _value.executorEmployeeTabNumber
          : executorEmployeeTabNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      executorEmployeeName: executorEmployeeName == freezed
          ? _value.executorEmployeeName
          : executorEmployeeName // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelEmployeeName: cancelEmployeeName == freezed
          ? _value.cancelEmployeeName
          : cancelEmployeeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$StoreSelectionRequestDetailModelCopyWith<$Res>
    implements $StoreSelectionRequestDetailModelCopyWith<$Res> {
  factory _$StoreSelectionRequestDetailModelCopyWith(
          _StoreSelectionRequestDetailModel value,
          $Res Function(_StoreSelectionRequestDetailModel) then) =
      __$StoreSelectionRequestDetailModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0)
      @JsonKey(name: 'id')
          int id,
      @HiveField(1)
      @JsonKey(name: 'startDt')
          String? startDt,
      @HiveField(2)
      @JsonKey(name: 'finishDt')
          String? finishDt,
      @HiveField(3)
      @JsonKey(name: 'closeDt')
          String? closeDt,
      @HiveField(4)
      @JsonKey(name: 'executorEmployeeTabNumber')
          String? executorEmployeeTabNumber,
      @HiveField(5)
      @JsonKey(name: 'executorEmployeeName')
          String? executorEmployeeName,
      @HiveField(6)
      @JsonKey(name: 'cancelEmployeeName')
          String? cancelEmployeeName});
}

/// @nodoc
class __$StoreSelectionRequestDetailModelCopyWithImpl<$Res>
    extends _$StoreSelectionRequestDetailModelCopyWithImpl<$Res>
    implements _$StoreSelectionRequestDetailModelCopyWith<$Res> {
  __$StoreSelectionRequestDetailModelCopyWithImpl(
      _StoreSelectionRequestDetailModel _value,
      $Res Function(_StoreSelectionRequestDetailModel) _then)
      : super(_value, (v) => _then(v as _StoreSelectionRequestDetailModel));

  @override
  _StoreSelectionRequestDetailModel get _value =>
      super._value as _StoreSelectionRequestDetailModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDt = freezed,
    Object? finishDt = freezed,
    Object? closeDt = freezed,
    Object? executorEmployeeTabNumber = freezed,
    Object? executorEmployeeName = freezed,
    Object? cancelEmployeeName = freezed,
  }) {
    return _then(_StoreSelectionRequestDetailModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startDt: startDt == freezed
          ? _value.startDt
          : startDt // ignore: cast_nullable_to_non_nullable
              as String?,
      finishDt: finishDt == freezed
          ? _value.finishDt
          : finishDt // ignore: cast_nullable_to_non_nullable
              as String?,
      closeDt: closeDt == freezed
          ? _value.closeDt
          : closeDt // ignore: cast_nullable_to_non_nullable
              as String?,
      executorEmployeeTabNumber: executorEmployeeTabNumber == freezed
          ? _value.executorEmployeeTabNumber
          : executorEmployeeTabNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      executorEmployeeName: executorEmployeeName == freezed
          ? _value.executorEmployeeName
          : executorEmployeeName // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelEmployeeName: cancelEmployeeName == freezed
          ? _value.cancelEmployeeName
          : cancelEmployeeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(DataSourceObject)
class _$_StoreSelectionRequestDetailModel
    extends _StoreSelectionRequestDetailModel {
  _$_StoreSelectionRequestDetailModel(
      {@HiveField(0)
      @JsonKey(name: 'id')
          required this.id,
      @HiveField(1)
      @JsonKey(name: 'startDt')
          this.startDt,
      @HiveField(2)
      @JsonKey(name: 'finishDt')
          this.finishDt,
      @HiveField(3)
      @JsonKey(name: 'closeDt')
          this.closeDt,
      @HiveField(4)
      @JsonKey(name: 'executorEmployeeTabNumber')
          this.executorEmployeeTabNumber,
      @HiveField(5)
      @JsonKey(name: 'executorEmployeeName')
          this.executorEmployeeName,
      @HiveField(6)
      @JsonKey(name: 'cancelEmployeeName')
          this.cancelEmployeeName})
      : super._();

  factory _$_StoreSelectionRequestDetailModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_StoreSelectionRequestDetailModelFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'id')
  final int id;
  @override
  @HiveField(1)
  @JsonKey(name: 'startDt')
  final String? startDt;
  @override
  @HiveField(2)
  @JsonKey(name: 'finishDt')
  final String? finishDt;
  @override
  @HiveField(3)
  @JsonKey(name: 'closeDt')
  final String? closeDt;
  @override
  @HiveField(4)
  @JsonKey(name: 'executorEmployeeTabNumber')
  final String? executorEmployeeTabNumber;
  @override
  @HiveField(5)
  @JsonKey(name: 'executorEmployeeName')
  final String? executorEmployeeName;
  @override
  @HiveField(6)
  @JsonKey(name: 'cancelEmployeeName')
  final String? cancelEmployeeName;

  @override
  String toString() {
    return 'StoreSelectionRequestDetailModel(id: $id, startDt: $startDt, finishDt: $finishDt, closeDt: $closeDt, executorEmployeeTabNumber: $executorEmployeeTabNumber, executorEmployeeName: $executorEmployeeName, cancelEmployeeName: $cancelEmployeeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoreSelectionRequestDetailModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.startDt, startDt) ||
                const DeepCollectionEquality()
                    .equals(other.startDt, startDt)) &&
            (identical(other.finishDt, finishDt) ||
                const DeepCollectionEquality()
                    .equals(other.finishDt, finishDt)) &&
            (identical(other.closeDt, closeDt) ||
                const DeepCollectionEquality()
                    .equals(other.closeDt, closeDt)) &&
            (identical(other.executorEmployeeTabNumber,
                    executorEmployeeTabNumber) ||
                const DeepCollectionEquality().equals(
                    other.executorEmployeeTabNumber,
                    executorEmployeeTabNumber)) &&
            (identical(other.executorEmployeeName, executorEmployeeName) ||
                const DeepCollectionEquality().equals(
                    other.executorEmployeeName, executorEmployeeName)) &&
            (identical(other.cancelEmployeeName, cancelEmployeeName) ||
                const DeepCollectionEquality()
                    .equals(other.cancelEmployeeName, cancelEmployeeName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(startDt) ^
      const DeepCollectionEquality().hash(finishDt) ^
      const DeepCollectionEquality().hash(closeDt) ^
      const DeepCollectionEquality().hash(executorEmployeeTabNumber) ^
      const DeepCollectionEquality().hash(executorEmployeeName) ^
      const DeepCollectionEquality().hash(cancelEmployeeName);

  @JsonKey(ignore: true)
  @override
  _$StoreSelectionRequestDetailModelCopyWith<_StoreSelectionRequestDetailModel>
      get copyWith => __$StoreSelectionRequestDetailModelCopyWithImpl<
          _StoreSelectionRequestDetailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreSelectionRequestDetailModelToJson(this);
  }
}

abstract class _StoreSelectionRequestDetailModel
    extends StoreSelectionRequestDetailModel implements DataSourceObject {
  factory _StoreSelectionRequestDetailModel(
      {@HiveField(0)
      @JsonKey(name: 'id')
          required int id,
      @HiveField(1)
      @JsonKey(name: 'startDt')
          String? startDt,
      @HiveField(2)
      @JsonKey(name: 'finishDt')
          String? finishDt,
      @HiveField(3)
      @JsonKey(name: 'closeDt')
          String? closeDt,
      @HiveField(4)
      @JsonKey(name: 'executorEmployeeTabNumber')
          String? executorEmployeeTabNumber,
      @HiveField(5)
      @JsonKey(name: 'executorEmployeeName')
          String? executorEmployeeName,
      @HiveField(6)
      @JsonKey(name: 'cancelEmployeeName')
          String? cancelEmployeeName}) = _$_StoreSelectionRequestDetailModel;
  _StoreSelectionRequestDetailModel._() : super._();

  factory _StoreSelectionRequestDetailModel.fromJson(
      Map<String, dynamic> json) = _$_StoreSelectionRequestDetailModel.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  @JsonKey(name: 'startDt')
  String? get startDt => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  @JsonKey(name: 'finishDt')
  String? get finishDt => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  @JsonKey(name: 'closeDt')
  String? get closeDt => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  @JsonKey(name: 'executorEmployeeTabNumber')
  String? get executorEmployeeTabNumber => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  @JsonKey(name: 'executorEmployeeName')
  String? get executorEmployeeName => throw _privateConstructorUsedError;
  @override
  @HiveField(6)
  @JsonKey(name: 'cancelEmployeeName')
  String? get cancelEmployeeName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StoreSelectionRequestDetailModelCopyWith<_StoreSelectionRequestDetailModel>
      get copyWith => throw _privateConstructorUsedError;
}
