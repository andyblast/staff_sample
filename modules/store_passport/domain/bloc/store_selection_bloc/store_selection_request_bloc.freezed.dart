// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_selection_request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StoreSelectionRequestEventTearOff {
  const _$StoreSelectionRequestEventTearOff();

  CreateStoreSelectionRequestEvent createRequest(
      StoreSelectionPostModel requestModel) {
    return CreateStoreSelectionRequestEvent(
      requestModel,
    );
  }

  DeleteRequestStoreSelectionRequestEvent deleteRequest(String requestId) {
    return DeleteRequestStoreSelectionRequestEvent(
      requestId,
    );
  }
}

/// @nodoc
const $StoreSelectionRequestEvent = _$StoreSelectionRequestEventTearOff();

/// @nodoc
mixin _$StoreSelectionRequestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StoreSelectionPostModel requestModel)
        createRequest,
    required TResult Function(String requestId) deleteRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StoreSelectionPostModel requestModel)? createRequest,
    TResult Function(String requestId)? deleteRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoreSelectionPostModel requestModel)? createRequest,
    TResult Function(String requestId)? deleteRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateStoreSelectionRequestEvent value)
        createRequest,
    required TResult Function(DeleteRequestStoreSelectionRequestEvent value)
        deleteRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateStoreSelectionRequestEvent value)? createRequest,
    TResult Function(DeleteRequestStoreSelectionRequestEvent value)?
        deleteRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateStoreSelectionRequestEvent value)? createRequest,
    TResult Function(DeleteRequestStoreSelectionRequestEvent value)?
        deleteRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreSelectionRequestEventCopyWith<$Res> {
  factory $StoreSelectionRequestEventCopyWith(StoreSelectionRequestEvent value,
          $Res Function(StoreSelectionRequestEvent) then) =
      _$StoreSelectionRequestEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreSelectionRequestEventCopyWithImpl<$Res>
    implements $StoreSelectionRequestEventCopyWith<$Res> {
  _$StoreSelectionRequestEventCopyWithImpl(this._value, this._then);

  final StoreSelectionRequestEvent _value;
  // ignore: unused_field
  final $Res Function(StoreSelectionRequestEvent) _then;
}

/// @nodoc
abstract class $CreateStoreSelectionRequestEventCopyWith<$Res> {
  factory $CreateStoreSelectionRequestEventCopyWith(
          CreateStoreSelectionRequestEvent value,
          $Res Function(CreateStoreSelectionRequestEvent) then) =
      _$CreateStoreSelectionRequestEventCopyWithImpl<$Res>;
  $Res call({StoreSelectionPostModel requestModel});

  $StoreSelectionPostModelCopyWith<$Res> get requestModel;
}

/// @nodoc
class _$CreateStoreSelectionRequestEventCopyWithImpl<$Res>
    extends _$StoreSelectionRequestEventCopyWithImpl<$Res>
    implements $CreateStoreSelectionRequestEventCopyWith<$Res> {
  _$CreateStoreSelectionRequestEventCopyWithImpl(
      CreateStoreSelectionRequestEvent _value,
      $Res Function(CreateStoreSelectionRequestEvent) _then)
      : super(_value, (v) => _then(v as CreateStoreSelectionRequestEvent));

  @override
  CreateStoreSelectionRequestEvent get _value =>
      super._value as CreateStoreSelectionRequestEvent;

  @override
  $Res call({
    Object? requestModel = freezed,
  }) {
    return _then(CreateStoreSelectionRequestEvent(
      requestModel == freezed
          ? _value.requestModel
          : requestModel // ignore: cast_nullable_to_non_nullable
              as StoreSelectionPostModel,
    ));
  }

  @override
  $StoreSelectionPostModelCopyWith<$Res> get requestModel {
    return $StoreSelectionPostModelCopyWith<$Res>(_value.requestModel, (value) {
      return _then(_value.copyWith(requestModel: value));
    });
  }
}

/// @nodoc

class _$CreateStoreSelectionRequestEvent
    extends CreateStoreSelectionRequestEvent {
  const _$CreateStoreSelectionRequestEvent(this.requestModel) : super._();

  @override
  final StoreSelectionPostModel requestModel;

  @override
  String toString() {
    return 'StoreSelectionRequestEvent.createRequest(requestModel: $requestModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateStoreSelectionRequestEvent &&
            (identical(other.requestModel, requestModel) ||
                const DeepCollectionEquality()
                    .equals(other.requestModel, requestModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(requestModel);

  @JsonKey(ignore: true)
  @override
  $CreateStoreSelectionRequestEventCopyWith<CreateStoreSelectionRequestEvent>
      get copyWith => _$CreateStoreSelectionRequestEventCopyWithImpl<
          CreateStoreSelectionRequestEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StoreSelectionPostModel requestModel)
        createRequest,
    required TResult Function(String requestId) deleteRequest,
  }) {
    return createRequest(requestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StoreSelectionPostModel requestModel)? createRequest,
    TResult Function(String requestId)? deleteRequest,
  }) {
    return createRequest?.call(requestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoreSelectionPostModel requestModel)? createRequest,
    TResult Function(String requestId)? deleteRequest,
    required TResult orElse(),
  }) {
    if (createRequest != null) {
      return createRequest(requestModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateStoreSelectionRequestEvent value)
        createRequest,
    required TResult Function(DeleteRequestStoreSelectionRequestEvent value)
        deleteRequest,
  }) {
    return createRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateStoreSelectionRequestEvent value)? createRequest,
    TResult Function(DeleteRequestStoreSelectionRequestEvent value)?
        deleteRequest,
  }) {
    return createRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateStoreSelectionRequestEvent value)? createRequest,
    TResult Function(DeleteRequestStoreSelectionRequestEvent value)?
        deleteRequest,
    required TResult orElse(),
  }) {
    if (createRequest != null) {
      return createRequest(this);
    }
    return orElse();
  }
}

