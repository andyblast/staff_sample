// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_selection_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreSelectionViewModel _$StoreSelectionViewModelFromJson(
    Map<String, dynamic> json) {
  return _StoreSelectionViewModel.fromJson(json);
}

/// @nodoc
class _$StoreSelectionViewModelTearOff {
  const _$StoreSelectionViewModelTearOff();

  _StoreSelectionViewModel call(
      {@HiveField(0)
      @JsonKey(name: 'siteId')
          required int siteId,
      @HiveField(1)
      @JsonKey(name: 'positions')
          List<StoreSelectionPositionModel>? positions,
      @HiveField(2)
      @JsonKey(name: 'isShowTabNumberError')
          required bool isShowTabNumberError,
      @HiveField(3)
      @JsonKey(name: 'saveError')
          String? saveError,
      @HiveField(4)
      @JsonKey(name: 'workerSchedules')
          List<StoreSelectionWorkerSchedule>? workerSchedules,
      @HiveField(5)
      @JsonKey(name: 'workerSchedulesMobile')
          List<StoreSelectionWorkerSchedule>? workerSchedulesMobile}) {
    return _StoreSelectionViewModel(
      siteId: siteId,
      positions: positions,
      isShowTabNumberError: isShowTabNumberError,
      saveError: saveError,
      workerSchedules: workerSchedules,
      workerSchedulesMobile: workerSchedulesMobile,
    );
  }

  StoreSelectionViewModel fromJson(Map<String, Object> json) {
    return StoreSelectionViewModel.fromJson(json);
  }
}

/// @nodoc
const $StoreSelectionViewModel = _$StoreSelectionViewModelTearOff();

/// @nodoc
mixin _$StoreSelectionViewModel {
  @HiveField(0)
  @JsonKey(name: 'siteId')
  int get siteId => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'positions')
  List<StoreSelectionPositionModel>? get positions =>
      throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'isShowTabNumberError')
  bool get isShowTabNumberError => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'saveError')
  String? get saveError => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'workerSchedules')
  List<StoreSelectionWorkerSchedule>? get workerSchedules =>
      throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'workerSchedulesMobile')
  List<StoreSelectionWorkerSchedule>? get workerSchedulesMobile =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreSelectionViewModelCopyWith<StoreSelectionViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreSelectionViewModelCopyWith<$Res> {
  factory $StoreSelectionViewModelCopyWith(StoreSelectionViewModel value,
          $Res Function(StoreSelectionViewModel) then) =
      _$StoreSelectionViewModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0)
      @JsonKey(name: 'siteId')
          int siteId,
      @HiveField(1)
      @JsonKey(name: 'positions')
          List<StoreSelectionPositionModel>? positions,
      @HiveField(2)
      @JsonKey(name: 'isShowTabNumberError')
          bool isShowTabNumberError,
      @HiveField(3)
      @JsonKey(name: 'saveError')
          String? saveError,
      @HiveField(4)
      @JsonKey(name: 'workerSchedules')
          List<StoreSelectionWorkerSchedule>? workerSchedules,
      @HiveField(5)
      @JsonKey(name: 'workerSchedulesMobile')
          List<StoreSelectionWorkerSchedule>? workerSchedulesMobile});
}

/// @nodoc
class _$StoreSelectionViewModelCopyWithImpl<$Res>
    implements $StoreSelectionViewModelCopyWith<$Res> {
  _$StoreSelectionViewModelCopyWithImpl(this._value, this._then);

  final StoreSelectionViewModel _value;
  // ignore: unused_field
  final $Res Function(StoreSelectionViewModel) _then;

  @override
  $Res call({
    Object? siteId = freezed,
    Object? positions = freezed,
    Object? isShowTabNumberError = freezed,
    Object? saveError = freezed,
    Object? workerSchedules = freezed,
    Object? workerSchedulesMobile = freezed,
  }) {
    return _then(_value.copyWith(
      siteId: siteId == freezed
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as int,
      positions: positions == freezed
          ? _value.positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<StoreSelectionPositionModel>?,
      isShowTabNumberError: isShowTabNumberError == freezed
          ? _value.isShowTabNumberError
          : isShowTabNumberError // ignore: cast_nullable_to_non_nullable
              as bool,
      saveError: saveError == freezed
          ? _value.saveError
          : saveError // ignore: cast_nullable_to_non_nullable
              as String?,
      workerSchedules: workerSchedules == freezed
          ? _value.workerSchedules
          : workerSchedules // ignore: cast_nullable_to_non_nullable
              as List<StoreSelectionWorkerSchedule>?,
      workerSchedulesMobile: workerSchedulesMobile == freezed
          ? _value.workerSchedulesMobile
          : workerSchedulesMobile // ignore: cast_nullable_to_non_nullable
              as List<StoreSelectionWorkerSchedule>?,
    ));
  }
}

