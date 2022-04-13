// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_selection_worker_schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreSelectionWorkerSchedule _$StoreSelectionWorkerScheduleFromJson(
    Map<String, dynamic> json) {
  return _StoreSekectionWorkerSchedule.fromJson(json);
}

/// @nodoc
class _$StoreSelectionWorkerScheduleTearOff {
  const _$StoreSelectionWorkerScheduleTearOff();

  _StoreSekectionWorkerSchedule call(
      {@HiveField(0) @JsonKey(name: 'scheduleId') required String scheduleId,
      @HiveField(1) @JsonKey(name: 'name') String? name,
      @HiveField(2) @JsonKey(name: 'description') String? description}) {
    return _StoreSekectionWorkerSchedule(
      scheduleId: scheduleId,
      name: name,
      description: description,
    );
  }

  StoreSelectionWorkerSchedule fromJson(Map<String, Object> json) {
    return StoreSelectionWorkerSchedule.fromJson(json);
  }
}

/// @nodoc
const $StoreSelectionWorkerSchedule = _$StoreSelectionWorkerScheduleTearOff();

/// @nodoc
mixin _$StoreSelectionWorkerSchedule {
  @HiveField(0)
  @JsonKey(name: 'scheduleId')
  String get scheduleId => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreSelectionWorkerScheduleCopyWith<StoreSelectionWorkerSchedule>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreSelectionWorkerScheduleCopyWith<$Res> {
  factory $StoreSelectionWorkerScheduleCopyWith(
          StoreSelectionWorkerSchedule value,
          $Res Function(StoreSelectionWorkerSchedule) then) =
      _$StoreSelectionWorkerScheduleCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) @JsonKey(name: 'scheduleId') String scheduleId,
      @HiveField(1) @JsonKey(name: 'name') String? name,
      @HiveField(2) @JsonKey(name: 'description') String? description});
}

/// @nodoc
class _$StoreSelectionWorkerScheduleCopyWithImpl<$Res>
    implements $StoreSelectionWorkerScheduleCopyWith<$Res> {
  _$StoreSelectionWorkerScheduleCopyWithImpl(this._value, this._then);

  final StoreSelectionWorkerSchedule _value;
  // ignore: unused_field
  final $Res Function(StoreSelectionWorkerSchedule) _then;

  @override
  $Res call({
    Object? scheduleId = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      scheduleId: scheduleId == freezed
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$StoreSekectionWorkerScheduleCopyWith<$Res>
    implements $StoreSelectionWorkerScheduleCopyWith<$Res> {
  factory _$StoreSekectionWorkerScheduleCopyWith(
          _StoreSekectionWorkerSchedule value,
          $Res Function(_StoreSekectionWorkerSchedule) then) =
      __$StoreSekectionWorkerScheduleCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) @JsonKey(name: 'scheduleId') String scheduleId,
      @HiveField(1) @JsonKey(name: 'name') String? name,
      @HiveField(2) @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$StoreSekectionWorkerScheduleCopyWithImpl<$Res>
    extends _$StoreSelectionWorkerScheduleCopyWithImpl<$Res>
    implements _$StoreSekectionWorkerScheduleCopyWith<$Res> {
  __$StoreSekectionWorkerScheduleCopyWithImpl(
      _StoreSekectionWorkerSchedule _value,
      $Res Function(_StoreSekectionWorkerSchedule) _then)
      : super(_value, (v) => _then(v as _StoreSekectionWorkerSchedule));

  @override
  _StoreSekectionWorkerSchedule get _value =>
      super._value as _StoreSekectionWorkerSchedule;

  @override
  $Res call({
    Object? scheduleId = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_StoreSekectionWorkerSchedule(
      scheduleId: scheduleId == freezed
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(DataSourceObject)
class _$_StoreSekectionWorkerSchedule extends _StoreSekectionWorkerSchedule {
  _$_StoreSekectionWorkerSchedule(
      {@HiveField(0) @JsonKey(name: 'scheduleId') required this.scheduleId,
      @HiveField(1) @JsonKey(name: 'name') this.name,
      @HiveField(2) @JsonKey(name: 'description') this.description})
      : super._();

  factory _$_StoreSekectionWorkerSchedule.fromJson(Map<String, dynamic> json) =>
      _$$_StoreSekectionWorkerScheduleFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'scheduleId')
  final String scheduleId;
  @override
  @HiveField(1)
  @JsonKey(name: 'name')
  final String? name;
  @override
  @HiveField(2)
  @JsonKey(name: 'description')
  final String? description;

  @override
  String toString() {
    return 'StoreSelectionWorkerSchedule(scheduleId: $scheduleId, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoreSekectionWorkerSchedule &&
            (identical(other.scheduleId, scheduleId) ||
                const DeepCollectionEquality()
                    .equals(other.scheduleId, scheduleId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(scheduleId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$StoreSekectionWorkerScheduleCopyWith<_StoreSekectionWorkerSchedule>
      get copyWith => __$StoreSekectionWorkerScheduleCopyWithImpl<
          _StoreSekectionWorkerSchedule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreSekectionWorkerScheduleToJson(this);
  }
}

abstract class _StoreSekectionWorkerSchedule
    extends StoreSelectionWorkerSchedule implements DataSourceObject {
  factory _StoreSekectionWorkerSchedule(
      {@HiveField(0)
      @JsonKey(name: 'scheduleId')
          required String scheduleId,
      @HiveField(1)
      @JsonKey(name: 'name')
          String? name,
      @HiveField(2)
      @JsonKey(name: 'description')
          String? description}) = _$_StoreSekectionWorkerSchedule;
  _StoreSekectionWorkerSchedule._() : super._();

  factory _StoreSekectionWorkerSchedule.fromJson(Map<String, dynamic> json) =
      _$_StoreSekectionWorkerSchedule.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'scheduleId')
  String get scheduleId => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StoreSekectionWorkerScheduleCopyWith<_StoreSekectionWorkerSchedule>
      get copyWith => throw _privateConstructorUsedError;
}