abstract class CreateStoreSelectionRequestEvent
    extends StoreSelectionRequestEvent {
  const factory CreateStoreSelectionRequestEvent(
          StoreSelectionPostModel requestModel) =
      _$CreateStoreSelectionRequestEvent;
  const CreateStoreSelectionRequestEvent._() : super._();

  StoreSelectionPostModel get requestModel =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateStoreSelectionRequestEventCopyWith<CreateStoreSelectionRequestEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteRequestStoreSelectionRequestEventCopyWith<$Res> {
  factory $DeleteRequestStoreSelectionRequestEventCopyWith(
          DeleteRequestStoreSelectionRequestEvent value,
          $Res Function(DeleteRequestStoreSelectionRequestEvent) then) =
      _$DeleteRequestStoreSelectionRequestEventCopyWithImpl<$Res>;
  $Res call({String requestId});
}

/// @nodoc
class _$DeleteRequestStoreSelectionRequestEventCopyWithImpl<$Res>
    extends _$StoreSelectionRequestEventCopyWithImpl<$Res>
    implements $DeleteRequestStoreSelectionRequestEventCopyWith<$Res> {
  _$DeleteRequestStoreSelectionRequestEventCopyWithImpl(
      DeleteRequestStoreSelectionRequestEvent _value,
      $Res Function(DeleteRequestStoreSelectionRequestEvent) _then)
      : super(
            _value, (v) => _then(v as DeleteRequestStoreSelectionRequestEvent));

  @override
  DeleteRequestStoreSelectionRequestEvent get _value =>
      super._value as DeleteRequestStoreSelectionRequestEvent;

  @override
  $Res call({
    Object? requestId = freezed,
  }) {
    return _then(DeleteRequestStoreSelectionRequestEvent(
      requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteRequestStoreSelectionRequestEvent
    extends DeleteRequestStoreSelectionRequestEvent {
  const _$DeleteRequestStoreSelectionRequestEvent(this.requestId) : super._();

  @override
  final String requestId;

  @override
  String toString() {
    return 'StoreSelectionRequestEvent.deleteRequest(requestId: $requestId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteRequestStoreSelectionRequestEvent &&
            (identical(other.requestId, requestId) ||
                const DeepCollectionEquality()
                    .equals(other.requestId, requestId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(requestId);

  @JsonKey(ignore: true)
  @override
  $DeleteRequestStoreSelectionRequestEventCopyWith<
          DeleteRequestStoreSelectionRequestEvent>
      get copyWith => _$DeleteRequestStoreSelectionRequestEventCopyWithImpl<
          DeleteRequestStoreSelectionRequestEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StoreSelectionPostModel requestModel)
        createRequest,
    required TResult Function(String requestId) deleteRequest,
  }) {
    return deleteRequest(requestId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StoreSelectionPostModel requestModel)? createRequest,
    TResult Function(String requestId)? deleteRequest,
  }) {
    return deleteRequest?.call(requestId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoreSelectionPostModel requestModel)? createRequest,
    TResult Function(String requestId)? deleteRequest,
    required TResult orElse(),
  }) {
    if (deleteRequest != null) {
      return deleteRequest(requestId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateStoreSelectionRequestEvent value)
        createRequest,
    required TResult Function(DeleteRequestStoreSelectionRequestEvent value)
        deleteRequest,
  }) {
    return deleteRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateStoreSelectionRequestEvent value)? createRequest,
    TResult Function(DeleteRequestStoreSelectionRequestEvent value)?
        deleteRequest,
  }) {
    return deleteRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateStoreSelectionRequestEvent value)? createRequest,
    TResult Function(DeleteRequestStoreSelectionRequestEvent value)?
        deleteRequest,
    required TResult orElse(),
  }) {
    if (deleteRequest != null) {
      return deleteRequest(this);
    }
    return orElse();
  }
}

