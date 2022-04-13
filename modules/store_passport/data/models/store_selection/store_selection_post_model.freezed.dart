// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_selection_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreSelectionPostModel _$StoreSelectionPostModelFromJson(
    Map<String, dynamic> json) {
  return _StoreSelectionPostModel.fromJson(json);
}

/// @nodoc
class _$StoreSelectionPostModelTearOff {
  const _$StoreSelectionPostModelTearOff();

  _StoreSelectionPostModel call(
      {@HiveField(0) @JsonKey(name: 'positionId') required int positionId,
      @HiveField(1) @JsonKey(name: 'type') required String type,
      @HiveField(2) @JsonKey(name: 'comment') String? comment,
      @HiveField(3) @JsonKey(name: 'workerScheduleId') String? workerScheduleId,
      @HiveField(4) @JsonKey(name: 'separationDate') String? separationDate,
      @HiveField(5) @JsonKey(name: 'mobileWorkStart') String? mobileWorkStart,
      @HiveField(6) @JsonKey(name: 'mobileWorkEnd') String? mobileWorkEnd}) {
    return _StoreSelectionPostModel(
      positionId: positionId,
      type: type,
      comment: comment,
      workerScheduleId: workerScheduleId,
      separationDate: separationDate,
      mobileWorkStart: mobileWorkStart,
      mobileWorkEnd: mobileWorkEnd,
    );
  }

  StoreSelectionPostModel fromJson(Map<String, Object> json) {
    return StoreSelectionPostModel.fromJson(json);
  }
}

/// @nodoc
const $StoreSelectionPostModel = _$StoreSelectionPostModelTearOff();

/// @nodoc
mixin _$StoreSelectionPostModel {
  @HiveField(0)
  @JsonKey(name: 'positionId')
  int get positionId => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'comment')
  String? get comment => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'workerScheduleId')
  String? get workerScheduleId => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'separationDate')
  String? get separationDate => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'mobileWorkStart')
  String? get mobileWorkStart => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'mobileWorkEnd')
  String? get mobileWorkEnd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreSelectionPostModelCopyWith<StoreSelectionPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreSelectionPostModelCopyWith<$Res> {
  factory $StoreSelectionPostModelCopyWith(StoreSelectionPostModel value,
          $Res Function(StoreSelectionPostModel) then) =
      _$StoreSelectionPostModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) @JsonKey(name: 'positionId') int positionId,
      @HiveField(1) @JsonKey(name: 'type') String type,
      @HiveField(2) @JsonKey(name: 'comment') String? comment,
      @HiveField(3) @JsonKey(name: 'workerScheduleId') String? workerScheduleId,
      @HiveField(4) @JsonKey(name: 'separationDate') String? separationDate,
      @HiveField(5) @JsonKey(name: 'mobileWorkStart') String? mobileWorkStart,
      @HiveField(6) @JsonKey(name: 'mobileWorkEnd') String? mobileWorkEnd});
}

