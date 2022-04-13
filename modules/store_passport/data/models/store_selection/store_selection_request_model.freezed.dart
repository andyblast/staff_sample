// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_selection_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreSelectionRequestModel _$StoreSelectionRequestModelFromJson(
    Map<String, dynamic> json) {
  return _StoreSelectionRequestModel.fromJson(json);
}

/// @nodoc
class _$StoreSelectionRequestModelTearOff {
  const _$StoreSelectionRequestModelTearOff();

  _StoreSelectionRequestModel call(
      {@HiveField(0)
      @JsonKey(name: 'requestId')
          required String requestId,
      @HiveField(1)
      @JsonKey(name: 'createDt')
          String? createDt,
      @HiveField(2)
      @JsonKey(name: 'closeDt')
          String? closeDt,
      @HiveField(3)
      @JsonKey(name: 'isEnableClosing')
          required bool isEnableClosing,
      @HiveField(4)
      @JsonKey(name: 'type')
          String? type,
      @HiveField(5)
      @JsonKey(name: 'workerSchedule')
          Map<String, String>? workerSchedule,
      @HiveField(6)
      @JsonKey(name: 'separationDate')
          String? separationDate,
      @HiveField(7)
      @JsonKey(name: 'comment')
          String? comment,
      @HiveField(8)
      @JsonKey(name: 'createEmployeeName')
          String? createEmployeeName,
      @HiveField(9)
      @JsonKey(name: 'cancelEmployeeName')
          String? cancelEmployeeName}) {
    return _StoreSelectionRequestModel(
      requestId: requestId,
      createDt: createDt,
      closeDt: closeDt,
      isEnableClosing: isEnableClosing,
      type: type,
      workerSchedule: workerSchedule,
      separationDate: separationDate,
      comment: comment,
      createEmployeeName: createEmployeeName,
      cancelEmployeeName: cancelEmployeeName,
    );
  }

  StoreSelectionRequestModel fromJson(Map<String, Object> json) {
    return StoreSelectionRequestModel.fromJson(json);
  }
}

/// @nodoc
const $StoreSelectionRequestModel = _$StoreSelectionRequestModelTearOff();

/// @nodoc
mixin _$StoreSelectionRequestModel {
  @HiveField(0)
  @JsonKey(name: 'requestId')
  String get requestId => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'createDt')
  String? get createDt => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'closeDt')
  String? get closeDt => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'isEnableClosing')
  bool get isEnableClosing => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'workerSchedule')
  Map<String, String>? get workerSchedule => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'separationDate')
  String? get separationDate => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'comment')
  String? get comment => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: 'createEmployeeName')
  String? get createEmployeeName => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: 'cancelEmployeeName')
  String? get cancelEmployeeName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreSelectionRequestModelCopyWith<StoreSelectionRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreSelectionRequestModelCopyWith<$Res> {
  factory $StoreSelectionRequestModelCopyWith(StoreSelectionRequestModel value,
          $Res Function(StoreSelectionRequestModel) then) =
      _$StoreSelectionRequestModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0)
      @JsonKey(name: 'requestId')
          String requestId,
      @HiveField(1)
      @JsonKey(name: 'createDt')
          String? createDt,
      @HiveField(2)
      @JsonKey(name: 'closeDt')
          String? closeDt,
      @HiveField(3)
      @JsonKey(name: 'isEnableClosing')
          bool isEnableClosing,
      @HiveField(4)
      @JsonKey(name: 'type')
          String? type,
      @HiveField(5)
      @JsonKey(name: 'workerSchedule')
          Map<String, String>? workerSchedule,
      @HiveField(6)
      @JsonKey(name: 'separationDate')
          String? separationDate,
      @HiveField(7)
      @JsonKey(name: 'comment')
          String? comment,
      @HiveField(8)
      @JsonKey(name: 'createEmployeeName')
          String? createEmployeeName,
      @HiveField(9)
      @JsonKey(name: 'cancelEmployeeName')
          String? cancelEmployeeName});
}