abstract class DeleteRequestStoreSelectionRequestEvent
    extends StoreSelectionRequestEvent {
  const factory DeleteRequestStoreSelectionRequestEvent(String requestId) =
      _$DeleteRequestStoreSelectionRequestEvent;
  const DeleteRequestStoreSelectionRequestEvent._() : super._();

  String get requestId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteRequestStoreSelectionRequestEventCopyWith<
          DeleteRequestStoreSelectionRequestEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$StoreSelectionRequestStateTearOff {
  const _$StoreSelectionRequestStateTearOff();

  InitialStoreSelectionRequestState initial() {
    return const InitialStoreSelectionRequestState();
  }

  CreatingStoreSelectionRequestState creating(String message) {
    return CreatingStoreSelectionRequestState(
      message,
    );
  }

  CreatedStoreSelectionRequestState created() {
    return const CreatedStoreSelectionRequestState();
  }

  DeletingRequestStoreSelectionRequestState deletingRequest(String message) {
    return DeletingRequestStoreSelectionRequestState(
      message,
    );
  }

  DeletedRequestStoreSelectionRequestState deletedRequest() {
    return const DeletedRequestStoreSelectionRequestState();
  }

  FailureStoreSelectionRequestState failure(String message) {
    return FailureStoreSelectionRequestState(
      message,
    );
  }
}

/// @nodoc
const $StoreSelectionRequestState = _$StoreSelectionRequestStateTearOff();

/// @nodoc
mixin _$StoreSelectionRequestState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) creating,
    required TResult Function() created,
    required TResult Function(String message) deletingRequest,
    required TResult Function() deletedRequest,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? creating,
    TResult Function()? created,
    TResult Function(String message)? deletingRequest,
    TResult Function()? deletedRequest,
    TResult Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? creating,
    TResult Function()? created,
    TResult Function(String message)? deletingRequest,
    TResult Function()? deletedRequest,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStoreSelectionRequestState value) initial,
    required TResult Function(CreatingStoreSelectionRequestState value)
        creating,
    required TResult Function(CreatedStoreSelectionRequestState value) created,
    required TResult Function(DeletingRequestStoreSelectionRequestState value)
        deletingRequest,
    required TResult Function(DeletedRequestStoreSelectionRequestState value)
        deletedRequest,
    required TResult Function(FailureStoreSelectionRequestState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreSelectionRequestState value)? initial,
    TResult Function(CreatingStoreSelectionRequestState value)? creating,
    TResult Function(CreatedStoreSelectionRequestState value)? created,
    TResult Function(DeletingRequestStoreSelectionRequestState value)?
        deletingRequest,
    TResult Function(DeletedRequestStoreSelectionRequestState value)?
        deletedRequest,
    TResult Function(FailureStoreSelectionRequestState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreSelectionRequestState value)? initial,
    TResult Function(CreatingStoreSelectionRequestState value)? creating,
    TResult Function(CreatedStoreSelectionRequestState value)? created,
    TResult Function(DeletingRequestStoreSelectionRequestState value)?
        deletingRequest,
    TResult Function(DeletedRequestStoreSelectionRequestState value)?
        deletedRequest,
    TResult Function(FailureStoreSelectionRequestState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreSelectionRequestStateCopyWith<$Res> {
  factory $StoreSelectionRequestStateCopyWith(StoreSelectionRequestState value,
          $Res Function(StoreSelectionRequestState) then) =
      _$StoreSelectionRequestStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreSelectionRequestStateCopyWithImpl<$Res>
    implements $StoreSelectionRequestStateCopyWith<$Res> {
  _$StoreSelectionRequestStateCopyWithImpl(this._value, this._then);

  final StoreSelectionRequestState _value;
  // ignore: unused_field
  final $Res Function(StoreSelectionRequestState) _then;
}

/// @nodoc
abstract class $InitialStoreSelectionRequestStateCopyWith<$Res> {
  factory $InitialStoreSelectionRequestStateCopyWith(
          InitialStoreSelectionRequestState value,
          $Res Function(InitialStoreSelectionRequestState) then) =
      _$InitialStoreSelectionRequestStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialStoreSelectionRequestStateCopyWithImpl<$Res>
    extends _$StoreSelectionRequestStateCopyWithImpl<$Res>
    implements $InitialStoreSelectionRequestStateCopyWith<$Res> {
  _$InitialStoreSelectionRequestStateCopyWithImpl(
      InitialStoreSelectionRequestState _value,
      $Res Function(InitialStoreSelectionRequestState) _then)
      : super(_value, (v) => _then(v as InitialStoreSelectionRequestState));

  @override
  InitialStoreSelectionRequestState get _value =>
      super._value as InitialStoreSelectionRequestState;
}

/// @nodoc

class _$InitialStoreSelectionRequestState
    extends InitialStoreSelectionRequestState {
  const _$InitialStoreSelectionRequestState() : super._();

  @override
  String toString() {
    return 'StoreSelectionRequestState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitialStoreSelectionRequestState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) creating,
    required TResult Function() created,
    required TResult Function(String message) deletingRequest,
    required TResult Function() deletedRequest,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? creating,
    TResult Function()? created,
    TResult Function(String message)? deletingRequest,
    TResult Function()? deletedRequest,
    TResult Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? creating,
    TResult Function()? created,
    TResult Function(String message)? deletingRequest,
    TResult Function()? deletedRequest,
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
    required TResult Function(InitialStoreSelectionRequestState value) initial,
    required TResult Function(CreatingStoreSelectionRequestState value)
        creating,
    required TResult Function(CreatedStoreSelectionRequestState value) created,
    required TResult Function(DeletingRequestStoreSelectionRequestState value)
        deletingRequest,
    required TResult Function(DeletedRequestStoreSelectionRequestState value)
        deletedRequest,
    required TResult Function(FailureStoreSelectionRequestState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreSelectionRequestState value)? initial,
    TResult Function(CreatingStoreSelectionRequestState value)? creating,
    TResult Function(CreatedStoreSelectionRequestState value)? created,
    TResult Function(DeletingRequestStoreSelectionRequestState value)?
        deletingRequest,
    TResult Function(DeletedRequestStoreSelectionRequestState value)?
        deletedRequest,
    TResult Function(FailureStoreSelectionRequestState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreSelectionRequestState value)? initial,
    TResult Function(CreatingStoreSelectionRequestState value)? creating,
    TResult Function(CreatedStoreSelectionRequestState value)? created,
    TResult Function(DeletingRequestStoreSelectionRequestState value)?
        deletingRequest,
    TResult Function(DeletedRequestStoreSelectionRequestState value)?
        deletedRequest,
    TResult Function(FailureStoreSelectionRequestState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialStoreSelectionRequestState
    extends StoreSelectionRequestState {
  const factory InitialStoreSelectionRequestState() =
      _$InitialStoreSelectionRequestState;
  const InitialStoreSelectionRequestState._() : super._();
}

/// @nodoc
abstract class $CreatingStoreSelectionRequestStateCopyWith<$Res> {
  factory $CreatingStoreSelectionRequestStateCopyWith(
          CreatingStoreSelectionRequestState value,
          $Res Function(CreatingStoreSelectionRequestState) then) =
      _$CreatingStoreSelectionRequestStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$CreatingStoreSelectionRequestStateCopyWithImpl<$Res>
    extends _$StoreSelectionRequestStateCopyWithImpl<$Res>
    implements $CreatingStoreSelectionRequestStateCopyWith<$Res> {
  _$CreatingStoreSelectionRequestStateCopyWithImpl(
      CreatingStoreSelectionRequestState _value,
      $Res Function(CreatingStoreSelectionRequestState) _then)
      : super(_value, (v) => _then(v as CreatingStoreSelectionRequestState));

  @override
  CreatingStoreSelectionRequestState get _value =>
      super._value as CreatingStoreSelectionRequestState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(CreatingStoreSelectionRequestState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreatingStoreSelectionRequestState
    extends CreatingStoreSelectionRequestState {
  const _$CreatingStoreSelectionRequestState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'StoreSelectionRequestState.creating(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreatingStoreSelectionRequestState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $CreatingStoreSelectionRequestStateCopyWith<
          CreatingStoreSelectionRequestState>
      get copyWith => _$CreatingStoreSelectionRequestStateCopyWithImpl<
          CreatingStoreSelectionRequestState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) creating,
    required TResult Function() created,
    required TResult Function(String message) deletingRequest,
    required TResult Function() deletedRequest,
    required TResult Function(String message) failure,
  }) {
    return creating(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? creating,
    TResult Function()? created,
    TResult Function(String message)? deletingRequest,
    TResult Function()? deletedRequest,
    TResult Function(String message)? failure,
  }) {
    return creating?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? creating,
    TResult Function()? created,
    TResult Function(String message)? deletingRequest,
    TResult Function()? deletedRequest,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (creating != null) {
      return creating(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStoreSelectionRequestState value) initial,
    required TResult Function(CreatingStoreSelectionRequestState value)
        creating,
    required TResult Function(CreatedStoreSelectionRequestState value) created,
    required TResult Function(DeletingRequestStoreSelectionRequestState value)
        deletingRequest,
    required TResult Function(DeletedRequestStoreSelectionRequestState value)
        deletedRequest,
    required TResult Function(FailureStoreSelectionRequestState value) failure,
  }) {
    return creating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreSelectionRequestState value)? initial,
    TResult Function(CreatingStoreSelectionRequestState value)? creating,
    TResult Function(CreatedStoreSelectionRequestState value)? created,
    TResult Function(DeletingRequestStoreSelectionRequestState value)?
        deletingRequest,
    TResult Function(DeletedRequestStoreSelectionRequestState value)?
        deletedRequest,
    TResult Function(FailureStoreSelectionRequestState value)? failure,
  }) {
    return creating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreSelectionRequestState value)? initial,
    TResult Function(CreatingStoreSelectionRequestState value)? creating,
    TResult Function(CreatedStoreSelectionRequestState value)? created,
    TResult Function(DeletingRequestStoreSelectionRequestState value)?
        deletingRequest,
    TResult Function(DeletedRequestStoreSelectionRequestState value)?
        deletedRequest,
    TResult Function(FailureStoreSelectionRequestState value)? failure,
    required TResult orElse(),
  }) {
    if (creating != null) {
      return creating(this);
    }
    return orElse();
  }
}

abstract class CreatingStoreSelectionRequestState
    extends StoreSelectionRequestState {
  const factory CreatingStoreSelectionRequestState(String message) =
      _$CreatingStoreSelectionRequestState;
  const CreatingStoreSelectionRequestState._() : super._();

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatingStoreSelectionRequestStateCopyWith<
          CreatingStoreSelectionRequestState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatedStoreSelectionRequestStateCopyWith<$Res> {
  factory $CreatedStoreSelectionRequestStateCopyWith(
          CreatedStoreSelectionRequestState value,
          $Res Function(CreatedStoreSelectionRequestState) then) =
      _$CreatedStoreSelectionRequestStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreatedStoreSelectionRequestStateCopyWithImpl<$Res>
    extends _$StoreSelectionRequestStateCopyWithImpl<$Res>
    implements $CreatedStoreSelectionRequestStateCopyWith<$Res> {
  _$CreatedStoreSelectionRequestStateCopyWithImpl(
      CreatedStoreSelectionRequestState _value,
      $Res Function(CreatedStoreSelectionRequestState) _then)
      : super(_value, (v) => _then(v as CreatedStoreSelectionRequestState));

  @override
  CreatedStoreSelectionRequestState get _value =>
      super._value as CreatedStoreSelectionRequestState;
}

/// @nodoc

class _$CreatedStoreSelectionRequestState
    extends CreatedStoreSelectionRequestState {
  const _$CreatedStoreSelectionRequestState() : super._();

  @override
  String toString() {
    return 'StoreSelectionRequestState.created()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreatedStoreSelectionRequestState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) creating,
    required TResult Function() created,
    required TResult Function(String message) deletingRequest,
    required TResult Function() deletedRequest,
    required TResult Function(String message) failure,
  }) {
    return created();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? creating,
    TResult Function()? created,
    TResult Function(String message)? deletingRequest,
    TResult Function()? deletedRequest,
    TResult Function(String message)? failure,
  }) {
    return created?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? creating,
    TResult Function()? created,
    TResult Function(String message)? deletingRequest,
    TResult Function()? deletedRequest,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStoreSelectionRequestState value) initial,
    required TResult Function(CreatingStoreSelectionRequestState value)
        creating,
    required TResult Function(CreatedStoreSelectionRequestState value) created,
    required TResult Function(DeletingRequestStoreSelectionRequestState value)
        deletingRequest,
    required TResult Function(DeletedRequestStoreSelectionRequestState value)
        deletedRequest,
    required TResult Function(FailureStoreSelectionRequestState value) failure,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreSelectionRequestState value)? initial,
    TResult Function(CreatingStoreSelectionRequestState value)? creating,
    TResult Function(CreatedStoreSelectionRequestState value)? created,
    TResult Function(DeletingRequestStoreSelectionRequestState value)?
        deletingRequest,
    TResult Function(DeletedRequestStoreSelectionRequestState value)?
        deletedRequest,
    TResult Function(FailureStoreSelectionRequestState value)? failure,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreSelectionRequestState value)? initial,
    TResult Function(CreatingStoreSelectionRequestState value)? creating,
    TResult Function(CreatedStoreSelectionRequestState value)? created,
    TResult Function(DeletingRequestStoreSelectionRequestState value)?
        deletingRequest,
    TResult Function(DeletedRequestStoreSelectionRequestState value)?
        deletedRequest,
    TResult Function(FailureStoreSelectionRequestState value)? failure,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class CreatedStoreSelectionRequestState
    extends StoreSelectionRequestState {
  const factory CreatedStoreSelectionRequestState() =
      _$CreatedStoreSelectionRequestState;
  const CreatedStoreSelectionRequestState._() : super._();
}

/// @nodoc
abstract class $DeletingRequestStoreSelectionRequestStateCopyWith<$Res> {
  factory $DeletingRequestStoreSelectionRequestStateCopyWith(
          DeletingRequestStoreSelectionRequestState value,
          $Res Function(DeletingRequestStoreSelectionRequestState) then) =
      _$DeletingRequestStoreSelectionRequestStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$DeletingRequestStoreSelectionRequestStateCopyWithImpl<$Res>
    extends _$StoreSelectionRequestStateCopyWithImpl<$Res>
    implements $DeletingRequestStoreSelectionRequestStateCopyWith<$Res> {
  _$DeletingRequestStoreSelectionRequestStateCopyWithImpl(
      DeletingRequestStoreSelectionRequestState _value,
      $Res Function(DeletingRequestStoreSelectionRequestState) _then)
      : super(_value,
            (v) => _then(v as DeletingRequestStoreSelectionRequestState));

  @override
  DeletingRequestStoreSelectionRequestState get _value =>
      super._value as DeletingRequestStoreSelectionRequestState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(DeletingRequestStoreSelectionRequestState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeletingRequestStoreSelectionRequestState
    extends DeletingRequestStoreSelectionRequestState {
  const _$DeletingRequestStoreSelectionRequestState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'StoreSelectionRequestState.deletingRequest(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeletingRequestStoreSelectionRequestState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $DeletingRequestStoreSelectionRequestStateCopyWith<
          DeletingRequestStoreSelectionRequestState>
      get copyWith => _$DeletingRequestStoreSelectionRequestStateCopyWithImpl<
          DeletingRequestStoreSelectionRequestState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) creating,
    required TResult Function() created,
    required TResult Function(String message) deletingRequest,
    required TResult Function() deletedRequest,
    required TResult Function(String message) failure,
  }) {
    return deletingRequest(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? creating,
    TResult Function()? created,
    TResult Function(String message)? deletingRequest,
    TResult Function()? deletedRequest,
    TResult Function(String message)? failure,
  }) {
    return deletingRequest?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? creating,
    TResult Function()? created,
    TResult Function(String message)? deletingRequest,
    TResult Function()? deletedRequest,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (deletingRequest != null) {
      return deletingRequest(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStoreSelectionRequestState value) initial,
    required TResult Function(CreatingStoreSelectionRequestState value)
        creating,
    required TResult Function(CreatedStoreSelectionRequestState value) created,
    required TResult Function(DeletingRequestStoreSelectionRequestState value)
        deletingRequest,
    required TResult Function(DeletedRequestStoreSelectionRequestState value)
        deletedRequest,
    required TResult Function(FailureStoreSelectionRequestState value) failure,
  }) {
    return deletingRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreSelectionRequestState value)? initial,
    TResult Function(CreatingStoreSelectionRequestState value)? creating,
    TResult Function(CreatedStoreSelectionRequestState value)? created,
    TResult Function(DeletingRequestStoreSelectionRequestState value)?
        deletingRequest,
    TResult Function(DeletedRequestStoreSelectionRequestState value)?
        deletedRequest,
    TResult Function(FailureStoreSelectionRequestState value)? failure,
  }) {
    return deletingRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreSelectionRequestState value)? initial,
    TResult Function(CreatingStoreSelectionRequestState value)? creating,
    TResult Function(CreatedStoreSelectionRequestState value)? created,
    TResult Function(DeletingRequestStoreSelectionRequestState value)?
        deletingRequest,
    TResult Function(DeletedRequestStoreSelectionRequestState value)?
        deletedRequest,
    TResult Function(FailureStoreSelectionRequestState value)? failure,
    required TResult orElse(),
  }) {
    if (deletingRequest != null) {
      return deletingRequest(this);
    }
    return orElse();
  }
}

