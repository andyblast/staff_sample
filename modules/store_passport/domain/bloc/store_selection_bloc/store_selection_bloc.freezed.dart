// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_selection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StoreSelectionEventTearOff {
  const _$StoreSelectionEventTearOff();

  ReadStoreSelectionViewEvent readView() {
    return const ReadStoreSelectionViewEvent();
  }
}

/// @nodoc
const $StoreSelectionEvent = _$StoreSelectionEventTearOff();

/// @nodoc
mixin _$StoreSelectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? readView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadStoreSelectionViewEvent value) readView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadStoreSelectionViewEvent value)? readView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadStoreSelectionViewEvent value)? readView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreSelectionEventCopyWith<$Res> {
  factory $StoreSelectionEventCopyWith(
          StoreSelectionEvent value, $Res Function(StoreSelectionEvent) then) =
      _$StoreSelectionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreSelectionEventCopyWithImpl<$Res>
    implements $StoreSelectionEventCopyWith<$Res> {
  _$StoreSelectionEventCopyWithImpl(this._value, this._then);

  final StoreSelectionEvent _value;
  // ignore: unused_field
  final $Res Function(StoreSelectionEvent) _then;
}

/// @nodoc
abstract class $ReadStoreSelectionViewEventCopyWith<$Res> {
  factory $ReadStoreSelectionViewEventCopyWith(
          ReadStoreSelectionViewEvent value,
          $Res Function(ReadStoreSelectionViewEvent) then) =
      _$ReadStoreSelectionViewEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReadStoreSelectionViewEventCopyWithImpl<$Res>
    extends _$StoreSelectionEventCopyWithImpl<$Res>
    implements $ReadStoreSelectionViewEventCopyWith<$Res> {
  _$ReadStoreSelectionViewEventCopyWithImpl(ReadStoreSelectionViewEvent _value,
      $Res Function(ReadStoreSelectionViewEvent) _then)
      : super(_value, (v) => _then(v as ReadStoreSelectionViewEvent));

  @override
  ReadStoreSelectionViewEvent get _value =>
      super._value as ReadStoreSelectionViewEvent;
}

/// @nodoc

class _$ReadStoreSelectionViewEvent extends ReadStoreSelectionViewEvent {
  const _$ReadStoreSelectionViewEvent() : super._();

  @override
  String toString() {
    return 'StoreSelectionEvent.readView()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ReadStoreSelectionViewEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readView,
  }) {
    return readView();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? readView,
  }) {
    return readView?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readView,
    required TResult orElse(),
  }) {
    if (readView != null) {
      return readView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadStoreSelectionViewEvent value) readView,
  }) {
    return readView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadStoreSelectionViewEvent value)? readView,
  }) {
    return readView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadStoreSelectionViewEvent value)? readView,
    required TResult orElse(),
  }) {
    if (readView != null) {
      return readView(this);
    }
    return orElse();
  }
}

abstract class ReadStoreSelectionViewEvent extends StoreSelectionEvent {
  const factory ReadStoreSelectionViewEvent() = _$ReadStoreSelectionViewEvent;
  const ReadStoreSelectionViewEvent._() : super._();
}

/// @nodoc
class _$StoreSelectionStateTearOff {
  const _$StoreSelectionStateTearOff();

  InitialStoreSelectionState initial() {
    return const InitialStoreSelectionState();
  }

  LoadingStoreSelectionState loading(String message) {
    return LoadingStoreSelectionState(
      message,
    );
  }

  LoadedStoreSelectionViewState loadedView(
      StoreSelectionViewModel selectionViewModel) {
    return LoadedStoreSelectionViewState(
      selectionViewModel,
    );
  }

  ErrorStoreSelectionState error(String message) {
    return ErrorStoreSelectionState(
      message,
    );
  }

  ForbiddenStoreSelectionState forbidden(String message) {
    return ForbiddenStoreSelectionState(
      message,
    );
  }
}

/// @nodoc
const $StoreSelectionState = _$StoreSelectionStateTearOff();