/// @nodoc
class _$StoreSelectionPostModelCopyWithImpl<$Res>
    implements $StoreSelectionPostModelCopyWith<$Res> {
  _$StoreSelectionPostModelCopyWithImpl(this._value, this._then);

  final StoreSelectionPostModel _value;
  // ignore: unused_field
  final $Res Function(StoreSelectionPostModel) _then;

  @override
  $Res call({
    Object? positionId = freezed,
    Object? type = freezed,
    Object? comment = freezed,
    Object? workerScheduleId = freezed,
    Object? separationDate = freezed,
    Object? mobileWorkStart = freezed,
    Object? mobileWorkEnd = freezed,
  }) {
    return _then(_value.copyWith(
      positionId: positionId == freezed
          ? _value.positionId
          : positionId // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      workerScheduleId: workerScheduleId == freezed
          ? _value.workerScheduleId
          : workerScheduleId // ignore: cast_nullable_to_non_nullable
              as String?,
      separationDate: separationDate == freezed
          ? _value.separationDate
          : separationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileWorkStart: mobileWorkStart == freezed
          ? _value.mobileWorkStart
          : mobileWorkStart // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileWorkEnd: mobileWorkEnd == freezed
          ? _value.mobileWorkEnd
          : mobileWorkEnd // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$StoreSelectionPostModelCopyWith<$Res>
    implements $StoreSelectionPostModelCopyWith<$Res> {
  factory _$StoreSelectionPostModelCopyWith(_StoreSelectionPostModel value,
          $Res Function(_StoreSelectionPostModel) then) =
      __$StoreSelectionPostModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) @JsonKey(name: 'positionId') int positionId,
      @HiveField(1) @JsonKey(name: 'type') String type,
      @HiveField(2) @JsonKey(name: 'comment') String? comment,
      @HiveField(3) @JsonKey(name: 'workerScheduleId') String? workerScheduleId,
      @HiveField(4) @JsonKey(name: 'separationDate') String? separationDate,
      @HiveField(5) @JsonKey(name: 'mobileWorkStart') String? mobileWorkStart,
      @HiveField(6) @JsonKey(name: 'mobileWorkEnd') String? mobileWorkEnd});
}

/// @nodoc
class __$StoreSelectionPostModelCopyWithImpl<$Res>
    extends _$StoreSelectionPostModelCopyWithImpl<$Res>
    implements _$StoreSelectionPostModelCopyWith<$Res> {
  __$StoreSelectionPostModelCopyWithImpl(_StoreSelectionPostModel _value,
      $Res Function(_StoreSelectionPostModel) _then)
      : super(_value, (v) => _then(v as _StoreSelectionPostModel));

  @override
  _StoreSelectionPostModel get _value =>
      super._value as _StoreSelectionPostModel;

  @override
  $Res call({
    Object? positionId = freezed,
    Object? type = freezed,
    Object? comment = freezed,
    Object? workerScheduleId = freezed,
    Object? separationDate = freezed,
    Object? mobileWorkStart = freezed,
    Object? mobileWorkEnd = freezed,
  }) {
    return _then(_StoreSelectionPostModel(
      positionId: positionId == freezed
          ? _value.positionId
          : positionId // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      workerScheduleId: workerScheduleId == freezed
          ? _value.workerScheduleId
          : workerScheduleId // ignore: cast_nullable_to_non_nullable
              as String?,
      separationDate: separationDate == freezed
          ? _value.separationDate
          : separationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileWorkStart: mobileWorkStart == freezed
          ? _value.mobileWorkStart
          : mobileWorkStart // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileWorkEnd: mobileWorkEnd == freezed
          ? _value.mobileWorkEnd
          : mobileWorkEnd // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(DataSourceObject)
class _$_StoreSelectionPostModel extends _StoreSelectionPostModel {
  _$_StoreSelectionPostModel(
      {@HiveField(0) @JsonKey(name: 'positionId') required this.positionId,
      @HiveField(1) @JsonKey(name: 'type') required this.type,
      @HiveField(2) @JsonKey(name: 'comment') this.comment,
      @HiveField(3) @JsonKey(name: 'workerScheduleId') this.workerScheduleId,
      @HiveField(4) @JsonKey(name: 'separationDate') this.separationDate,
      @HiveField(5) @JsonKey(name: 'mobileWorkStart') this.mobileWorkStart,
      @HiveField(6) @JsonKey(name: 'mobileWorkEnd') this.mobileWorkEnd})
      : super._();

  factory _$_StoreSelectionPostModel.fromJson(Map<String, dynamic> json) =>
      _$$_StoreSelectionPostModelFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'positionId')
  final int positionId;
  @override
  @HiveField(1)
  @JsonKey(name: 'type')
  final String type;
  @override
  @HiveField(2)
  @JsonKey(name: 'comment')
  final String? comment;
  @override
  @HiveField(3)
  @JsonKey(name: 'workerScheduleId')
  final String? workerScheduleId;
  @override
  @HiveField(4)
  @JsonKey(name: 'separationDate')
  final String? separationDate;
  @override
  @HiveField(5)
  @JsonKey(name: 'mobileWorkStart')
  final String? mobileWorkStart;
  @override
  @HiveField(6)
  @JsonKey(name: 'mobileWorkEnd')
  final String? mobileWorkEnd;

  @override
  String toString() {
    return 'StoreSelectionPostModel(positionId: $positionId, type: $type, comment: $comment, workerScheduleId: $workerScheduleId, separationDate: $separationDate, mobileWorkStart: $mobileWorkStart, mobileWorkEnd: $mobileWorkEnd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoreSelectionPostModel &&
            (identical(other.positionId, positionId) ||
                const DeepCollectionEquality()
                    .equals(other.positionId, positionId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.workerScheduleId, workerScheduleId) ||
                const DeepCollectionEquality()
                    .equals(other.workerScheduleId, workerScheduleId)) &&
            (identical(other.separationDate, separationDate) ||
                const DeepCollectionEquality()
                    .equals(other.separationDate, separationDate)) &&
            (identical(other.mobileWorkStart, mobileWorkStart) ||
                const DeepCollectionEquality()
                    .equals(other.mobileWorkStart, mobileWorkStart)) &&
            (identical(other.mobileWorkEnd, mobileWorkEnd) ||
                const DeepCollectionEquality()
                    .equals(other.mobileWorkEnd, mobileWorkEnd)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(positionId) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(workerScheduleId) ^
      const DeepCollectionEquality().hash(separationDate) ^
      const DeepCollectionEquality().hash(mobileWorkStart) ^
      const DeepCollectionEquality().hash(mobileWorkEnd);

  @JsonKey(ignore: true)
  @override
  _$StoreSelectionPostModelCopyWith<_StoreSelectionPostModel> get copyWith =>
      __$StoreSelectionPostModelCopyWithImpl<_StoreSelectionPostModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreSelectionPostModelToJson(this);
  }
}

abstract class _StoreSelectionPostModel extends StoreSelectionPostModel
    implements DataSourceObject {
  factory _StoreSelectionPostModel(
      {@HiveField(0)
      @JsonKey(name: 'positionId')
          required int positionId,
      @HiveField(1)
      @JsonKey(name: 'type')
          required String type,
      @HiveField(2)
      @JsonKey(name: 'comment')
          String? comment,
      @HiveField(3)
      @JsonKey(name: 'workerScheduleId')
          String? workerScheduleId,
      @HiveField(4)
      @JsonKey(name: 'separationDate')
          String? separationDate,
      @HiveField(5)
      @JsonKey(name: 'mobileWorkStart')
          String? mobileWorkStart,
      @HiveField(6)
      @JsonKey(name: 'mobileWorkEnd')
          String? mobileWorkEnd}) = _$_StoreSelectionPostModel;
  _StoreSelectionPostModel._() : super._();

  factory _StoreSelectionPostModel.fromJson(Map<String, dynamic> json) =
      _$_StoreSelectionPostModel.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'positionId')
  int get positionId => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  @JsonKey(name: 'comment')
  String? get comment => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  @JsonKey(name: 'workerScheduleId')
  String? get workerScheduleId => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  @JsonKey(name: 'separationDate')
  String? get separationDate => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  @JsonKey(name: 'mobileWorkStart')
  String? get mobileWorkStart => throw _privateConstructorUsedError;
  @override
  @HiveField(6)
  @JsonKey(name: 'mobileWorkEnd')
  String? get mobileWorkEnd => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StoreSelectionPostModelCopyWith<_StoreSelectionPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}
