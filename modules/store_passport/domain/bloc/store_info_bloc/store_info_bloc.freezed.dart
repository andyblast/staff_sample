// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StoreInfoEventTearOff {
  const _$StoreInfoEventTearOff();

  ReadStoreInfoEvent read(String siteCode) {
    return ReadStoreInfoEvent(
      siteCode,
    );
  }

  InitStoreInfoEvent init() {
    return const InitStoreInfoEvent();
  }
}

/// @nodoc
const $StoreInfoEvent = _$StoreInfoEventTearOff();

/// @nodoc
mixin _$StoreInfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String siteCode) read,
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String siteCode)? read,
    TResult Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String siteCode)? read,
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadStoreInfoEvent value) read,
    required TResult Function(InitStoreInfoEvent value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadStoreInfoEvent value)? read,
    TResult Function(InitStoreInfoEvent value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadStoreInfoEvent value)? read,
    TResult Function(InitStoreInfoEvent value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreInfoEventCopyWith<$Res> {
  factory $StoreInfoEventCopyWith(
          StoreInfoEvent value, $Res Function(StoreInfoEvent) then) =
      _$StoreInfoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreInfoEventCopyWithImpl<$Res>
    implements $StoreInfoEventCopyWith<$Res> {
  _$StoreInfoEventCopyWithImpl(this._value, this._then);

  final StoreInfoEvent _value;
  // ignore: unused_field
  final $Res Function(StoreInfoEvent) _then;
}

/// @nodoc
abstract class $ReadStoreInfoEventCopyWith<$Res> {
  factory $ReadStoreInfoEventCopyWith(
          ReadStoreInfoEvent value, $Res Function(ReadStoreInfoEvent) then) =
      _$ReadStoreInfoEventCopyWithImpl<$Res>;
  $Res call({String siteCode});
}

/// @nodoc
class _$ReadStoreInfoEventCopyWithImpl<$Res>
    extends _$StoreInfoEventCopyWithImpl<$Res>
    implements $ReadStoreInfoEventCopyWith<$Res> {
  _$ReadStoreInfoEventCopyWithImpl(
      ReadStoreInfoEvent _value, $Res Function(ReadStoreInfoEvent) _then)
      : super(_value, (v) => _then(v as ReadStoreInfoEvent));

  @override
  ReadStoreInfoEvent get _value => super._value as ReadStoreInfoEvent;

  @override
  $Res call({
    Object? siteCode = freezed,
  }) {
    return _then(ReadStoreInfoEvent(
      siteCode == freezed
          ? _value.siteCode
          : siteCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReadStoreInfoEvent extends ReadStoreInfoEvent {
  const _$ReadStoreInfoEvent(this.siteCode) : super._();

  @override
  final String siteCode;

  @override
  String toString() {
    return 'StoreInfoEvent.read(siteCode: $siteCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReadStoreInfoEvent &&
            (identical(other.siteCode, siteCode) ||
                const DeepCollectionEquality()
                    .equals(other.siteCode, siteCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(siteCode);

  @JsonKey(ignore: true)
  @override
  $ReadStoreInfoEventCopyWith<ReadStoreInfoEvent> get copyWith =>
      _$ReadStoreInfoEventCopyWithImpl<ReadStoreInfoEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String siteCode) read,
    required TResult Function() init,
  }) {
    return read(siteCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String siteCode)? read,
    TResult Function()? init,
  }) {
    return read?.call(siteCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String siteCode)? read,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(siteCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadStoreInfoEvent value) read,
    required TResult Function(InitStoreInfoEvent value) init,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadStoreInfoEvent value)? read,
    TResult Function(InitStoreInfoEvent value)? init,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadStoreInfoEvent value)? read,
    TResult Function(InitStoreInfoEvent value)? init,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class ReadStoreInfoEvent extends StoreInfoEvent {
  const factory ReadStoreInfoEvent(String siteCode) = _$ReadStoreInfoEvent;
  const ReadStoreInfoEvent._() : super._();

  String get siteCode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadStoreInfoEventCopyWith<ReadStoreInfoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitStoreInfoEventCopyWith<$Res> {
  factory $InitStoreInfoEventCopyWith(
          InitStoreInfoEvent value, $Res Function(InitStoreInfoEvent) then) =
      _$InitStoreInfoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitStoreInfoEventCopyWithImpl<$Res>
    extends _$StoreInfoEventCopyWithImpl<$Res>
    implements $InitStoreInfoEventCopyWith<$Res> {
  _$InitStoreInfoEventCopyWithImpl(
      InitStoreInfoEvent _value, $Res Function(InitStoreInfoEvent) _then)
      : super(_value, (v) => _then(v as InitStoreInfoEvent));

  @override
  InitStoreInfoEvent get _value => super._value as InitStoreInfoEvent;
}

/// @nodoc

class _$InitStoreInfoEvent extends InitStoreInfoEvent {
  const _$InitStoreInfoEvent() : super._();

  @override
  String toString() {
    return 'StoreInfoEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitStoreInfoEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String siteCode) read,
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String siteCode)? read,
    TResult Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String siteCode)? read,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadStoreInfoEvent value) read,
    required TResult Function(InitStoreInfoEvent value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadStoreInfoEvent value)? read,
    TResult Function(InitStoreInfoEvent value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadStoreInfoEvent value)? read,
    TResult Function(InitStoreInfoEvent value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitStoreInfoEvent extends StoreInfoEvent {
  const factory InitStoreInfoEvent() = _$InitStoreInfoEvent;
  const InitStoreInfoEvent._() : super._();
}

/// @nodoc
class _$StoreInfoStateTearOff {
  const _$StoreInfoStateTearOff();

  InitialStoreInfoState initial() {
    return const InitialStoreInfoState();
  }

  LoadingStoreInfoState loading(String message) {
    return LoadingStoreInfoState(
      message,
    );
  }

  LoadedStoreInfoState loaded(StoreInfoModel storeInfo) {
    return LoadedStoreInfoState(
      storeInfo,
    );
  }

  FailureStoreInfoState failure(String message) {
    return FailureStoreInfoState(
      message,
    );
  }
}

/// @nodoc
const $StoreInfoState = _$StoreInfoStateTearOff();

/// @nodoc
mixin _$StoreInfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(StoreInfoModel storeInfo) loaded,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreInfoModel storeInfo)? loaded,
    TResult Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreInfoModel storeInfo)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStoreInfoState value) initial,
    required TResult Function(LoadingStoreInfoState value) loading,
    required TResult Function(LoadedStoreInfoState value) loaded,
    required TResult Function(FailureStoreInfoState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreInfoState value)? initial,
    TResult Function(LoadingStoreInfoState value)? loading,
    TResult Function(LoadedStoreInfoState value)? loaded,
    TResult Function(FailureStoreInfoState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreInfoState value)? initial,
    TResult Function(LoadingStoreInfoState value)? loading,
    TResult Function(LoadedStoreInfoState value)? loaded,
    TResult Function(FailureStoreInfoState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreInfoStateCopyWith<$Res> {
  factory $StoreInfoStateCopyWith(
          StoreInfoState value, $Res Function(StoreInfoState) then) =
      _$StoreInfoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreInfoStateCopyWithImpl<$Res>
    implements $StoreInfoStateCopyWith<$Res> {
  _$StoreInfoStateCopyWithImpl(this._value, this._then);

  final StoreInfoState _value;
  // ignore: unused_field
  final $Res Function(StoreInfoState) _then;
}

/// @nodoc
abstract class $InitialStoreInfoStateCopyWith<$Res> {
  factory $InitialStoreInfoStateCopyWith(InitialStoreInfoState value,
          $Res Function(InitialStoreInfoState) then) =
      _$InitialStoreInfoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialStoreInfoStateCopyWithImpl<$Res>
    extends _$StoreInfoStateCopyWithImpl<$Res>
    implements $InitialStoreInfoStateCopyWith<$Res> {
  _$InitialStoreInfoStateCopyWithImpl(
      InitialStoreInfoState _value, $Res Function(InitialStoreInfoState) _then)
      : super(_value, (v) => _then(v as InitialStoreInfoState));

  @override
  InitialStoreInfoState get _value => super._value as InitialStoreInfoState;
}

/// @nodoc

class _$InitialStoreInfoState extends InitialStoreInfoState {
  const _$InitialStoreInfoState() : super._();

  @override
  String toString() {
    return 'StoreInfoState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialStoreInfoState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(StoreInfoModel storeInfo) loaded,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreInfoModel storeInfo)? loaded,
    TResult Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreInfoModel storeInfo)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStoreInfoState value) initial,
    required TResult Function(LoadingStoreInfoState value) loading,
    required TResult Function(LoadedStoreInfoState value) loaded,
    required TResult Function(FailureStoreInfoState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreInfoState value)? initial,
    TResult Function(LoadingStoreInfoState value)? loading,
    TResult Function(LoadedStoreInfoState value)? loaded,
    TResult Function(FailureStoreInfoState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreInfoState value)? initial,
    TResult Function(LoadingStoreInfoState value)? loading,
    TResult Function(LoadedStoreInfoState value)? loaded,
    TResult Function(FailureStoreInfoState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialStoreInfoState extends StoreInfoState {
  const factory InitialStoreInfoState() = _$InitialStoreInfoState;
  const InitialStoreInfoState._() : super._();
}

/// @nodoc
abstract class $LoadingStoreInfoStateCopyWith<$Res> {
  factory $LoadingStoreInfoStateCopyWith(LoadingStoreInfoState value,
          $Res Function(LoadingStoreInfoState) then) =
      _$LoadingStoreInfoStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$LoadingStoreInfoStateCopyWithImpl<$Res>
    extends _$StoreInfoStateCopyWithImpl<$Res>
    implements $LoadingStoreInfoStateCopyWith<$Res> {
  _$LoadingStoreInfoStateCopyWithImpl(
      LoadingStoreInfoState _value, $Res Function(LoadingStoreInfoState) _then)
      : super(_value, (v) => _then(v as LoadingStoreInfoState));

  @override
  LoadingStoreInfoState get _value => super._value as LoadingStoreInfoState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(LoadingStoreInfoState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadingStoreInfoState extends LoadingStoreInfoState {
  const _$LoadingStoreInfoState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'StoreInfoState.loading(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadingStoreInfoState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $LoadingStoreInfoStateCopyWith<LoadingStoreInfoState> get copyWith =>
      _$LoadingStoreInfoStateCopyWithImpl<LoadingStoreInfoState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(StoreInfoModel storeInfo) loaded,
    required TResult Function(String message) failure,
  }) {
    return loading(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreInfoModel storeInfo)? loaded,
    TResult Function(String message)? failure,
  }) {
    return loading?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreInfoModel storeInfo)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStoreInfoState value) initial,
    required TResult Function(LoadingStoreInfoState value) loading,
    required TResult Function(LoadedStoreInfoState value) loaded,
    required TResult Function(FailureStoreInfoState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreInfoState value)? initial,
    TResult Function(LoadingStoreInfoState value)? loading,
    TResult Function(LoadedStoreInfoState value)? loaded,
    TResult Function(FailureStoreInfoState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreInfoState value)? initial,
    TResult Function(LoadingStoreInfoState value)? loading,
    TResult Function(LoadedStoreInfoState value)? loaded,
    TResult Function(FailureStoreInfoState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingStoreInfoState extends StoreInfoState {
  const factory LoadingStoreInfoState(String message) = _$LoadingStoreInfoState;
  const LoadingStoreInfoState._() : super._();

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadingStoreInfoStateCopyWith<LoadingStoreInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedStoreInfoStateCopyWith<$Res> {
  factory $LoadedStoreInfoStateCopyWith(LoadedStoreInfoState value,
          $Res Function(LoadedStoreInfoState) then) =
      _$LoadedStoreInfoStateCopyWithImpl<$Res>;
  $Res call({StoreInfoModel storeInfo});

  $StoreInfoModelCopyWith<$Res> get storeInfo;
}

/// @nodoc
class _$LoadedStoreInfoStateCopyWithImpl<$Res>
    extends _$StoreInfoStateCopyWithImpl<$Res>
    implements $LoadedStoreInfoStateCopyWith<$Res> {
  _$LoadedStoreInfoStateCopyWithImpl(
      LoadedStoreInfoState _value, $Res Function(LoadedStoreInfoState) _then)
      : super(_value, (v) => _then(v as LoadedStoreInfoState));

  @override
  LoadedStoreInfoState get _value => super._value as LoadedStoreInfoState;

  @override
  $Res call({
    Object? storeInfo = freezed,
  }) {
    return _then(LoadedStoreInfoState(
      storeInfo == freezed
          ? _value.storeInfo
          : storeInfo // ignore: cast_nullable_to_non_nullable
              as StoreInfoModel,
    ));
  }

  @override
  $StoreInfoModelCopyWith<$Res> get storeInfo {
    return $StoreInfoModelCopyWith<$Res>(_value.storeInfo, (value) {
      return _then(_value.copyWith(storeInfo: value));
    });
  }
}

/// @nodoc

class _$LoadedStoreInfoState extends LoadedStoreInfoState {
  const _$LoadedStoreInfoState(this.storeInfo) : super._();

  @override
  final StoreInfoModel storeInfo;

  @override
  String toString() {
    return 'StoreInfoState.loaded(storeInfo: $storeInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedStoreInfoState &&
            (identical(other.storeInfo, storeInfo) ||
                const DeepCollectionEquality()
                    .equals(other.storeInfo, storeInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(storeInfo);

  @JsonKey(ignore: true)
  @override
  $LoadedStoreInfoStateCopyWith<LoadedStoreInfoState> get copyWith =>
      _$LoadedStoreInfoStateCopyWithImpl<LoadedStoreInfoState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(StoreInfoModel storeInfo) loaded,
    required TResult Function(String message) failure,
  }) {
    return loaded(storeInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreInfoModel storeInfo)? loaded,
    TResult Function(String message)? failure,
  }) {
    return loaded?.call(storeInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreInfoModel storeInfo)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(storeInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStoreInfoState value) initial,
    required TResult Function(LoadingStoreInfoState value) loading,
    required TResult Function(LoadedStoreInfoState value) loaded,
    required TResult Function(FailureStoreInfoState value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreInfoState value)? initial,
    TResult Function(LoadingStoreInfoState value)? loading,
    TResult Function(LoadedStoreInfoState value)? loaded,
    TResult Function(FailureStoreInfoState value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreInfoState value)? initial,
    TResult Function(LoadingStoreInfoState value)? loading,
    TResult Function(LoadedStoreInfoState value)? loaded,
    TResult Function(FailureStoreInfoState value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedStoreInfoState extends StoreInfoState {
  const factory LoadedStoreInfoState(StoreInfoModel storeInfo) =
      _$LoadedStoreInfoState;
  const LoadedStoreInfoState._() : super._();

  StoreInfoModel get storeInfo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedStoreInfoStateCopyWith<LoadedStoreInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureStoreInfoStateCopyWith<$Res> {
  factory $FailureStoreInfoStateCopyWith(FailureStoreInfoState value,
          $Res Function(FailureStoreInfoState) then) =
      _$FailureStoreInfoStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FailureStoreInfoStateCopyWithImpl<$Res>
    extends _$StoreInfoStateCopyWithImpl<$Res>
    implements $FailureStoreInfoStateCopyWith<$Res> {
  _$FailureStoreInfoStateCopyWithImpl(
      FailureStoreInfoState _value, $Res Function(FailureStoreInfoState) _then)
      : super(_value, (v) => _then(v as FailureStoreInfoState));

  @override
  FailureStoreInfoState get _value => super._value as FailureStoreInfoState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(FailureStoreInfoState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureStoreInfoState extends FailureStoreInfoState {
  const _$FailureStoreInfoState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'StoreInfoState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FailureStoreInfoState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $FailureStoreInfoStateCopyWith<FailureStoreInfoState> get copyWith =>
      _$FailureStoreInfoStateCopyWithImpl<FailureStoreInfoState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(StoreInfoModel storeInfo) loaded,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreInfoModel storeInfo)? loaded,
    TResult Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreInfoModel storeInfo)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStoreInfoState value) initial,
    required TResult Function(LoadingStoreInfoState value) loading,
    required TResult Function(LoadedStoreInfoState value) loaded,
    required TResult Function(FailureStoreInfoState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreInfoState value)? initial,
    TResult Function(LoadingStoreInfoState value)? loading,
    TResult Function(LoadedStoreInfoState value)? loaded,
    TResult Function(FailureStoreInfoState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreInfoState value)? initial,
    TResult Function(LoadingStoreInfoState value)? loading,
    TResult Function(LoadedStoreInfoState value)? loaded,
    TResult Function(FailureStoreInfoState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FailureStoreInfoState extends StoreInfoState {
  const factory FailureStoreInfoState(String message) = _$FailureStoreInfoState;
  const FailureStoreInfoState._() : super._();

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FailureStoreInfoStateCopyWith<FailureStoreInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}