/// @nodoc
mixin _$StoreSelectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(StoreSelectionViewModel selectionViewModel)
        loadedView,
    required TResult Function(String message) error,
    required TResult Function(String message) forbidden,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreSelectionViewModel selectionViewModel)? loadedView,
    TResult Function(String message)? error,
    TResult Function(String message)? forbidden,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreSelectionViewModel selectionViewModel)? loadedView,
    TResult Function(String message)? error,
    TResult Function(String message)? forbidden,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStoreSelectionState value) initial,
    required TResult Function(LoadingStoreSelectionState value) loading,
    required TResult Function(LoadedStoreSelectionViewState value) loadedView,
    required TResult Function(ErrorStoreSelectionState value) error,
    required TResult Function(ForbiddenStoreSelectionState value) forbidden,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreSelectionState value)? initial,
    TResult Function(LoadingStoreSelectionState value)? loading,
    TResult Function(LoadedStoreSelectionViewState value)? loadedView,
    TResult Function(ErrorStoreSelectionState value)? error,
    TResult Function(ForbiddenStoreSelectionState value)? forbidden,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreSelectionState value)? initial,
    TResult Function(LoadingStoreSelectionState value)? loading,
    TResult Function(LoadedStoreSelectionViewState value)? loadedView,
    TResult Function(ErrorStoreSelectionState value)? error,
    TResult Function(ForbiddenStoreSelectionState value)? forbidden,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreSelectionStateCopyWith<$Res> {
  factory $StoreSelectionStateCopyWith(
          StoreSelectionState value, $Res Function(StoreSelectionState) then) =
      _$StoreSelectionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreSelectionStateCopyWithImpl<$Res>
    implements $StoreSelectionStateCopyWith<$Res> {
  _$StoreSelectionStateCopyWithImpl(this._value, this._then);

  final StoreSelectionState _value;
  // ignore: unused_field
  final $Res Function(StoreSelectionState) _then;
}

/// @nodoc
abstract class $InitialStoreSelectionStateCopyWith<$Res> {
  factory $InitialStoreSelectionStateCopyWith(InitialStoreSelectionState value,
          $Res Function(InitialStoreSelectionState) then) =
      _$InitialStoreSelectionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialStoreSelectionStateCopyWithImpl<$Res>
    extends _$StoreSelectionStateCopyWithImpl<$Res>
    implements $InitialStoreSelectionStateCopyWith<$Res> {
  _$InitialStoreSelectionStateCopyWithImpl(InitialStoreSelectionState _value,
      $Res Function(InitialStoreSelectionState) _then)
      : super(_value, (v) => _then(v as InitialStoreSelectionState));

  @override
  InitialStoreSelectionState get _value =>
      super._value as InitialStoreSelectionState;
}

/// @nodoc

class _$InitialStoreSelectionState extends InitialStoreSelectionState {
  const _$InitialStoreSelectionState() : super._();

  @override
  String toString() {
    return 'StoreSelectionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialStoreSelectionState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(StoreSelectionViewModel selectionViewModel)
        loadedView,
    required TResult Function(String message) error,
    required TResult Function(String message) forbidden,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreSelectionViewModel selectionViewModel)? loadedView,
    TResult Function(String message)? error,
    TResult Function(String message)? forbidden,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreSelectionViewModel selectionViewModel)? loadedView,
    TResult Function(String message)? error,
    TResult Function(String message)? forbidden,
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
    required TResult Function(InitialStoreSelectionState value) initial,
    required TResult Function(LoadingStoreSelectionState value) loading,
    required TResult Function(LoadedStoreSelectionViewState value) loadedView,
    required TResult Function(ErrorStoreSelectionState value) error,
    required TResult Function(ForbiddenStoreSelectionState value) forbidden,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreSelectionState value)? initial,
    TResult Function(LoadingStoreSelectionState value)? loading,
    TResult Function(LoadedStoreSelectionViewState value)? loadedView,
    TResult Function(ErrorStoreSelectionState value)? error,
    TResult Function(ForbiddenStoreSelectionState value)? forbidden,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreSelectionState value)? initial,
    TResult Function(LoadingStoreSelectionState value)? loading,
    TResult Function(LoadedStoreSelectionViewState value)? loadedView,
    TResult Function(ErrorStoreSelectionState value)? error,
    TResult Function(ForbiddenStoreSelectionState value)? forbidden,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialStoreSelectionState extends StoreSelectionState {
  const factory InitialStoreSelectionState() = _$InitialStoreSelectionState;
  const InitialStoreSelectionState._() : super._();
}