abstract class DeletingRequestStoreSelectionRequestState
    extends StoreSelectionRequestState {
  const factory DeletingRequestStoreSelectionRequestState(String message) =
      _$DeletingRequestStoreSelectionRequestState;
  const DeletingRequestStoreSelectionRequestState._() : super._();

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeletingRequestStoreSelectionRequestStateCopyWith<
          DeletingRequestStoreSelectionRequestState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeletedRequestStoreSelectionRequestStateCopyWith<$Res> {
  factory $DeletedRequestStoreSelectionRequestStateCopyWith(
          DeletedRequestStoreSelectionRequestState value,
          $Res Function(DeletedRequestStoreSelectionRequestState) then) =
      _$DeletedRequestStoreSelectionRequestStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeletedRequestStoreSelectionRequestStateCopyWithImpl<$Res>
    extends _$StoreSelectionRequestStateCopyWithImpl<$Res>
    implements $DeletedRequestStoreSelectionRequestStateCopyWith<$Res> {
  _$DeletedRequestStoreSelectionRequestStateCopyWithImpl(
      DeletedRequestStoreSelectionRequestState _value,
      $Res Function(DeletedRequestStoreSelectionRequestState) _then)
      : super(_value,
            (v) => _then(v as DeletedRequestStoreSelectionRequestState));

  @override
  DeletedRequestStoreSelectionRequestState get _value =>
      super._value as DeletedRequestStoreSelectionRequestState;
}

/// @nodoc

class _$DeletedRequestStoreSelectionRequestState
    extends DeletedRequestStoreSelectionRequestState {
  const _$DeletedRequestStoreSelectionRequestState() : super._();

  @override
  String toString() {
    return 'StoreSelectionRequestState.deletedRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeletedRequestStoreSelectionRequestState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) creating,
    required TResult Function() created,
    required TResult Function(String message) deletingRequest,
    required TResult Function() deletedRequest,
    required TResult Function(String message) failure,
  }) {
    return deletedRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? creating,
    TResult Function()? created,
    TResult Function(String message)? deletingRequest,
    TResult Function()? deletedRequest,
    TResult Function(String message)? failure,
  }) {
    return deletedRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? creating,
    TResult Function()? created,
    TResult Function(String message)? deletingRequest,
    TResult Function()? deletedRequest,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (deletedRequest != null) {
      return deletedRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStoreSelectionRequestState value) initial,
    required TResult Function(CreatingStoreSelectionRequestState value)
        creating,
    required TResult Function(CreatedStoreSelectionRequestState value) created,
    required TResult Function(DeletingRequestStoreSelectionRequestState value)
        deletingRequest,
    required TResult Function(DeletedRequestStoreSelectionRequestState value)
        deletedRequest,
    required TResult Function(FailureStoreSelectionRequestState value) failure,
  }) {
    return deletedRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreSelectionRequestState value)? initial,
    TResult Function(CreatingStoreSelectionRequestState value)? creating,
    TResult Function(CreatedStoreSelectionRequestState value)? created,
    TResult Function(DeletingRequestStoreSelectionRequestState value)?
        deletingRequest,
    TResult Function(DeletedRequestStoreSelectionRequestState value)?
        deletedRequest,
    TResult Function(FailureStoreSelectionRequestState value)? failure,
  }) {
    return deletedRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreSelectionRequestState value)? initial,
    TResult Function(CreatingStoreSelectionRequestState value)? creating,
    TResult Function(CreatedStoreSelectionRequestState value)? created,
    TResult Function(DeletingRequestStoreSelectionRequestState value)?
        deletingRequest,
    TResult Function(DeletedRequestStoreSelectionRequestState value)?
        deletedRequest,
    TResult Function(FailureStoreSelectionRequestState value)? failure,
    required TResult orElse(),
  }) {
    if (deletedRequest != null) {
      return deletedRequest(this);
    }
    return orElse();
  }
}