/// @nodoc
abstract class _$StoreSelectionViewModelCopyWith<$Res>
    implements $StoreSelectionViewModelCopyWith<$Res> {
  factory _$StoreSelectionViewModelCopyWith(_StoreSelectionViewModel value,
          $Res Function(_StoreSelectionViewModel) then) =
      __$StoreSelectionViewModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0)
      @JsonKey(name: 'siteId')
          int siteId,
      @HiveField(1)
      @JsonKey(name: 'positions')
          List<StoreSelectionPositionModel>? positions,
      @HiveField(2)
      @JsonKey(name: 'isShowTabNumberError')
          bool isShowTabNumberError,
      @HiveField(3)
      @JsonKey(name: 'saveError')
          String? saveError,
      @HiveField(4)
      @JsonKey(name: 'workerSchedules')
          List<StoreSelectionWorkerSchedule>? workerSchedules,
      @HiveField(5)
      @JsonKey(name: 'workerSchedulesMobile')
          List<StoreSelectionWorkerSchedule>? workerSchedulesMobile});
}

/// @nodoc
class __$StoreSelectionViewModelCopyWithImpl<$Res>
    extends _$StoreSelectionViewModelCopyWithImpl<$Res>
    implements _$StoreSelectionViewModelCopyWith<$Res> {
  __$StoreSelectionViewModelCopyWithImpl(_StoreSelectionViewModel _value,
      $Res Function(_StoreSelectionViewModel) _then)
      : super(_value, (v) => _then(v as _StoreSelectionViewModel));

  @override
  _StoreSelectionViewModel get _value =>
      super._value as _StoreSelectionViewModel;

  @override
  $Res call({
    Object? siteId = freezed,
    Object? positions = freezed,
    Object? isShowTabNumberError = freezed,
    Object? saveError = freezed,
    Object? workerSchedules = freezed,
    Object? workerSchedulesMobile = freezed,
  }) {
    return _then(_StoreSelectionViewModel(
      siteId: siteId == freezed
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as int,
      positions: positions == freezed
          ? _value.positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<StoreSelectionPositionModel>?,
      isShowTabNumberError: isShowTabNumberError == freezed
          ? _value.isShowTabNumberError
          : isShowTabNumberError // ignore: cast_nullable_to_non_nullable
              as bool,
      saveError: saveError == freezed
          ? _value.saveError
          : saveError // ignore: cast_nullable_to_non_nullable
              as String?,
      workerSchedules: workerSchedules == freezed
          ? _value.workerSchedules
          : workerSchedules // ignore: cast_nullable_to_non_nullable
              as List<StoreSelectionWorkerSchedule>?,
      workerSchedulesMobile: workerSchedulesMobile == freezed
          ? _value.workerSchedulesMobile
          : workerSchedulesMobile // ignore: cast_nullable_to_non_nullable
              as List<StoreSelectionWorkerSchedule>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(DataSourceObject)
class _$_StoreSelectionViewModel extends _StoreSelectionViewModel {
  _$_StoreSelectionViewModel(
      {@HiveField(0)
      @JsonKey(name: 'siteId')
          required this.siteId,
      @HiveField(1)
      @JsonKey(name: 'positions')
          this.positions,
      @HiveField(2)
      @JsonKey(name: 'isShowTabNumberError')
          required this.isShowTabNumberError,
      @HiveField(3)
      @JsonKey(name: 'saveError')
          this.saveError,
      @HiveField(4)
      @JsonKey(name: 'workerSchedules')
          this.workerSchedules,
      @HiveField(5)
      @JsonKey(name: 'workerSchedulesMobile')
          this.workerSchedulesMobile})
      : super._();

  factory _$_StoreSelectionViewModel.fromJson(Map<String, dynamic> json) =>
      _$$_StoreSelectionViewModelFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'siteId')
  final int siteId;
  @override
  @HiveField(1)
  @JsonKey(name: 'positions')
  final List<StoreSelectionPositionModel>? positions;
  @override
  @HiveField(2)
  @JsonKey(name: 'isShowTabNumberError')
  final bool isShowTabNumberError;
  @override
  @HiveField(3)
  @JsonKey(name: 'saveError')
  final String? saveError;
  @override
  @HiveField(4)
  @JsonKey(name: 'workerSchedules')
  final List<StoreSelectionWorkerSchedule>? workerSchedules;
  @override
  @HiveField(5)
  @JsonKey(name: 'workerSchedulesMobile')
  final List<StoreSelectionWorkerSchedule>? workerSchedulesMobile;

  @override
  String toString() {
    return 'StoreSelectionViewModel(siteId: $siteId, positions: $positions, isShowTabNumberError: $isShowTabNumberError, saveError: $saveError, workerSchedules: $workerSchedules, workerSchedulesMobile: $workerSchedulesMobile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoreSelectionViewModel &&
            (identical(other.siteId, siteId) ||
                const DeepCollectionEquality().equals(other.siteId, siteId)) &&
            (identical(other.positions, positions) ||
                const DeepCollectionEquality()
                    .equals(other.positions, positions)) &&
            (identical(other.isShowTabNumberError, isShowTabNumberError) ||
                const DeepCollectionEquality().equals(
                    other.isShowTabNumberError, isShowTabNumberError)) &&
            (identical(other.saveError, saveError) ||
                const DeepCollectionEquality()
                    .equals(other.saveError, saveError)) &&
            (identical(other.workerSchedules, workerSchedules) ||
                const DeepCollectionEquality()
                    .equals(other.workerSchedules, workerSchedules)) &&
            (identical(other.workerSchedulesMobile, workerSchedulesMobile) ||
                const DeepCollectionEquality().equals(
                    other.workerSchedulesMobile, workerSchedulesMobile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(siteId) ^
      const DeepCollectionEquality().hash(positions) ^
      const DeepCollectionEquality().hash(isShowTabNumberError) ^
      const DeepCollectionEquality().hash(saveError) ^
      const DeepCollectionEquality().hash(workerSchedules) ^
      const DeepCollectionEquality().hash(workerSchedulesMobile);

  @JsonKey(ignore: true)
  @override
  _$StoreSelectionViewModelCopyWith<_StoreSelectionViewModel> get copyWith =>
      __$StoreSelectionViewModelCopyWithImpl<_StoreSelectionViewModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreSelectionViewModelToJson(this);
  }
}

abstract class _StoreSelectionViewModel extends StoreSelectionViewModel
    implements DataSourceObject {
  factory _StoreSelectionViewModel(
          {@HiveField(0)
          @JsonKey(name: 'siteId')
              required int siteId,
          @HiveField(1)
          @JsonKey(name: 'positions')
              List<StoreSelectionPositionModel>? positions,
          @HiveField(2)
          @JsonKey(name: 'isShowTabNumberError')
              required bool isShowTabNumberError,
          @HiveField(3)
          @JsonKey(name: 'saveError')
              String? saveError,
          @HiveField(4)
          @JsonKey(name: 'workerSchedules')
              List<StoreSelectionWorkerSchedule>? workerSchedules,
          @HiveField(5)
          @JsonKey(name: 'workerSchedulesMobile')
              List<StoreSelectionWorkerSchedule>? workerSchedulesMobile}) =
      _$_StoreSelectionViewModel;
  _StoreSelectionViewModel._() : super._();

  factory _StoreSelectionViewModel.fromJson(Map<String, dynamic> json) =
      _$_StoreSelectionViewModel.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'siteId')
  int get siteId => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  @JsonKey(name: 'positions')
  List<StoreSelectionPositionModel>? get positions =>
      throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  @JsonKey(name: 'isShowTabNumberError')
  bool get isShowTabNumberError => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  @JsonKey(name: 'saveError')
  String? get saveError => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  @JsonKey(name: 'workerSchedules')
  List<StoreSelectionWorkerSchedule>? get workerSchedules =>
      throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  @JsonKey(name: 'workerSchedulesMobile')
  List<StoreSelectionWorkerSchedule>? get workerSchedulesMobile =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StoreSelectionViewModelCopyWith<_StoreSelectionViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