/// @nodoc
abstract class $LoadingStoreSelectionStateCopyWith<$Res> {
  factory $LoadingStoreSelectionStateCopyWith(LoadingStoreSelectionState value,
          $Res Function(LoadingStoreSelectionState) then) =
      _$LoadingStoreSelectionStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$LoadingStoreSelectionStateCopyWithImpl<$Res>
    extends _$StoreSelectionStateCopyWithImpl<$Res>
    implements $LoadingStoreSelectionStateCopyWith<$Res> {
  _$LoadingStoreSelectionStateCopyWithImpl(LoadingStoreSelectionState _value,
      $Res Function(LoadingStoreSelectionState) _then)
      : super(_value, (v) => _then(v as LoadingStoreSelectionState));

  @override
  LoadingStoreSelectionState get _value =>
      super._value as LoadingStoreSelectionState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(LoadingStoreSelectionState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadingStoreSelectionState extends LoadingStoreSelectionState {
  const _$LoadingStoreSelectionState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'StoreSelectionState.loading(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadingStoreSelectionState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $LoadingStoreSelectionStateCopyWith<LoadingStoreSelectionState>
      get copyWith =>
          _$LoadingStoreSelectionStateCopyWithImpl<LoadingStoreSelectionState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(StoreSelectionViewModel selectionViewModel)
        loadedView,
    required TResult Function(String message) error,
    required TResult Function(String message) forbidden,
  }) {
    return loading(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreSelectionViewModel selectionViewModel)? loadedView,
    TResult Function(String message)? error,
    TResult Function(String message)? forbidden,
  }) {
    return loading?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreSelectionViewModel selectionViewModel)? loadedView,
    TResult Function(String message)? error,
    TResult Function(String message)? forbidden,
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
    required TResult Function(InitialStoreSelectionState value) initial,
    required TResult Function(LoadingStoreSelectionState value) loading,
    required TResult Function(LoadedStoreSelectionViewState value) loadedView,
    required TResult Function(ErrorStoreSelectionState value) error,
    required TResult Function(ForbiddenStoreSelectionState value) forbidden,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreSelectionState value)? initial,
    TResult Function(LoadingStoreSelectionState value)? loading,
    TResult Function(LoadedStoreSelectionViewState value)? loadedView,
    TResult Function(ErrorStoreSelectionState value)? error,
    TResult Function(ForbiddenStoreSelectionState value)? forbidden,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreSelectionState value)? initial,
    TResult Function(LoadingStoreSelectionState value)? loading,
    TResult Function(LoadedStoreSelectionViewState value)? loadedView,
    TResult Function(ErrorStoreSelectionState value)? error,
    TResult Function(ForbiddenStoreSelectionState value)? forbidden,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingStoreSelectionState extends StoreSelectionState {
  const factory LoadingStoreSelectionState(String message) =
      _$LoadingStoreSelectionState;
  const LoadingStoreSelectionState._() : super._();

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadingStoreSelectionStateCopyWith<LoadingStoreSelectionState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedStoreSelectionViewStateCopyWith<$Res> {
  factory $LoadedStoreSelectionViewStateCopyWith(
          LoadedStoreSelectionViewState value,
          $Res Function(LoadedStoreSelectionViewState) then) =
      _$LoadedStoreSelectionViewStateCopyWithImpl<$Res>;
  $Res call({StoreSelectionViewModel selectionViewModel});

  $StoreSelectionViewModelCopyWith<$Res> get selectionViewModel;
}

/// @nodoc
class _$LoadedStoreSelectionViewStateCopyWithImpl<$Res>
    extends _$StoreSelectionStateCopyWithImpl<$Res>
    implements $LoadedStoreSelectionViewStateCopyWith<$Res> {
  _$LoadedStoreSelectionViewStateCopyWithImpl(
      LoadedStoreSelectionViewState _value,
      $Res Function(LoadedStoreSelectionViewState) _then)
      : super(_value, (v) => _then(v as LoadedStoreSelectionViewState));

  @override
  LoadedStoreSelectionViewState get _value =>
      super._value as LoadedStoreSelectionViewState;

  @override
  $Res call({
    Object? selectionViewModel = freezed,
  }) {
    return _then(LoadedStoreSelectionViewState(
      selectionViewModel == freezed
          ? _value.selectionViewModel
          : selectionViewModel // ignore: cast_nullable_to_non_nullable
              as StoreSelectionViewModel,
    ));
  }

  @override
  $StoreSelectionViewModelCopyWith<$Res> get selectionViewModel {
    return $StoreSelectionViewModelCopyWith<$Res>(_value.selectionViewModel,
        (value) {
      return _then(_value.copyWith(selectionViewModel: value));
    });
  }
}

/// @nodoc

class _$LoadedStoreSelectionViewState extends LoadedStoreSelectionViewState {
  const _$LoadedStoreSelectionViewState(this.selectionViewModel) : super._();

  @override
  final StoreSelectionViewModel selectionViewModel;

  @override
  String toString() {
    return 'StoreSelectionState.loadedView(selectionViewModel: $selectionViewModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedStoreSelectionViewState &&
            (identical(other.selectionViewModel, selectionViewModel) ||
                const DeepCollectionEquality()
                    .equals(other.selectionViewModel, selectionViewModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectionViewModel);

  @JsonKey(ignore: true)
  @override
  $LoadedStoreSelectionViewStateCopyWith<LoadedStoreSelectionViewState>
      get copyWith => _$LoadedStoreSelectionViewStateCopyWithImpl<
          LoadedStoreSelectionViewState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(StoreSelectionViewModel selectionViewModel)
        loadedView,
    required TResult Function(String message) error,
    required TResult Function(String message) forbidden,
  }) {
    return loadedView(selectionViewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreSelectionViewModel selectionViewModel)? loadedView,
    TResult Function(String message)? error,
    TResult Function(String message)? forbidden,
  }) {
    return loadedView?.call(selectionViewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreSelectionViewModel selectionViewModel)? loadedView,
    TResult Function(String message)? error,
    TResult Function(String message)? forbidden,
    required TResult orElse(),
  }) {
    if (loadedView != null) {
      return loadedView(selectionViewModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStoreSelectionState value) initial,
    required TResult Function(LoadingStoreSelectionState value) loading,
    required TResult Function(LoadedStoreSelectionViewState value) loadedView,
    required TResult Function(ErrorStoreSelectionState value) error,
    required TResult Function(ForbiddenStoreSelectionState value) forbidden,
  }) {
    return loadedView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreSelectionState value)? initial,
    TResult Function(LoadingStoreSelectionState value)? loading,
    TResult Function(LoadedStoreSelectionViewState value)? loadedView,
    TResult Function(ErrorStoreSelectionState value)? error,
    TResult Function(ForbiddenStoreSelectionState value)? forbidden,
  }) {
    return loadedView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreSelectionState value)? initial,
    TResult Function(LoadingStoreSelectionState value)? loading,
    TResult Function(LoadedStoreSelectionViewState value)? loadedView,
    TResult Function(ErrorStoreSelectionState value)? error,
    TResult Function(ForbiddenStoreSelectionState value)? forbidden,
    required TResult orElse(),
  }) {
    if (loadedView != null) {
      return loadedView(this);
    }
    return orElse();
  }
}

