// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_selection_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StoreSelectionDetailEventTearOff {
  const _$StoreSelectionDetailEventTearOff();

  ReadStoreSelectionDetailEvent readAllDetails(String requestId) {
    return ReadStoreSelectionDetailEvent(
      requestId,
    );
  }

  DeleteStoreSelectionDetailEvent deleteDetail(
      String requestId, String detailId) {
    return DeleteStoreSelectionDetailEvent(
      requestId,
      detailId,
    );
  }
}

/// @nodoc
const $StoreSelectionDetailEvent = _$StoreSelectionDetailEventTearOff();

/// @nodoc
mixin _$StoreSelectionDetailEvent {
  String get requestId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId) readAllDetails,
    required TResult Function(String requestId, String detailId) deleteDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String requestId)? readAllDetails,
    TResult Function(String requestId, String detailId)? deleteDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId)? readAllDetails,
    TResult Function(String requestId, String detailId)? deleteDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadStoreSelectionDetailEvent value)
        readAllDetails,
    required TResult Function(DeleteStoreSelectionDetailEvent value)
        deleteDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadStoreSelectionDetailEvent value)? readAllDetails,
    TResult Function(DeleteStoreSelectionDetailEvent value)? deleteDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadStoreSelectionDetailEvent value)? readAllDetails,
    TResult Function(DeleteStoreSelectionDetailEvent value)? deleteDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoreSelectionDetailEventCopyWith<StoreSelectionDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreSelectionDetailEventCopyWith<$Res> {
  factory $StoreSelectionDetailEventCopyWith(StoreSelectionDetailEvent value,
          $Res Function(StoreSelectionDetailEvent) then) =
      _$StoreSelectionDetailEventCopyWithImpl<$Res>;
  $Res call({String requestId});
}