/// @nodoc
class _$StoreSelectionRequestModelCopyWithImpl<$Res>
    implements $StoreSelectionRequestModelCopyWith<$Res> {
  _$StoreSelectionRequestModelCopyWithImpl(this._value, this._then);

  final StoreSelectionRequestModel _value;
  // ignore: unused_field
  final $Res Function(StoreSelectionRequestModel) _then;

  @override
  $Res call({
    Object? requestId = freezed,
    Object? createDt = freezed,
    Object? closeDt = freezed,
    Object? isEnableClosing = freezed,
    Object? type = freezed,
    Object? workerSchedule = freezed,
    Object? separationDate = freezed,
    Object? comment = freezed,
    Object? createEmployeeName = freezed,
    Object? cancelEmployeeName = freezed,
  }) {
    return _then(_value.copyWith(
      requestId: requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      createDt: createDt == freezed
          ? _value.createDt
          : createDt // ignore: cast_nullable_to_non_nullable
              as String?,
      closeDt: closeDt == freezed
          ? _value.closeDt
          : closeDt // ignore: cast_nullable_to_non_nullable
              as String?,
      isEnableClosing: isEnableClosing == freezed
          ? _value.isEnableClosing
          : isEnableClosing // ignore: cast_nullable_to_non_nullable
              as bool,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      workerSchedule: workerSchedule == freezed
          ? _value.workerSchedule
          : workerSchedule // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      separationDate: separationDate == freezed
          ? _value.separationDate
          : separationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      createEmployeeName: createEmployeeName == freezed
          ? _value.createEmployeeName
          : createEmployeeName // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelEmployeeName: cancelEmployeeName == freezed
          ? _value.cancelEmployeeName
          : cancelEmployeeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$StoreSelectionRequestModelCopyWith<$Res>
    implements $StoreSelectionRequestModelCopyWith<$Res> {
  factory _$StoreSelectionRequestModelCopyWith(
          _StoreSelectionRequestModel value,
          $Res Function(_StoreSelectionRequestModel) then) =
      __$StoreSelectionRequestModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0)
      @JsonKey(name: 'requestId')
          String requestId,
      @HiveField(1)
      @JsonKey(name: 'createDt')
          String? createDt,
      @HiveField(2)
      @JsonKey(name: 'closeDt')
          String? closeDt,
      @HiveField(3)
      @JsonKey(name: 'isEnableClosing')
          bool isEnableClosing,
      @HiveField(4)
      @JsonKey(name: 'type')
          String? type,
      @HiveField(5)
      @JsonKey(name: 'workerSchedule')
          Map<String, String>? workerSchedule,
      @HiveField(6)
      @JsonKey(name: 'separationDate')
          String? separationDate,
      @HiveField(7)
      @JsonKey(name: 'comment')
          String? comment,
      @HiveField(8)
      @JsonKey(name: 'createEmployeeName')
          String? createEmployeeName,
      @HiveField(9)
      @JsonKey(name: 'cancelEmployeeName')
          String? cancelEmployeeName});
}

/// @nodoc
class __$StoreSelectionRequestModelCopyWithImpl<$Res>
    extends _$StoreSelectionRequestModelCopyWithImpl<$Res>
    implements _$StoreSelectionRequestModelCopyWith<$Res> {
  __$StoreSelectionRequestModelCopyWithImpl(_StoreSelectionRequestModel _value,
      $Res Function(_StoreSelectionRequestModel) _then)
      : super(_value, (v) => _then(v as _StoreSelectionRequestModel));

  @override
  _StoreSelectionRequestModel get _value =>
      super._value as _StoreSelectionRequestModel;

  @override
  $Res call({
    Object? requestId = freezed,
    Object? createDt = freezed,
    Object? closeDt = freezed,
    Object? isEnableClosing = freezed,
    Object? type = freezed,
    Object? workerSchedule = freezed,
    Object? separationDate = freezed,
    Object? comment = freezed,
    Object? createEmployeeName = freezed,
    Object? cancelEmployeeName = freezed,
  }) {
    return _then(_StoreSelectionRequestModel(
      requestId: requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      createDt: createDt == freezed
          ? _value.createDt
          : createDt // ignore: cast_nullable_to_non_nullable
              as String?,
      closeDt: closeDt == freezed
          ? _value.closeDt
          : closeDt // ignore: cast_nullable_to_non_nullable
              as String?,
      isEnableClosing: isEnableClosing == freezed
          ? _value.isEnableClosing
          : isEnableClosing // ignore: cast_nullable_to_non_nullable
              as bool,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      workerSchedule: workerSchedule == freezed
          ? _value.workerSchedule
          : workerSchedule // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      separationDate: separationDate == freezed
          ? _value.separationDate
          : separationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      createEmployeeName: createEmployeeName == freezed
          ? _value.createEmployeeName
          : createEmployeeName // ignore: cast_nullable_to_non_nullable
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
class _$_StoreSelectionRequestModel extends _StoreSelectionRequestModel {
  _$_StoreSelectionRequestModel(
      {@HiveField(0)
      @JsonKey(name: 'requestId')
          required this.requestId,
      @HiveField(1)
      @JsonKey(name: 'createDt')
          this.createDt,
      @HiveField(2)
      @JsonKey(name: 'closeDt')
          this.closeDt,
      @HiveField(3)
      @JsonKey(name: 'isEnableClosing')
          required this.isEnableClosing,
      @HiveField(4)
      @JsonKey(name: 'type')
          this.type,
      @HiveField(5)
      @JsonKey(name: 'workerSchedule')
          this.workerSchedule,
      @HiveField(6)
      @JsonKey(name: 'separationDate')
          this.separationDate,
      @HiveField(7)
      @JsonKey(name: 'comment')
          this.comment,
      @HiveField(8)
      @JsonKey(name: 'createEmployeeName')
          this.createEmployeeName,
      @HiveField(9)
      @JsonKey(name: 'cancelEmployeeName')
          this.cancelEmployeeName})
      : super._();

  factory _$_StoreSelectionRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_StoreSelectionRequestModelFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'requestId')
  final String requestId;
  @override
  @HiveField(1)
  @JsonKey(name: 'createDt')
  final String? createDt;
  @override
  @HiveField(2)
  @JsonKey(name: 'closeDt')
  final String? closeDt;
  @override
  @HiveField(3)
  @JsonKey(name: 'isEnableClosing')
  final bool isEnableClosing;
  @override
  @HiveField(4)
  @JsonKey(name: 'type')
  final String? type;
  @override
  @HiveField(5)
  @JsonKey(name: 'workerSchedule')
  final Map<String, String>? workerSchedule;
  @override
  @HiveField(6)
  @JsonKey(name: 'separationDate')
  final String? separationDate;
  @override
  @HiveField(7)
  @JsonKey(name: 'comment')
  final String? comment;
  @override
  @HiveField(8)
  @JsonKey(name: 'createEmployeeName')
  final String? createEmployeeName;
  @override
  @HiveField(9)
  @JsonKey(name: 'cancelEmployeeName')
  final String? cancelEmployeeName;

  @override
  String toString() {
    return 'StoreSelectionRequestModel(requestId: $requestId, createDt: $createDt, closeDt: $closeDt, isEnableClosing: $isEnableClosing, type: $type, workerSchedule: $workerSchedule, separationDate: $separationDate, comment: $comment, createEmployeeName: $createEmployeeName, cancelEmployeeName: $cancelEmployeeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoreSelectionRequestModel &&
            (identical(other.requestId, requestId) ||
                const DeepCollectionEquality()
                    .equals(other.requestId, requestId)) &&
            (identical(other.createDt, createDt) ||
                const DeepCollectionEquality()
                    .equals(other.createDt, createDt)) &&
            (identical(other.closeDt, closeDt) ||
                const DeepCollectionEquality()
                    .equals(other.closeDt, closeDt)) &&
            (identical(other.isEnableClosing, isEnableClosing) ||
                const DeepCollectionEquality()
                    .equals(other.isEnableClosing, isEnableClosing)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.workerSchedule, workerSchedule) ||
                const DeepCollectionEquality()
                    .equals(other.workerSchedule, workerSchedule)) &&
            (identical(other.separationDate, separationDate) ||
                const DeepCollectionEquality()
                    .equals(other.separationDate, separationDate)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.createEmployeeName, createEmployeeName) ||
                const DeepCollectionEquality()
                    .equals(other.createEmployeeName, createEmployeeName)) &&
            (identical(other.cancelEmployeeName, cancelEmployeeName) ||
                const DeepCollectionEquality()
                    .equals(other.cancelEmployeeName, cancelEmployeeName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(requestId) ^
      const DeepCollectionEquality().hash(createDt) ^
      const DeepCollectionEquality().hash(closeDt) ^
      const DeepCollectionEquality().hash(isEnableClosing) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(workerSchedule) ^
      const DeepCollectionEquality().hash(separationDate) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(createEmployeeName) ^
      const DeepCollectionEquality().hash(cancelEmployeeName);

  @JsonKey(ignore: true)
  @override
  _$StoreSelectionRequestModelCopyWith<_StoreSelectionRequestModel>
      get copyWith => __$StoreSelectionRequestModelCopyWithImpl<
          _StoreSelectionRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreSelectionRequestModelToJson(this);
  }
}

abstract class _StoreSelectionRequestModel extends StoreSelectionRequestModel
    implements DataSourceObject {
  factory _StoreSelectionRequestModel(
      {@HiveField(0)
      @JsonKey(name: 'requestId')
          required String requestId,
      @HiveField(1)
      @JsonKey(name: 'createDt')
          String? createDt,
      @HiveField(2)
      @JsonKey(name: 'closeDt')
          String? closeDt,
      @HiveField(3)
      @JsonKey(name: 'isEnableClosing')
          required bool isEnableClosing,
      @HiveField(4)
      @JsonKey(name: 'type')
          String? type,
      @HiveField(5)
      @JsonKey(name: 'workerSchedule')
          Map<String, String>? workerSchedule,
      @HiveField(6)
      @JsonKey(name: 'separationDate')
          String? separationDate,
      @HiveField(7)
      @JsonKey(name: 'comment')
          String? comment,
      @HiveField(8)
      @JsonKey(name: 'createEmployeeName')
          String? createEmployeeName,
      @HiveField(9)
      @JsonKey(name: 'cancelEmployeeName')
          String? cancelEmployeeName}) = _$_StoreSelectionRequestModel;
  _StoreSelectionRequestModel._() : super._();

  factory _StoreSelectionRequestModel.fromJson(Map<String, dynamic> json) =
      _$_StoreSelectionRequestModel.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'requestId')
  String get requestId => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  @JsonKey(name: 'createDt')
  String? get createDt => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  @JsonKey(name: 'closeDt')
  String? get closeDt => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  @JsonKey(name: 'isEnableClosing')
  bool get isEnableClosing => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  @JsonKey(name: 'workerSchedule')
  Map<String, String>? get workerSchedule => throw _privateConstructorUsedError;
  @override
  @HiveField(6)
  @JsonKey(name: 'separationDate')
  String? get separationDate => throw _privateConstructorUsedError;
  @override
  @HiveField(7)
  @JsonKey(name: 'comment')
  String? get comment => throw _privateConstructorUsedError;
  @override
  @HiveField(8)
  @JsonKey(name: 'createEmployeeName')
  String? get createEmployeeName => throw _privateConstructorUsedError;
  @override
  @HiveField(9)
  @JsonKey(name: 'cancelEmployeeName')
  String? get cancelEmployeeName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StoreSelectionRequestModelCopyWith<_StoreSelectionRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}