abstract class LoadedStoreSelectionViewState extends StoreSelectionState {
  const factory LoadedStoreSelectionViewState(
          StoreSelectionViewModel selectionViewModel) =
      _$LoadedStoreSelectionViewState;
  const LoadedStoreSelectionViewState._() : super._();

  StoreSelectionViewModel get selectionViewModel =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedStoreSelectionViewStateCopyWith<LoadedStoreSelectionViewState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorStoreSelectionStateCopyWith<$Res> {
  factory $ErrorStoreSelectionStateCopyWith(ErrorStoreSelectionState value,
          $Res Function(ErrorStoreSelectionState) then) =
      _$ErrorStoreSelectionStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorStoreSelectionStateCopyWithImpl<$Res>
    extends _$StoreSelectionStateCopyWithImpl<$Res>
    implements $ErrorStoreSelectionStateCopyWith<$Res> {
  _$ErrorStoreSelectionStateCopyWithImpl(ErrorStoreSelectionState _value,
      $Res Function(ErrorStoreSelectionState) _then)
      : super(_value, (v) => _then(v as ErrorStoreSelectionState));

  @override
  ErrorStoreSelectionState get _value =>
      super._value as ErrorStoreSelectionState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorStoreSelectionState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStoreSelectionState extends ErrorStoreSelectionState {
  const _$ErrorStoreSelectionState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'StoreSelectionState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorStoreSelectionState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorStoreSelectionStateCopyWith<ErrorStoreSelectionState> get copyWith =>
      _$ErrorStoreSelectionStateCopyWithImpl<ErrorStoreSelectionState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(StoreSelectionViewModel selectionViewModel)
        loadedView,
    required TResult Function(String message) error,
    required TResult Function(String message) forbidden,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreSelectionViewModel selectionViewModel)? loadedView,
    TResult Function(String message)? error,
    TResult Function(String message)? forbidden,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreSelectionViewModel selectionViewModel)? loadedView,
    TResult Function(String message)? error,
    TResult Function(String message)? forbidden,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStoreSelectionState value) initial,
    required TResult Function(LoadingStoreSelectionState value) loading,
    required TResult Function(LoadedStoreSelectionViewState value) loadedView,
    required TResult Function(ErrorStoreSelectionState value) error,
    required TResult Function(ForbiddenStoreSelectionState value) forbidden,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreSelectionState value)? initial,
    TResult Function(LoadingStoreSelectionState value)? loading,
    TResult Function(LoadedStoreSelectionViewState value)? loadedView,
    TResult Function(ErrorStoreSelectionState value)? error,
    TResult Function(ForbiddenStoreSelectionState value)? forbidden,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreSelectionState value)? initial,
    TResult Function(LoadingStoreSelectionState value)? loading,
    TResult Function(LoadedStoreSelectionViewState value)? loadedView,
    TResult Function(ErrorStoreSelectionState value)? error,
    TResult Function(ForbiddenStoreSelectionState value)? forbidden,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorStoreSelectionState extends StoreSelectionState {
  const factory ErrorStoreSelectionState(String message) =
      _$ErrorStoreSelectionState;
  const ErrorStoreSelectionState._() : super._();

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorStoreSelectionStateCopyWith<ErrorStoreSelectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForbiddenStoreSelectionStateCopyWith<$Res> {
  factory $ForbiddenStoreSelectionStateCopyWith(
          ForbiddenStoreSelectionState value,
          $Res Function(ForbiddenStoreSelectionState) then) =
      _$ForbiddenStoreSelectionStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ForbiddenStoreSelectionStateCopyWithImpl<$Res>
    extends _$StoreSelectionStateCopyWithImpl<$Res>
    implements $ForbiddenStoreSelectionStateCopyWith<$Res> {
  _$ForbiddenStoreSelectionStateCopyWithImpl(
      ForbiddenStoreSelectionState _value,
      $Res Function(ForbiddenStoreSelectionState) _then)
      : super(_value, (v) => _then(v as ForbiddenStoreSelectionState));

  @override
  ForbiddenStoreSelectionState get _value =>
      super._value as ForbiddenStoreSelectionState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ForbiddenStoreSelectionState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForbiddenStoreSelectionState extends ForbiddenStoreSelectionState {
  const _$ForbiddenStoreSelectionState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'StoreSelectionState.forbidden(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ForbiddenStoreSelectionState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ForbiddenStoreSelectionStateCopyWith<ForbiddenStoreSelectionState>
      get copyWith => _$ForbiddenStoreSelectionStateCopyWithImpl<
          ForbiddenStoreSelectionState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(StoreSelectionViewModel selectionViewModel)
        loadedView,
    required TResult Function(String message) error,
    required TResult Function(String message) forbidden,
  }) {
    return forbidden(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreSelectionViewModel selectionViewModel)? loadedView,
    TResult Function(String message)? error,
    TResult Function(String message)? forbidden,
  }) {
    return forbidden?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreSelectionViewModel selectionViewModel)? loadedView,
    TResult Function(String message)? error,
    TResult Function(String message)? forbidden,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStoreSelectionState value) initial,
    required TResult Function(LoadingStoreSelectionState value) loading,
    required TResult Function(LoadedStoreSelectionViewState value) loadedView,
    required TResult Function(ErrorStoreSelectionState value) error,
    required TResult Function(ForbiddenStoreSelectionState value) forbidden,
  }) {
    return forbidden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreSelectionState value)? initial,
    TResult Function(LoadingStoreSelectionState value)? loading,
    TResult Function(LoadedStoreSelectionViewState value)? loadedView,
    TResult Function(ErrorStoreSelectionState value)? error,
    TResult Function(ForbiddenStoreSelectionState value)? forbidden,
  }) {
    return forbidden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreSelectionState value)? initial,
    TResult Function(LoadingStoreSelectionState value)? loading,
    TResult Function(LoadedStoreSelectionViewState value)? loadedView,
    TResult Function(ErrorStoreSelectionState value)? error,
    TResult Function(ForbiddenStoreSelectionState value)? forbidden,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(this);
    }
    return orElse();
  }
}

abstract class ForbiddenStoreSelectionState extends StoreSelectionState {
  const factory ForbiddenStoreSelectionState(String message) =
      _$ForbiddenStoreSelectionState;
  const ForbiddenStoreSelectionState._() : super._();

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForbiddenStoreSelectionStateCopyWith<ForbiddenStoreSelectionState>
      get copyWith => throw _privateConstructorUsedError;
}