/// @nodoc
class _$StoreSelectionDetailEventCopyWithImpl<$Res>
    implements $StoreSelectionDetailEventCopyWith<$Res> {
  _$StoreSelectionDetailEventCopyWithImpl(this._value, this._then);

  final StoreSelectionDetailEvent _value;
  // ignore: unused_field
  final $Res Function(StoreSelectionDetailEvent) _then;

  @override
  $Res call({
    Object? requestId = freezed,
  }) {
    return _then(_value.copyWith(
      requestId: requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $ReadStoreSelectionDetailEventCopyWith<$Res>
    implements $StoreSelectionDetailEventCopyWith<$Res> {
  factory $ReadStoreSelectionDetailEventCopyWith(
          ReadStoreSelectionDetailEvent value,
          $Res Function(ReadStoreSelectionDetailEvent) then) =
      _$ReadStoreSelectionDetailEventCopyWithImpl<$Res>;
  @override
  $Res call({String requestId});
}

/// @nodoc
class _$ReadStoreSelectionDetailEventCopyWithImpl<$Res>
    extends _$StoreSelectionDetailEventCopyWithImpl<$Res>
    implements $ReadStoreSelectionDetailEventCopyWith<$Res> {
  _$ReadStoreSelectionDetailEventCopyWithImpl(
      ReadStoreSelectionDetailEvent _value,
      $Res Function(ReadStoreSelectionDetailEvent) _then)
      : super(_value, (v) => _then(v as ReadStoreSelectionDetailEvent));

  @override
  ReadStoreSelectionDetailEvent get _value =>
      super._value as ReadStoreSelectionDetailEvent;

  @override
  $Res call({
    Object? requestId = freezed,
  }) {
    return _then(ReadStoreSelectionDetailEvent(
      requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReadStoreSelectionDetailEvent extends ReadStoreSelectionDetailEvent {
  const _$ReadStoreSelectionDetailEvent(this.requestId) : super._();

  @override
  final String requestId;

  @override
  String toString() {
    return 'StoreSelectionDetailEvent.readAllDetails(requestId: $requestId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReadStoreSelectionDetailEvent &&
            (identical(other.requestId, requestId) ||
                const DeepCollectionEquality()
                    .equals(other.requestId, requestId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(requestId);

  @JsonKey(ignore: true)
  @override
  $ReadStoreSelectionDetailEventCopyWith<ReadStoreSelectionDetailEvent>
      get copyWith => _$ReadStoreSelectionDetailEventCopyWithImpl<
          ReadStoreSelectionDetailEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId) readAllDetails,
    required TResult Function(String requestId, String detailId) deleteDetail,
  }) {
    return readAllDetails(requestId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String requestId)? readAllDetails,
    TResult Function(String requestId, String detailId)? deleteDetail,
  }) {
    return readAllDetails?.call(requestId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId)? readAllDetails,
    TResult Function(String requestId, String detailId)? deleteDetail,
    required TResult orElse(),
  }) {
    if (readAllDetails != null) {
      return readAllDetails(requestId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadStoreSelectionDetailEvent value)
        readAllDetails,
    required TResult Function(DeleteStoreSelectionDetailEvent value)
        deleteDetail,
  }) {
    return readAllDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadStoreSelectionDetailEvent value)? readAllDetails,
    TResult Function(DeleteStoreSelectionDetailEvent value)? deleteDetail,
  }) {
    return readAllDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadStoreSelectionDetailEvent value)? readAllDetails,
    TResult Function(DeleteStoreSelectionDetailEvent value)? deleteDetail,
    required TResult orElse(),
  }) {
    if (readAllDetails != null) {
      return readAllDetails(this);
    }
    return orElse();
  }
}

abstract class ReadStoreSelectionDetailEvent extends StoreSelectionDetailEvent {
  const factory ReadStoreSelectionDetailEvent(String requestId) =
      _$ReadStoreSelectionDetailEvent;
  const ReadStoreSelectionDetailEvent._() : super._();

  @override
  String get requestId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ReadStoreSelectionDetailEventCopyWith<ReadStoreSelectionDetailEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteStoreSelectionDetailEventCopyWith<$Res>
    implements $StoreSelectionDetailEventCopyWith<$Res> {
  factory $DeleteStoreSelectionDetailEventCopyWith(
          DeleteStoreSelectionDetailEvent value,
          $Res Function(DeleteStoreSelectionDetailEvent) then) =
      _$DeleteStoreSelectionDetailEventCopyWithImpl<$Res>;
  @override
  $Res call({String requestId, String detailId});
}

/// @nodoc
class _$DeleteStoreSelectionDetailEventCopyWithImpl<$Res>
    extends _$StoreSelectionDetailEventCopyWithImpl<$Res>
    implements $DeleteStoreSelectionDetailEventCopyWith<$Res> {
  _$DeleteStoreSelectionDetailEventCopyWithImpl(
      DeleteStoreSelectionDetailEvent _value,
      $Res Function(DeleteStoreSelectionDetailEvent) _then)
      : super(_value, (v) => _then(v as DeleteStoreSelectionDetailEvent));

  @override
  DeleteStoreSelectionDetailEvent get _value =>
      super._value as DeleteStoreSelectionDetailEvent;

  @override
  $Res call({
    Object? requestId = freezed,
    Object? detailId = freezed,
  }) {
    return _then(DeleteStoreSelectionDetailEvent(
      requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      detailId == freezed
          ? _value.detailId
          : detailId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteStoreSelectionDetailEvent
    extends DeleteStoreSelectionDetailEvent {
  const _$DeleteStoreSelectionDetailEvent(this.requestId, this.detailId)
      : super._();

  @override
  final String requestId;
  @override
  final String detailId;

  @override
  String toString() {
    return 'StoreSelectionDetailEvent.deleteDetail(requestId: $requestId, detailId: $detailId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteStoreSelectionDetailEvent &&
            (identical(other.requestId, requestId) ||
                const DeepCollectionEquality()
                    .equals(other.requestId, requestId)) &&
            (identical(other.detailId, detailId) ||
                const DeepCollectionEquality()
                    .equals(other.detailId, detailId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(requestId) ^
      const DeepCollectionEquality().hash(detailId);

  @JsonKey(ignore: true)
  @override
  $DeleteStoreSelectionDetailEventCopyWith<DeleteStoreSelectionDetailEvent>
      get copyWith => _$DeleteStoreSelectionDetailEventCopyWithImpl<
          DeleteStoreSelectionDetailEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId) readAllDetails,
    required TResult Function(String requestId, String detailId) deleteDetail,
  }) {
    return deleteDetail(requestId, detailId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String requestId)? readAllDetails,
    TResult Function(String requestId, String detailId)? deleteDetail,
  }) {
    return deleteDetail?.call(requestId, detailId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId)? readAllDetails,
    TResult Function(String requestId, String detailId)? deleteDetail,
    required TResult orElse(),
  }) {
    if (deleteDetail != null) {
      return deleteDetail(requestId, detailId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadStoreSelectionDetailEvent value)
        readAllDetails,
    required TResult Function(DeleteStoreSelectionDetailEvent value)
        deleteDetail,
  }) {
    return deleteDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadStoreSelectionDetailEvent value)? readAllDetails,
    TResult Function(DeleteStoreSelectionDetailEvent value)? deleteDetail,
  }) {
    return deleteDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadStoreSelectionDetailEvent value)? readAllDetails,
    TResult Function(DeleteStoreSelectionDetailEvent value)? deleteDetail,
    required TResult orElse(),
  }) {
    if (deleteDetail != null) {
      return deleteDetail(this);
    }
    return orElse();
  }
}

abstract class DeleteStoreSelectionDetailEvent
    extends StoreSelectionDetailEvent {
  const factory DeleteStoreSelectionDetailEvent(
      String requestId, String detailId) = _$DeleteStoreSelectionDetailEvent;
  const DeleteStoreSelectionDetailEvent._() : super._();

  @override
  String get requestId => throw _privateConstructorUsedError;
  String get detailId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DeleteStoreSelectionDetailEventCopyWith<DeleteStoreSelectionDetailEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$StoreSelectionDetailStateTearOff {
  const _$StoreSelectionDetailStateTearOff();

  InitialStoreSelectionDetailState initial() {
    return const InitialStoreSelectionDetailState();
  }

  LoadingStoreSelectionDetailState loading(String message) {
    return LoadingStoreSelectionDetailState(
      message,
    );
  }

  LoadedStoreSelectionDetailState loaded(
      List<StoreSelectionRequestDetailModel> result) {
    return LoadedStoreSelectionDetailState(
      result,
    );
  }

  DeletingStoreSelectionDetailState deleting(String message) {
    return DeletingStoreSelectionDetailState(
      message,
    );
  }

  DeletedStoreSelectionDetailState deleted() {
    return const DeletedStoreSelectionDetailState();
  }

  FailureStoreSelectionDetailState failure(String message) {
    return FailureStoreSelectionDetailState(
      message,
    );
  }
}

/// @nodoc
const $StoreSelectionDetailState = _$StoreSelectionDetailStateTearOff();

/// @nodoc
mixin _$StoreSelectionDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(List<StoreSelectionRequestDetailModel> result)
        loaded,
    required TResult Function(String message) deleting,
    required TResult Function() deleted,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(List<StoreSelectionRequestDetailModel> result)? loaded,
    TResult Function(String message)? deleting,
    TResult Function()? deleted,
    TResult Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(List<StoreSelectionRequestDetailModel> result)? loaded,
    TResult Function(String message)? deleting,
    TResult Function()? deleted,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStoreSelectionDetailState value) initial,
    required TResult Function(LoadingStoreSelectionDetailState value) loading,
    required TResult Function(LoadedStoreSelectionDetailState value) loaded,
    required TResult Function(DeletingStoreSelectionDetailState value) deleting,
    required TResult Function(DeletedStoreSelectionDetailState value) deleted,
    required TResult Function(FailureStoreSelectionDetailState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreSelectionDetailState value)? initial,
    TResult Function(LoadingStoreSelectionDetailState value)? loading,
    TResult Function(LoadedStoreSelectionDetailState value)? loaded,
    TResult Function(DeletingStoreSelectionDetailState value)? deleting,
    TResult Function(DeletedStoreSelectionDetailState value)? deleted,
    TResult Function(FailureStoreSelectionDetailState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreSelectionDetailState value)? initial,
    TResult Function(LoadingStoreSelectionDetailState value)? loading,
    TResult Function(LoadedStoreSelectionDetailState value)? loaded,
    TResult Function(DeletingStoreSelectionDetailState value)? deleting,
    TResult Function(DeletedStoreSelectionDetailState value)? deleted,
    TResult Function(FailureStoreSelectionDetailState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreSelectionDetailStateCopyWith<$Res> {
  factory $StoreSelectionDetailStateCopyWith(StoreSelectionDetailState value,
          $Res Function(StoreSelectionDetailState) then) =
      _$StoreSelectionDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreSelectionDetailStateCopyWithImpl<$Res>
    implements $StoreSelectionDetailStateCopyWith<$Res> {
  _$StoreSelectionDetailStateCopyWithImpl(this._value, this._then);

  final StoreSelectionDetailState _value;
  // ignore: unused_field
  final $Res Function(StoreSelectionDetailState) _then;
}

/// @nodoc
abstract class $InitialStoreSelectionDetailStateCopyWith<$Res> {
  factory $InitialStoreSelectionDetailStateCopyWith(
          InitialStoreSelectionDetailState value,
          $Res Function(InitialStoreSelectionDetailState) then) =
      _$InitialStoreSelectionDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialStoreSelectionDetailStateCopyWithImpl<$Res>
    extends _$StoreSelectionDetailStateCopyWithImpl<$Res>
    implements $InitialStoreSelectionDetailStateCopyWith<$Res> {
  _$InitialStoreSelectionDetailStateCopyWithImpl(
      InitialStoreSelectionDetailState _value,
      $Res Function(InitialStoreSelectionDetailState) _then)
      : super(_value, (v) => _then(v as InitialStoreSelectionDetailState));

  @override
  InitialStoreSelectionDetailState get _value =>
      super._value as InitialStoreSelectionDetailState;
}

/// @nodoc

class _$InitialStoreSelectionDetailState
    extends InitialStoreSelectionDetailState {
  const _$InitialStoreSelectionDetailState() : super._();

  @override
  String toString() {
    return 'StoreSelectionDetailState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitialStoreSelectionDetailState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(List<StoreSelectionRequestDetailModel> result)
        loaded,
    required TResult Function(String message) deleting,
    required TResult Function() deleted,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(List<StoreSelectionRequestDetailModel> result)? loaded,
    TResult Function(String message)? deleting,
    TResult Function()? deleted,
    TResult Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(List<StoreSelectionRequestDetailModel> result)? loaded,
    TResult Function(String message)? deleting,
    TResult Function()? deleted,
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
    required TResult Function(InitialStoreSelectionDetailState value) initial,
    required TResult Function(LoadingStoreSelectionDetailState value) loading,
    required TResult Function(LoadedStoreSelectionDetailState value) loaded,
    required TResult Function(DeletingStoreSelectionDetailState value) deleting,
    required TResult Function(DeletedStoreSelectionDetailState value) deleted,
    required TResult Function(FailureStoreSelectionDetailState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreSelectionDetailState value)? initial,
    TResult Function(LoadingStoreSelectionDetailState value)? loading,
    TResult Function(LoadedStoreSelectionDetailState value)? loaded,
    TResult Function(DeletingStoreSelectionDetailState value)? deleting,
    TResult Function(DeletedStoreSelectionDetailState value)? deleted,
    TResult Function(FailureStoreSelectionDetailState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreSelectionDetailState value)? initial,
    TResult Function(LoadingStoreSelectionDetailState value)? loading,
    TResult Function(LoadedStoreSelectionDetailState value)? loaded,
    TResult Function(DeletingStoreSelectionDetailState value)? deleting,
    TResult Function(DeletedStoreSelectionDetailState value)? deleted,
    TResult Function(FailureStoreSelectionDetailState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialStoreSelectionDetailState
    extends StoreSelectionDetailState {
  const factory InitialStoreSelectionDetailState() =
      _$InitialStoreSelectionDetailState;
  const InitialStoreSelectionDetailState._() : super._();
}

/// @nodoc
abstract class $LoadingStoreSelectionDetailStateCopyWith<$Res> {
  factory $LoadingStoreSelectionDetailStateCopyWith(
          LoadingStoreSelectionDetailState value,
          $Res Function(LoadingStoreSelectionDetailState) then) =
      _$LoadingStoreSelectionDetailStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$LoadingStoreSelectionDetailStateCopyWithImpl<$Res>
    extends _$StoreSelectionDetailStateCopyWithImpl<$Res>
    implements $LoadingStoreSelectionDetailStateCopyWith<$Res> {
  _$LoadingStoreSelectionDetailStateCopyWithImpl(
      LoadingStoreSelectionDetailState _value,
      $Res Function(LoadingStoreSelectionDetailState) _then)
      : super(_value, (v) => _then(v as LoadingStoreSelectionDetailState));

  @override
  LoadingStoreSelectionDetailState get _value =>
      super._value as LoadingStoreSelectionDetailState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(LoadingStoreSelectionDetailState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadingStoreSelectionDetailState
    extends LoadingStoreSelectionDetailState {
  const _$LoadingStoreSelectionDetailState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'StoreSelectionDetailState.loading(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadingStoreSelectionDetailState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $LoadingStoreSelectionDetailStateCopyWith<LoadingStoreSelectionDetailState>
      get copyWith => _$LoadingStoreSelectionDetailStateCopyWithImpl<
          LoadingStoreSelectionDetailState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(List<StoreSelectionRequestDetailModel> result)
        loaded,
    required TResult Function(String message) deleting,
    required TResult Function() deleted,
    required TResult Function(String message) failure,
  }) {
    return loading(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(List<StoreSelectionRequestDetailModel> result)? loaded,
    TResult Function(String message)? deleting,
    TResult Function()? deleted,
    TResult Function(String message)? failure,
  }) {
    return loading?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(List<StoreSelectionRequestDetailModel> result)? loaded,
    TResult Function(String message)? deleting,
    TResult Function()? deleted,
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
    required TResult Function(InitialStoreSelectionDetailState value) initial,
    required TResult Function(LoadingStoreSelectionDetailState value) loading,
    required TResult Function(LoadedStoreSelectionDetailState value) loaded,
    required TResult Function(DeletingStoreSelectionDetailState value) deleting,
    required TResult Function(DeletedStoreSelectionDetailState value) deleted,
    required TResult Function(FailureStoreSelectionDetailState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreSelectionDetailState value)? initial,
    TResult Function(LoadingStoreSelectionDetailState value)? loading,
    TResult Function(LoadedStoreSelectionDetailState value)? loaded,
    TResult Function(DeletingStoreSelectionDetailState value)? deleting,
    TResult Function(DeletedStoreSelectionDetailState value)? deleted,
    TResult Function(FailureStoreSelectionDetailState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreSelectionDetailState value)? initial,
    TResult Function(LoadingStoreSelectionDetailState value)? loading,
    TResult Function(LoadedStoreSelectionDetailState value)? loaded,
    TResult Function(DeletingStoreSelectionDetailState value)? deleting,
    TResult Function(DeletedStoreSelectionDetailState value)? deleted,
    TResult Function(FailureStoreSelectionDetailState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingStoreSelectionDetailState
    extends StoreSelectionDetailState {
  const factory LoadingStoreSelectionDetailState(String message) =
      _$LoadingStoreSelectionDetailState;
  const LoadingStoreSelectionDetailState._() : super._();

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadingStoreSelectionDetailStateCopyWith<LoadingStoreSelectionDetailState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedStoreSelectionDetailStateCopyWith<$Res> {
  factory $LoadedStoreSelectionDetailStateCopyWith(
          LoadedStoreSelectionDetailState value,
          $Res Function(LoadedStoreSelectionDetailState) then) =
      _$LoadedStoreSelectionDetailStateCopyWithImpl<$Res>;
  $Res call({List<StoreSelectionRequestDetailModel> result});
}

/// @nodoc
class _$LoadedStoreSelectionDetailStateCopyWithImpl<$Res>
    extends _$StoreSelectionDetailStateCopyWithImpl<$Res>
    implements $LoadedStoreSelectionDetailStateCopyWith<$Res> {
  _$LoadedStoreSelectionDetailStateCopyWithImpl(
      LoadedStoreSelectionDetailState _value,
      $Res Function(LoadedStoreSelectionDetailState) _then)
      : super(_value, (v) => _then(v as LoadedStoreSelectionDetailState));

  @override
  LoadedStoreSelectionDetailState get _value =>
      super._value as LoadedStoreSelectionDetailState;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(LoadedStoreSelectionDetailState(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<StoreSelectionRequestDetailModel>,
    ));
  }
}

/// @nodoc

class _$LoadedStoreSelectionDetailState
    extends LoadedStoreSelectionDetailState {
  const _$LoadedStoreSelectionDetailState(this.result) : super._();

  @override
  final List<StoreSelectionRequestDetailModel> result;

  @override
  String toString() {
    return 'StoreSelectionDetailState.loaded(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedStoreSelectionDetailState &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  $LoadedStoreSelectionDetailStateCopyWith<LoadedStoreSelectionDetailState>
      get copyWith => _$LoadedStoreSelectionDetailStateCopyWithImpl<
          LoadedStoreSelectionDetailState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(List<StoreSelectionRequestDetailModel> result)
        loaded,
    required TResult Function(String message) deleting,
    required TResult Function() deleted,
    required TResult Function(String message) failure,
  }) {
    return loaded(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(List<StoreSelectionRequestDetailModel> result)? loaded,
    TResult Function(String message)? deleting,
    TResult Function()? deleted,
    TResult Function(String message)? failure,
  }) {
    return loaded?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(List<StoreSelectionRequestDetailModel> result)? loaded,
    TResult Function(String message)? deleting,
    TResult Function()? deleted,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStoreSelectionDetailState value) initial,
    required TResult Function(LoadingStoreSelectionDetailState value) loading,
    required TResult Function(LoadedStoreSelectionDetailState value) loaded,
    required TResult Function(DeletingStoreSelectionDetailState value) deleting,
    required TResult Function(DeletedStoreSelectionDetailState value) deleted,
    required TResult Function(FailureStoreSelectionDetailState value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreSelectionDetailState value)? initial,
    TResult Function(LoadingStoreSelectionDetailState value)? loading,
    TResult Function(LoadedStoreSelectionDetailState value)? loaded,
    TResult Function(DeletingStoreSelectionDetailState value)? deleting,
    TResult Function(DeletedStoreSelectionDetailState value)? deleted,
    TResult Function(FailureStoreSelectionDetailState value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreSelectionDetailState value)? initial,
    TResult Function(LoadingStoreSelectionDetailState value)? loading,
    TResult Function(LoadedStoreSelectionDetailState value)? loaded,
    TResult Function(DeletingStoreSelectionDetailState value)? deleting,
    TResult Function(DeletedStoreSelectionDetailState value)? deleted,
    TResult Function(FailureStoreSelectionDetailState value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedStoreSelectionDetailState
    extends StoreSelectionDetailState {
  const factory LoadedStoreSelectionDetailState(
          List<StoreSelectionRequestDetailModel> result) =
      _$LoadedStoreSelectionDetailState;
  const LoadedStoreSelectionDetailState._() : super._();

  List<StoreSelectionRequestDetailModel> get result =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedStoreSelectionDetailStateCopyWith<LoadedStoreSelectionDetailState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeletingStoreSelectionDetailStateCopyWith<$Res> {
  factory $DeletingStoreSelectionDetailStateCopyWith(
          DeletingStoreSelectionDetailState value,
          $Res Function(DeletingStoreSelectionDetailState) then) =
      _$DeletingStoreSelectionDetailStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$DeletingStoreSelectionDetailStateCopyWithImpl<$Res>
    extends _$StoreSelectionDetailStateCopyWithImpl<$Res>
    implements $DeletingStoreSelectionDetailStateCopyWith<$Res> {
  _$DeletingStoreSelectionDetailStateCopyWithImpl(
      DeletingStoreSelectionDetailState _value,
      $Res Function(DeletingStoreSelectionDetailState) _then)
      : super(_value, (v) => _then(v as DeletingStoreSelectionDetailState));

  @override
  DeletingStoreSelectionDetailState get _value =>
      super._value as DeletingStoreSelectionDetailState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(DeletingStoreSelectionDetailState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeletingStoreSelectionDetailState
    extends DeletingStoreSelectionDetailState {
  const _$DeletingStoreSelectionDetailState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'StoreSelectionDetailState.deleting(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeletingStoreSelectionDetailState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $DeletingStoreSelectionDetailStateCopyWith<DeletingStoreSelectionDetailState>
      get copyWith => _$DeletingStoreSelectionDetailStateCopyWithImpl<
          DeletingStoreSelectionDetailState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(List<StoreSelectionRequestDetailModel> result)
        loaded,
    required TResult Function(String message) deleting,
    required TResult Function() deleted,
    required TResult Function(String message) failure,
  }) {
    return deleting(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(List<StoreSelectionRequestDetailModel> result)? loaded,
    TResult Function(String message)? deleting,
    TResult Function()? deleted,
    TResult Function(String message)? failure,
  }) {
    return deleting?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(List<StoreSelectionRequestDetailModel> result)? loaded,
    TResult Function(String message)? deleting,
    TResult Function()? deleted,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStoreSelectionDetailState value) initial,
    required TResult Function(LoadingStoreSelectionDetailState value) loading,
    required TResult Function(LoadedStoreSelectionDetailState value) loaded,
    required TResult Function(DeletingStoreSelectionDetailState value) deleting,
    required TResult Function(DeletedStoreSelectionDetailState value) deleted,
    required TResult Function(FailureStoreSelectionDetailState value) failure,
  }) {
    return deleting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreSelectionDetailState value)? initial,
    TResult Function(LoadingStoreSelectionDetailState value)? loading,
    TResult Function(LoadedStoreSelectionDetailState value)? loaded,
    TResult Function(DeletingStoreSelectionDetailState value)? deleting,
    TResult Function(DeletedStoreSelectionDetailState value)? deleted,
    TResult Function(FailureStoreSelectionDetailState value)? failure,
  }) {
    return deleting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreSelectionDetailState value)? initial,
    TResult Function(LoadingStoreSelectionDetailState value)? loading,
    TResult Function(LoadedStoreSelectionDetailState value)? loaded,
    TResult Function(DeletingStoreSelectionDetailState value)? deleting,
    TResult Function(DeletedStoreSelectionDetailState value)? deleted,
    TResult Function(FailureStoreSelectionDetailState value)? failure,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting(this);
    }
    return orElse();
  }
}

abstract class DeletingStoreSelectionDetailState
    extends StoreSelectionDetailState {
  const factory DeletingStoreSelectionDetailState(String message) =
      _$DeletingStoreSelectionDetailState;
  const DeletingStoreSelectionDetailState._() : super._();

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeletingStoreSelectionDetailStateCopyWith<DeletingStoreSelectionDetailState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeletedStoreSelectionDetailStateCopyWith<$Res> {
  factory $DeletedStoreSelectionDetailStateCopyWith(
          DeletedStoreSelectionDetailState value,
          $Res Function(DeletedStoreSelectionDetailState) then) =
      _$DeletedStoreSelectionDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeletedStoreSelectionDetailStateCopyWithImpl<$Res>
    extends _$StoreSelectionDetailStateCopyWithImpl<$Res>
    implements $DeletedStoreSelectionDetailStateCopyWith<$Res> {
  _$DeletedStoreSelectionDetailStateCopyWithImpl(
      DeletedStoreSelectionDetailState _value,
      $Res Function(DeletedStoreSelectionDetailState) _then)
      : super(_value, (v) => _then(v as DeletedStoreSelectionDetailState));

  @override
  DeletedStoreSelectionDetailState get _value =>
      super._value as DeletedStoreSelectionDetailState;
}

/// @nodoc

class _$DeletedStoreSelectionDetailState
    extends DeletedStoreSelectionDetailState {
  const _$DeletedStoreSelectionDetailState() : super._();

  @override
  String toString() {
    return 'StoreSelectionDetailState.deleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeletedStoreSelectionDetailState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(List<StoreSelectionRequestDetailModel> result)
        loaded,
    required TResult Function(String message) deleting,
    required TResult Function() deleted,
    required TResult Function(String message) failure,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(List<StoreSelectionRequestDetailModel> result)? loaded,
    TResult Function(String message)? deleting,
    TResult Function()? deleted,
    TResult Function(String message)? failure,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(List<StoreSelectionRequestDetailModel> result)? loaded,
    TResult Function(String message)? deleting,
    TResult Function()? deleted,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStoreSelectionDetailState value) initial,
    required TResult Function(LoadingStoreSelectionDetailState value) loading,
    required TResult Function(LoadedStoreSelectionDetailState value) loaded,
    required TResult Function(DeletingStoreSelectionDetailState value) deleting,
    required TResult Function(DeletedStoreSelectionDetailState value) deleted,
    required TResult Function(FailureStoreSelectionDetailState value) failure,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreSelectionDetailState value)? initial,
    TResult Function(LoadingStoreSelectionDetailState value)? loading,
    TResult Function(LoadedStoreSelectionDetailState value)? loaded,
    TResult Function(DeletingStoreSelectionDetailState value)? deleting,
    TResult Function(DeletedStoreSelectionDetailState value)? deleted,
    TResult Function(FailureStoreSelectionDetailState value)? failure,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreSelectionDetailState value)? initial,
    TResult Function(LoadingStoreSelectionDetailState value)? loading,
    TResult Function(LoadedStoreSelectionDetailState value)? loaded,
    TResult Function(DeletingStoreSelectionDetailState value)? deleting,
    TResult Function(DeletedStoreSelectionDetailState value)? deleted,
    TResult Function(FailureStoreSelectionDetailState value)? failure,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class DeletedStoreSelectionDetailState
    extends StoreSelectionDetailState {
  const factory DeletedStoreSelectionDetailState() =
      _$DeletedStoreSelectionDetailState;
  const DeletedStoreSelectionDetailState._() : super._();
}

/// @nodoc
abstract class $FailureStoreSelectionDetailStateCopyWith<$Res> {
  factory $FailureStoreSelectionDetailStateCopyWith(
          FailureStoreSelectionDetailState value,
          $Res Function(FailureStoreSelectionDetailState) then) =
      _$FailureStoreSelectionDetailStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FailureStoreSelectionDetailStateCopyWithImpl<$Res>
    extends _$StoreSelectionDetailStateCopyWithImpl<$Res>
    implements $FailureStoreSelectionDetailStateCopyWith<$Res> {
  _$FailureStoreSelectionDetailStateCopyWithImpl(
      FailureStoreSelectionDetailState _value,
      $Res Function(FailureStoreSelectionDetailState) _then)
      : super(_value, (v) => _then(v as FailureStoreSelectionDetailState));

  @override
  FailureStoreSelectionDetailState get _value =>
      super._value as FailureStoreSelectionDetailState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(FailureStoreSelectionDetailState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureStoreSelectionDetailState
    extends FailureStoreSelectionDetailState {
  const _$FailureStoreSelectionDetailState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'StoreSelectionDetailState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FailureStoreSelectionDetailState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $FailureStoreSelectionDetailStateCopyWith<FailureStoreSelectionDetailState>
      get copyWith => _$FailureStoreSelectionDetailStateCopyWithImpl<
          FailureStoreSelectionDetailState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(List<StoreSelectionRequestDetailModel> result)
        loaded,
    required TResult Function(String message) deleting,
    required TResult Function() deleted,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(List<StoreSelectionRequestDetailModel> result)? loaded,
    TResult Function(String message)? deleting,
    TResult Function()? deleted,
    TResult Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(List<StoreSelectionRequestDetailModel> result)? loaded,
    TResult Function(String message)? deleting,
    TResult Function()? deleted,
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
    required TResult Function(InitialStoreSelectionDetailState value) initial,
    required TResult Function(LoadingStoreSelectionDetailState value) loading,
    required TResult Function(LoadedStoreSelectionDetailState value) loaded,
    required TResult Function(DeletingStoreSelectionDetailState value) deleting,
    required TResult Function(DeletedStoreSelectionDetailState value) deleted,
    required TResult Function(FailureStoreSelectionDetailState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreSelectionDetailState value)? initial,
    TResult Function(LoadingStoreSelectionDetailState value)? loading,
    TResult Function(LoadedStoreSelectionDetailState value)? loaded,
    TResult Function(DeletingStoreSelectionDetailState value)? deleting,
    TResult Function(DeletedStoreSelectionDetailState value)? deleted,
    TResult Function(FailureStoreSelectionDetailState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreSelectionDetailState value)? initial,
    TResult Function(LoadingStoreSelectionDetailState value)? loading,
    TResult Function(LoadedStoreSelectionDetailState value)? loaded,
    TResult Function(DeletingStoreSelectionDetailState value)? deleting,
    TResult Function(DeletedStoreSelectionDetailState value)? deleted,
    TResult Function(FailureStoreSelectionDetailState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FailureStoreSelectionDetailState
    extends StoreSelectionDetailState {
  const factory FailureStoreSelectionDetailState(String message) =
      _$FailureStoreSelectionDetailState;
  const FailureStoreSelectionDetailState._() : super._();

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FailureStoreSelectionDetailStateCopyWith<FailureStoreSelectionDetailState>
      get copyWith => throw _privateConstructorUsedError;
}