abstract class DeletedRequestStoreSelectionRequestState
    extends StoreSelectionRequestState {
  const factory DeletedRequestStoreSelectionRequestState() =
      _$DeletedRequestStoreSelectionRequestState;
  const DeletedRequestStoreSelectionRequestState._() : super._();
}

/// @nodoc
abstract class $FailureStoreSelectionRequestStateCopyWith<$Res> {
  factory $FailureStoreSelectionRequestStateCopyWith(
          FailureStoreSelectionRequestState value,
          $Res Function(FailureStoreSelectionRequestState) then) =
      _$FailureStoreSelectionRequestStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FailureStoreSelectionRequestStateCopyWithImpl<$Res>
    extends _$StoreSelectionRequestStateCopyWithImpl<$Res>
    implements $FailureStoreSelectionRequestStateCopyWith<$Res> {
  _$FailureStoreSelectionRequestStateCopyWithImpl(
      FailureStoreSelectionRequestState _value,
      $Res Function(FailureStoreSelectionRequestState) _then)
      : super(_value, (v) => _then(v as FailureStoreSelectionRequestState));

  @override
  FailureStoreSelectionRequestState get _value =>
      super._value as FailureStoreSelectionRequestState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(FailureStoreSelectionRequestState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureStoreSelectionRequestState
    extends FailureStoreSelectionRequestState {
  const _$FailureStoreSelectionRequestState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'StoreSelectionRequestState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FailureStoreSelectionRequestState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $FailureStoreSelectionRequestStateCopyWith<FailureStoreSelectionRequestState>
      get copyWith => _$FailureStoreSelectionRequestStateCopyWithImpl<
          FailureStoreSelectionRequestState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) creating,
    required TResult Function() created,
    required TResult Function(String message) deletingRequest,
    required TResult Function() deletedRequest,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? creating,
    TResult Function()? created,
    TResult Function(String message)? deletingRequest,
    TResult Function()? deletedRequest,
    TResult Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? creating,
    TResult Function()? created,
    TResult Function(String message)? deletingRequest,
    TResult Function()? deletedRequest,
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
    required TResult Function(InitialStoreSelectionRequestState value) initial,
    required TResult Function(CreatingStoreSelectionRequestState value)
        creating,
    required TResult Function(CreatedStoreSelectionRequestState value) created,
    required TResult Function(DeletingRequestStoreSelectionRequestState value)
        deletingRequest,
    required TResult Function(DeletedRequestStoreSelectionRequestState value)
        deletedRequest,
    required TResult Function(FailureStoreSelectionRequestState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreSelectionRequestState value)? initial,
    TResult Function(CreatingStoreSelectionRequestState value)? creating,
    TResult Function(CreatedStoreSelectionRequestState value)? created,
    TResult Function(DeletingRequestStoreSelectionRequestState value)?
        deletingRequest,
    TResult Function(DeletedRequestStoreSelectionRequestState value)?
        deletedRequest,
    TResult Function(FailureStoreSelectionRequestState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreSelectionRequestState value)? initial,
    TResult Function(CreatingStoreSelectionRequestState value)? creating,
    TResult Function(CreatedStoreSelectionRequestState value)? created,
    TResult Function(DeletingRequestStoreSelectionRequestState value)?
        deletingRequest,
    TResult Function(DeletedRequestStoreSelectionRequestState value)?
        deletedRequest,
    TResult Function(FailureStoreSelectionRequestState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FailureStoreSelectionRequestState
    extends StoreSelectionRequestState {
  const factory FailureStoreSelectionRequestState(String message) =
      _$FailureStoreSelectionRequestState;
  const FailureStoreSelectionRequestState._() : super._();

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FailureStoreSelectionRequestStateCopyWith<FailureStoreSelectionRequestState>
      get copyWith => throw _privateConstructorUsedError;
}
