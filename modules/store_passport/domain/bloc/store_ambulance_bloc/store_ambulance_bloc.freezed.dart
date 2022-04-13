// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_ambulance_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StoreAmbulanceEventTearOff {
  const _$StoreAmbulanceEventTearOff();

  CreateStoreAmbulanceEvent create(StoreAmbulanceModel model) {
    return CreateStoreAmbulanceEvent(
      model,
    );
  }

  ReadStoreAmbulanceEvent read() {
    return const ReadStoreAmbulanceEvent();
  }

  UpdateStoreAmbulanceEvent update(StoreAmbulancePostModel postModel) {
    return UpdateStoreAmbulanceEvent(
      postModel,
    );
  }

  DeleteStoreAmbulanceEvent delete() {
    return const DeleteStoreAmbulanceEvent();
  }
}

/// @nodoc
const $StoreAmbulanceEvent = _$StoreAmbulanceEventTearOff();

/// @nodoc
mixin _$StoreAmbulanceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StoreAmbulanceModel model) create,
    required TResult Function() read,
    required TResult Function(StoreAmbulancePostModel postModel) update,
    required TResult Function() delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StoreAmbulanceModel model)? create,
    TResult Function()? read,
    TResult Function(StoreAmbulancePostModel postModel)? update,
    TResult Function()? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoreAmbulanceModel model)? create,
    TResult Function()? read,
    TResult Function(StoreAmbulancePostModel postModel)? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateStoreAmbulanceEvent value) create,
    required TResult Function(ReadStoreAmbulanceEvent value) read,
    required TResult Function(UpdateStoreAmbulanceEvent value) update,
    required TResult Function(DeleteStoreAmbulanceEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateStoreAmbulanceEvent value)? create,
    TResult Function(ReadStoreAmbulanceEvent value)? read,
    TResult Function(UpdateStoreAmbulanceEvent value)? update,
    TResult Function(DeleteStoreAmbulanceEvent value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateStoreAmbulanceEvent value)? create,
    TResult Function(ReadStoreAmbulanceEvent value)? read,
    TResult Function(UpdateStoreAmbulanceEvent value)? update,
    TResult Function(DeleteStoreAmbulanceEvent value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreAmbulanceEventCopyWith<$Res> {
  factory $StoreAmbulanceEventCopyWith(
          StoreAmbulanceEvent value, $Res Function(StoreAmbulanceEvent) then) =
      _$StoreAmbulanceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreAmbulanceEventCopyWithImpl<$Res>
    implements $StoreAmbulanceEventCopyWith<$Res> {
  _$StoreAmbulanceEventCopyWithImpl(this._value, this._then);

  final StoreAmbulanceEvent _value;
  // ignore: unused_field
  final $Res Function(StoreAmbulanceEvent) _then;
}

/// @nodoc
abstract class $CreateStoreAmbulanceEventCopyWith<$Res> {
  factory $CreateStoreAmbulanceEventCopyWith(CreateStoreAmbulanceEvent value,
          $Res Function(CreateStoreAmbulanceEvent) then) =
      _$CreateStoreAmbulanceEventCopyWithImpl<$Res>;
  $Res call({StoreAmbulanceModel model});

  $StoreAmbulanceModelCopyWith<$Res> get model;
}

/// @nodoc
class _$CreateStoreAmbulanceEventCopyWithImpl<$Res>
    extends _$StoreAmbulanceEventCopyWithImpl<$Res>
    implements $CreateStoreAmbulanceEventCopyWith<$Res> {
  _$CreateStoreAmbulanceEventCopyWithImpl(CreateStoreAmbulanceEvent _value,
      $Res Function(CreateStoreAmbulanceEvent) _then)
      : super(_value, (v) => _then(v as CreateStoreAmbulanceEvent));

  @override
  CreateStoreAmbulanceEvent get _value =>
      super._value as CreateStoreAmbulanceEvent;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(CreateStoreAmbulanceEvent(
      model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as StoreAmbulanceModel,
    ));
  }

  @override
  $StoreAmbulanceModelCopyWith<$Res> get model {
    return $StoreAmbulanceModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$CreateStoreAmbulanceEvent extends CreateStoreAmbulanceEvent {
  const _$CreateStoreAmbulanceEvent(this.model) : super._();

  @override
  final StoreAmbulanceModel model;

  @override
  String toString() {
    return 'StoreAmbulanceEvent.create(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateStoreAmbulanceEvent &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(model);

  @JsonKey(ignore: true)
  @override
  $CreateStoreAmbulanceEventCopyWith<CreateStoreAmbulanceEvent> get copyWith =>
      _$CreateStoreAmbulanceEventCopyWithImpl<CreateStoreAmbulanceEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StoreAmbulanceModel model) create,
    required TResult Function() read,
    required TResult Function(StoreAmbulancePostModel postModel) update,
    required TResult Function() delete,
  }) {
    return create(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StoreAmbulanceModel model)? create,
    TResult Function()? read,
    TResult Function(StoreAmbulancePostModel postModel)? update,
    TResult Function()? delete,
  }) {
    return create?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoreAmbulanceModel model)? create,
    TResult Function()? read,
    TResult Function(StoreAmbulancePostModel postModel)? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateStoreAmbulanceEvent value) create,
    required TResult Function(ReadStoreAmbulanceEvent value) read,
    required TResult Function(UpdateStoreAmbulanceEvent value) update,
    required TResult Function(DeleteStoreAmbulanceEvent value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateStoreAmbulanceEvent value)? create,
    TResult Function(ReadStoreAmbulanceEvent value)? read,
    TResult Function(UpdateStoreAmbulanceEvent value)? update,
    TResult Function(DeleteStoreAmbulanceEvent value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateStoreAmbulanceEvent value)? create,
    TResult Function(ReadStoreAmbulanceEvent value)? read,
    TResult Function(UpdateStoreAmbulanceEvent value)? update,
    TResult Function(DeleteStoreAmbulanceEvent value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class CreateStoreAmbulanceEvent extends StoreAmbulanceEvent {
  const factory CreateStoreAmbulanceEvent(StoreAmbulanceModel model) =
      _$CreateStoreAmbulanceEvent;
  const CreateStoreAmbulanceEvent._() : super._();

  StoreAmbulanceModel get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateStoreAmbulanceEventCopyWith<CreateStoreAmbulanceEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadStoreAmbulanceEventCopyWith<$Res> {
  factory $ReadStoreAmbulanceEventCopyWith(ReadStoreAmbulanceEvent value,
          $Res Function(ReadStoreAmbulanceEvent) then) =
      _$ReadStoreAmbulanceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReadStoreAmbulanceEventCopyWithImpl<$Res>
    extends _$StoreAmbulanceEventCopyWithImpl<$Res>
    implements $ReadStoreAmbulanceEventCopyWith<$Res> {
  _$ReadStoreAmbulanceEventCopyWithImpl(ReadStoreAmbulanceEvent _value,
      $Res Function(ReadStoreAmbulanceEvent) _then)
      : super(_value, (v) => _then(v as ReadStoreAmbulanceEvent));

  @override
  ReadStoreAmbulanceEvent get _value => super._value as ReadStoreAmbulanceEvent;
}

/// @nodoc

class _$ReadStoreAmbulanceEvent extends ReadStoreAmbulanceEvent {
  const _$ReadStoreAmbulanceEvent() : super._();

  @override
  String toString() {
    return 'StoreAmbulanceEvent.read()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ReadStoreAmbulanceEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StoreAmbulanceModel model) create,
    required TResult Function() read,
    required TResult Function(StoreAmbulancePostModel postModel) update,
    required TResult Function() delete,
  }) {
    return read();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StoreAmbulanceModel model)? create,
    TResult Function()? read,
    TResult Function(StoreAmbulancePostModel postModel)? update,
    TResult Function()? delete,
  }) {
    return read?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoreAmbulanceModel model)? create,
    TResult Function()? read,
    TResult Function(StoreAmbulancePostModel postModel)? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateStoreAmbulanceEvent value) create,
    required TResult Function(ReadStoreAmbulanceEvent value) read,
    required TResult Function(UpdateStoreAmbulanceEvent value) update,
    required TResult Function(DeleteStoreAmbulanceEvent value) delete,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateStoreAmbulanceEvent value)? create,
    TResult Function(ReadStoreAmbulanceEvent value)? read,
    TResult Function(UpdateStoreAmbulanceEvent value)? update,
    TResult Function(DeleteStoreAmbulanceEvent value)? delete,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateStoreAmbulanceEvent value)? create,
    TResult Function(ReadStoreAmbulanceEvent value)? read,
    TResult Function(UpdateStoreAmbulanceEvent value)? update,
    TResult Function(DeleteStoreAmbulanceEvent value)? delete,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class ReadStoreAmbulanceEvent extends StoreAmbulanceEvent {
  const factory ReadStoreAmbulanceEvent() = _$ReadStoreAmbulanceEvent;
  const ReadStoreAmbulanceEvent._() : super._();
}

/// @nodoc
abstract class $UpdateStoreAmbulanceEventCopyWith<$Res> {
  factory $UpdateStoreAmbulanceEventCopyWith(UpdateStoreAmbulanceEvent value,
          $Res Function(UpdateStoreAmbulanceEvent) then) =
      _$UpdateStoreAmbulanceEventCopyWithImpl<$Res>;
  $Res call({StoreAmbulancePostModel postModel});

  $StoreAmbulancePostModelCopyWith<$Res> get postModel;
}

/// @nodoc
class _$UpdateStoreAmbulanceEventCopyWithImpl<$Res>
    extends _$StoreAmbulanceEventCopyWithImpl<$Res>
    implements $UpdateStoreAmbulanceEventCopyWith<$Res> {
  _$UpdateStoreAmbulanceEventCopyWithImpl(UpdateStoreAmbulanceEvent _value,
      $Res Function(UpdateStoreAmbulanceEvent) _then)
      : super(_value, (v) => _then(v as UpdateStoreAmbulanceEvent));

  @override
  UpdateStoreAmbulanceEvent get _value =>
      super._value as UpdateStoreAmbulanceEvent;

  @override
  $Res call({
    Object? postModel = freezed,
  }) {
    return _then(UpdateStoreAmbulanceEvent(
      postModel == freezed
          ? _value.postModel
          : postModel // ignore: cast_nullable_to_non_nullable
              as StoreAmbulancePostModel,
    ));
  }

  @override
  $StoreAmbulancePostModelCopyWith<$Res> get postModel {
    return $StoreAmbulancePostModelCopyWith<$Res>(_value.postModel, (value) {
      return _then(_value.copyWith(postModel: value));
    });
  }
}

/// @nodoc

class _$UpdateStoreAmbulanceEvent extends UpdateStoreAmbulanceEvent {
  const _$UpdateStoreAmbulanceEvent(this.postModel) : super._();

  @override
  final StoreAmbulancePostModel postModel;

  @override
  String toString() {
    return 'StoreAmbulanceEvent.update(postModel: $postModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateStoreAmbulanceEvent &&
            (identical(other.postModel, postModel) ||
                const DeepCollectionEquality()
                    .equals(other.postModel, postModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postModel);

  @JsonKey(ignore: true)
  @override
  $UpdateStoreAmbulanceEventCopyWith<UpdateStoreAmbulanceEvent> get copyWith =>
      _$UpdateStoreAmbulanceEventCopyWithImpl<UpdateStoreAmbulanceEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StoreAmbulanceModel model) create,
    required TResult Function() read,
    required TResult Function(StoreAmbulancePostModel postModel) update,
    required TResult Function() delete,
  }) {
    return update(postModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StoreAmbulanceModel model)? create,
    TResult Function()? read,
    TResult Function(StoreAmbulancePostModel postModel)? update,
    TResult Function()? delete,
  }) {
    return update?.call(postModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoreAmbulanceModel model)? create,
    TResult Function()? read,
    TResult Function(StoreAmbulancePostModel postModel)? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(postModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateStoreAmbulanceEvent value) create,
    required TResult Function(ReadStoreAmbulanceEvent value) read,
    required TResult Function(UpdateStoreAmbulanceEvent value) update,
    required TResult Function(DeleteStoreAmbulanceEvent value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateStoreAmbulanceEvent value)? create,
    TResult Function(ReadStoreAmbulanceEvent value)? read,
    TResult Function(UpdateStoreAmbulanceEvent value)? update,
    TResult Function(DeleteStoreAmbulanceEvent value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateStoreAmbulanceEvent value)? create,
    TResult Function(ReadStoreAmbulanceEvent value)? read,
    TResult Function(UpdateStoreAmbulanceEvent value)? update,
    TResult Function(DeleteStoreAmbulanceEvent value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateStoreAmbulanceEvent extends StoreAmbulanceEvent {
  const factory UpdateStoreAmbulanceEvent(StoreAmbulancePostModel postModel) =
      _$UpdateStoreAmbulanceEvent;
  const UpdateStoreAmbulanceEvent._() : super._();

  StoreAmbulancePostModel get postModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateStoreAmbulanceEventCopyWith<UpdateStoreAmbulanceEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteStoreAmbulanceEventCopyWith<$Res> {
  factory $DeleteStoreAmbulanceEventCopyWith(DeleteStoreAmbulanceEvent value,
          $Res Function(DeleteStoreAmbulanceEvent) then) =
      _$DeleteStoreAmbulanceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteStoreAmbulanceEventCopyWithImpl<$Res>
    extends _$StoreAmbulanceEventCopyWithImpl<$Res>
    implements $DeleteStoreAmbulanceEventCopyWith<$Res> {
  _$DeleteStoreAmbulanceEventCopyWithImpl(DeleteStoreAmbulanceEvent _value,
      $Res Function(DeleteStoreAmbulanceEvent) _then)
      : super(_value, (v) => _then(v as DeleteStoreAmbulanceEvent));

  @override
  DeleteStoreAmbulanceEvent get _value =>
      super._value as DeleteStoreAmbulanceEvent;
}

/// @nodoc

class _$DeleteStoreAmbulanceEvent extends DeleteStoreAmbulanceEvent {
  const _$DeleteStoreAmbulanceEvent() : super._();

  @override
  String toString() {
    return 'StoreAmbulanceEvent.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteStoreAmbulanceEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StoreAmbulanceModel model) create,
    required TResult Function() read,
    required TResult Function(StoreAmbulancePostModel postModel) update,
    required TResult Function() delete,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StoreAmbulanceModel model)? create,
    TResult Function()? read,
    TResult Function(StoreAmbulancePostModel postModel)? update,
    TResult Function()? delete,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StoreAmbulanceModel model)? create,
    TResult Function()? read,
    TResult Function(StoreAmbulancePostModel postModel)? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateStoreAmbulanceEvent value) create,
    required TResult Function(ReadStoreAmbulanceEvent value) read,
    required TResult Function(UpdateStoreAmbulanceEvent value) update,
    required TResult Function(DeleteStoreAmbulanceEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateStoreAmbulanceEvent value)? create,
    TResult Function(ReadStoreAmbulanceEvent value)? read,
    TResult Function(UpdateStoreAmbulanceEvent value)? update,
    TResult Function(DeleteStoreAmbulanceEvent value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateStoreAmbulanceEvent value)? create,
    TResult Function(ReadStoreAmbulanceEvent value)? read,
    TResult Function(UpdateStoreAmbulanceEvent value)? update,
    TResult Function(DeleteStoreAmbulanceEvent value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteStoreAmbulanceEvent extends StoreAmbulanceEvent {
  const factory DeleteStoreAmbulanceEvent() = _$DeleteStoreAmbulanceEvent;
  const DeleteStoreAmbulanceEvent._() : super._();
}

/// @nodoc
class _$StoreAmbulanceStateTearOff {
  const _$StoreAmbulanceStateTearOff();

  InitialStoreAmbulanceState initial() {
    return const InitialStoreAmbulanceState();
  }

  LoadingStoreAmbulanceState loading(String message) {
    return LoadingStoreAmbulanceState(
      message,
    );
  }

  LoadedStoreAmbulanceState loaded(StoreAmbulanceModel model) {
    return LoadedStoreAmbulanceState(
      model,
    );
  }

  UploadingStoreAmbulanceState uploading() {
    return const UploadingStoreAmbulanceState();
  }

  UploadedStoreAmbulanceState uploaded() {
    return const UploadedStoreAmbulanceState();
  }

  ErrorStoreAmbulancState error(String message) {
    return ErrorStoreAmbulancState(
      message,
    );
  }

  PostErrorStoreAmbulancState postError(String message) {
    return PostErrorStoreAmbulancState(
      message,
    );
  }

  ForbiddenStoreAmbulancState forbidden(String message) {
    return ForbiddenStoreAmbulancState(
      message,
    );
  }
}

/// @nodoc
const $StoreAmbulanceState = _$StoreAmbulanceStateTearOff();

/// @nodoc
mixin _$StoreAmbulanceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(StoreAmbulanceModel model) loaded,
    required TResult Function() uploading,
    required TResult Function() uploaded,
    required TResult Function(String message) error,
    required TResult Function(String message) postError,
    required TResult Function(String message) forbidden,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreAmbulanceModel model)? loaded,
    TResult Function()? uploading,
    TResult Function()? uploaded,
    TResult Function(String message)? error,
    TResult Function(String message)? postError,
    TResult Function(String message)? forbidden,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreAmbulanceModel model)? loaded,
    TResult Function()? uploading,
    TResult Function()? uploaded,
    TResult Function(String message)? error,
    TResult Function(String message)? postError,
    TResult Function(String message)? forbidden,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStoreAmbulanceState value) initial,
    required TResult Function(LoadingStoreAmbulanceState value) loading,
    required TResult Function(LoadedStoreAmbulanceState value) loaded,
    required TResult Function(UploadingStoreAmbulanceState value) uploading,
    required TResult Function(UploadedStoreAmbulanceState value) uploaded,
    required TResult Function(ErrorStoreAmbulancState value) error,
    required TResult Function(PostErrorStoreAmbulancState value) postError,
    required TResult Function(ForbiddenStoreAmbulancState value) forbidden,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreAmbulanceState value)? initial,
    TResult Function(LoadingStoreAmbulanceState value)? loading,
    TResult Function(LoadedStoreAmbulanceState value)? loaded,
    TResult Function(UploadingStoreAmbulanceState value)? uploading,
    TResult Function(UploadedStoreAmbulanceState value)? uploaded,
    TResult Function(ErrorStoreAmbulancState value)? error,
    TResult Function(PostErrorStoreAmbulancState value)? postError,
    TResult Function(ForbiddenStoreAmbulancState value)? forbidden,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreAmbulanceState value)? initial,
    TResult Function(LoadingStoreAmbulanceState value)? loading,
    TResult Function(LoadedStoreAmbulanceState value)? loaded,
    TResult Function(UploadingStoreAmbulanceState value)? uploading,
    TResult Function(UploadedStoreAmbulanceState value)? uploaded,
    TResult Function(ErrorStoreAmbulancState value)? error,
    TResult Function(PostErrorStoreAmbulancState value)? postError,
    TResult Function(ForbiddenStoreAmbulancState value)? forbidden,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreAmbulanceStateCopyWith<$Res> {
  factory $StoreAmbulanceStateCopyWith(
          StoreAmbulanceState value, $Res Function(StoreAmbulanceState) then) =
      _$StoreAmbulanceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreAmbulanceStateCopyWithImpl<$Res>
    implements $StoreAmbulanceStateCopyWith<$Res> {
  _$StoreAmbulanceStateCopyWithImpl(this._value, this._then);

  final StoreAmbulanceState _value;
  // ignore: unused_field
  final $Res Function(StoreAmbulanceState) _then;
}

/// @nodoc
abstract class $InitialStoreAmbulanceStateCopyWith<$Res> {
  factory $InitialStoreAmbulanceStateCopyWith(InitialStoreAmbulanceState value,
          $Res Function(InitialStoreAmbulanceState) then) =
      _$InitialStoreAmbulanceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialStoreAmbulanceStateCopyWithImpl<$Res>
    extends _$StoreAmbulanceStateCopyWithImpl<$Res>
    implements $InitialStoreAmbulanceStateCopyWith<$Res> {
  _$InitialStoreAmbulanceStateCopyWithImpl(InitialStoreAmbulanceState _value,
      $Res Function(InitialStoreAmbulanceState) _then)
      : super(_value, (v) => _then(v as InitialStoreAmbulanceState));

  @override
  InitialStoreAmbulanceState get _value =>
      super._value as InitialStoreAmbulanceState;
}

/// @nodoc

class _$InitialStoreAmbulanceState extends InitialStoreAmbulanceState {
  const _$InitialStoreAmbulanceState() : super._();

  @override
  String toString() {
    return 'StoreAmbulanceState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialStoreAmbulanceState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(StoreAmbulanceModel model) loaded,
    required TResult Function() uploading,
    required TResult Function() uploaded,
    required TResult Function(String message) error,
    required TResult Function(String message) postError,
    required TResult Function(String message) forbidden,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreAmbulanceModel model)? loaded,
    TResult Function()? uploading,
    TResult Function()? uploaded,
    TResult Function(String message)? error,
    TResult Function(String message)? postError,
    TResult Function(String message)? forbidden,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreAmbulanceModel model)? loaded,
    TResult Function()? uploading,
    TResult Function()? uploaded,
    TResult Function(String message)? error,
    TResult Function(String message)? postError,
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
    required TResult Function(InitialStoreAmbulanceState value) initial,
    required TResult Function(LoadingStoreAmbulanceState value) loading,
    required TResult Function(LoadedStoreAmbulanceState value) loaded,
    required TResult Function(UploadingStoreAmbulanceState value) uploading,
    required TResult Function(UploadedStoreAmbulanceState value) uploaded,
    required TResult Function(ErrorStoreAmbulancState value) error,
    required TResult Function(PostErrorStoreAmbulancState value) postError,
    required TResult Function(ForbiddenStoreAmbulancState value) forbidden,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreAmbulanceState value)? initial,
    TResult Function(LoadingStoreAmbulanceState value)? loading,
    TResult Function(LoadedStoreAmbulanceState value)? loaded,
    TResult Function(UploadingStoreAmbulanceState value)? uploading,
    TResult Function(UploadedStoreAmbulanceState value)? uploaded,
    TResult Function(ErrorStoreAmbulancState value)? error,
    TResult Function(PostErrorStoreAmbulancState value)? postError,
    TResult Function(ForbiddenStoreAmbulancState value)? forbidden,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreAmbulanceState value)? initial,
    TResult Function(LoadingStoreAmbulanceState value)? loading,
    TResult Function(LoadedStoreAmbulanceState value)? loaded,
    TResult Function(UploadingStoreAmbulanceState value)? uploading,
    TResult Function(UploadedStoreAmbulanceState value)? uploaded,
    TResult Function(ErrorStoreAmbulancState value)? error,
    TResult Function(PostErrorStoreAmbulancState value)? postError,
    TResult Function(ForbiddenStoreAmbulancState value)? forbidden,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialStoreAmbulanceState extends StoreAmbulanceState {
  const factory InitialStoreAmbulanceState() = _$InitialStoreAmbulanceState;
  const InitialStoreAmbulanceState._() : super._();
}

/// @nodoc
abstract class $LoadingStoreAmbulanceStateCopyWith<$Res> {
  factory $LoadingStoreAmbulanceStateCopyWith(LoadingStoreAmbulanceState value,
          $Res Function(LoadingStoreAmbulanceState) then) =
      _$LoadingStoreAmbulanceStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$LoadingStoreAmbulanceStateCopyWithImpl<$Res>
    extends _$StoreAmbulanceStateCopyWithImpl<$Res>
    implements $LoadingStoreAmbulanceStateCopyWith<$Res> {
  _$LoadingStoreAmbulanceStateCopyWithImpl(LoadingStoreAmbulanceState _value,
      $Res Function(LoadingStoreAmbulanceState) _then)
      : super(_value, (v) => _then(v as LoadingStoreAmbulanceState));

  @override
  LoadingStoreAmbulanceState get _value =>
      super._value as LoadingStoreAmbulanceState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(LoadingStoreAmbulanceState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadingStoreAmbulanceState extends LoadingStoreAmbulanceState {
  const _$LoadingStoreAmbulanceState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'StoreAmbulanceState.loading(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadingStoreAmbulanceState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $LoadingStoreAmbulanceStateCopyWith<LoadingStoreAmbulanceState>
      get copyWith =>
          _$LoadingStoreAmbulanceStateCopyWithImpl<LoadingStoreAmbulanceState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(StoreAmbulanceModel model) loaded,
    required TResult Function() uploading,
    required TResult Function() uploaded,
    required TResult Function(String message) error,
    required TResult Function(String message) postError,
    required TResult Function(String message) forbidden,
  }) {
    return loading(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreAmbulanceModel model)? loaded,
    TResult Function()? uploading,
    TResult Function()? uploaded,
    TResult Function(String message)? error,
    TResult Function(String message)? postError,
    TResult Function(String message)? forbidden,
  }) {
    return loading?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreAmbulanceModel model)? loaded,
    TResult Function()? uploading,
    TResult Function()? uploaded,
    TResult Function(String message)? error,
    TResult Function(String message)? postError,
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
    required TResult Function(InitialStoreAmbulanceState value) initial,
    required TResult Function(LoadingStoreAmbulanceState value) loading,
    required TResult Function(LoadedStoreAmbulanceState value) loaded,
    required TResult Function(UploadingStoreAmbulanceState value) uploading,
    required TResult Function(UploadedStoreAmbulanceState value) uploaded,
    required TResult Function(ErrorStoreAmbulancState value) error,
    required TResult Function(PostErrorStoreAmbulancState value) postError,
    required TResult Function(ForbiddenStoreAmbulancState value) forbidden,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreAmbulanceState value)? initial,
    TResult Function(LoadingStoreAmbulanceState value)? loading,
    TResult Function(LoadedStoreAmbulanceState value)? loaded,
    TResult Function(UploadingStoreAmbulanceState value)? uploading,
    TResult Function(UploadedStoreAmbulanceState value)? uploaded,
    TResult Function(ErrorStoreAmbulancState value)? error,
    TResult Function(PostErrorStoreAmbulancState value)? postError,
    TResult Function(ForbiddenStoreAmbulancState value)? forbidden,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreAmbulanceState value)? initial,
    TResult Function(LoadingStoreAmbulanceState value)? loading,
    TResult Function(LoadedStoreAmbulanceState value)? loaded,
    TResult Function(UploadingStoreAmbulanceState value)? uploading,
    TResult Function(UploadedStoreAmbulanceState value)? uploaded,
    TResult Function(ErrorStoreAmbulancState value)? error,
    TResult Function(PostErrorStoreAmbulancState value)? postError,
    TResult Function(ForbiddenStoreAmbulancState value)? forbidden,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingStoreAmbulanceState extends StoreAmbulanceState {
  const factory LoadingStoreAmbulanceState(String message) =
      _$LoadingStoreAmbulanceState;
  const LoadingStoreAmbulanceState._() : super._();

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadingStoreAmbulanceStateCopyWith<LoadingStoreAmbulanceState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedStoreAmbulanceStateCopyWith<$Res> {
  factory $LoadedStoreAmbulanceStateCopyWith(LoadedStoreAmbulanceState value,
          $Res Function(LoadedStoreAmbulanceState) then) =
      _$LoadedStoreAmbulanceStateCopyWithImpl<$Res>;
  $Res call({StoreAmbulanceModel model});

  $StoreAmbulanceModelCopyWith<$Res> get model;
}

/// @nodoc
class _$LoadedStoreAmbulanceStateCopyWithImpl<$Res>
    extends _$StoreAmbulanceStateCopyWithImpl<$Res>
    implements $LoadedStoreAmbulanceStateCopyWith<$Res> {
  _$LoadedStoreAmbulanceStateCopyWithImpl(LoadedStoreAmbulanceState _value,
      $Res Function(LoadedStoreAmbulanceState) _then)
      : super(_value, (v) => _then(v as LoadedStoreAmbulanceState));

  @override
  LoadedStoreAmbulanceState get _value =>
      super._value as LoadedStoreAmbulanceState;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(LoadedStoreAmbulanceState(
      model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as StoreAmbulanceModel,
    ));
  }

  @override
  $StoreAmbulanceModelCopyWith<$Res> get model {
    return $StoreAmbulanceModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$LoadedStoreAmbulanceState extends LoadedStoreAmbulanceState {
  const _$LoadedStoreAmbulanceState(this.model) : super._();

  @override
  final StoreAmbulanceModel model;

  @override
  String toString() {
    return 'StoreAmbulanceState.loaded(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedStoreAmbulanceState &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(model);

  @JsonKey(ignore: true)
  @override
  $LoadedStoreAmbulanceStateCopyWith<LoadedStoreAmbulanceState> get copyWith =>
      _$LoadedStoreAmbulanceStateCopyWithImpl<LoadedStoreAmbulanceState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(StoreAmbulanceModel model) loaded,
    required TResult Function() uploading,
    required TResult Function() uploaded,
    required TResult Function(String message) error,
    required TResult Function(String message) postError,
    required TResult Function(String message) forbidden,
  }) {
    return loaded(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreAmbulanceModel model)? loaded,
    TResult Function()? uploading,
    TResult Function()? uploaded,
    TResult Function(String message)? error,
    TResult Function(String message)? postError,
    TResult Function(String message)? forbidden,
  }) {
    return loaded?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreAmbulanceModel model)? loaded,
    TResult Function()? uploading,
    TResult Function()? uploaded,
    TResult Function(String message)? error,
    TResult Function(String message)? postError,
    TResult Function(String message)? forbidden,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStoreAmbulanceState value) initial,
    required TResult Function(LoadingStoreAmbulanceState value) loading,
    required TResult Function(LoadedStoreAmbulanceState value) loaded,
    required TResult Function(UploadingStoreAmbulanceState value) uploading,
    required TResult Function(UploadedStoreAmbulanceState value) uploaded,
    required TResult Function(ErrorStoreAmbulancState value) error,
    required TResult Function(PostErrorStoreAmbulancState value) postError,
    required TResult Function(ForbiddenStoreAmbulancState value) forbidden,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreAmbulanceState value)? initial,
    TResult Function(LoadingStoreAmbulanceState value)? loading,
    TResult Function(LoadedStoreAmbulanceState value)? loaded,
    TResult Function(UploadingStoreAmbulanceState value)? uploading,
    TResult Function(UploadedStoreAmbulanceState value)? uploaded,
    TResult Function(ErrorStoreAmbulancState value)? error,
    TResult Function(PostErrorStoreAmbulancState value)? postError,
    TResult Function(ForbiddenStoreAmbulancState value)? forbidden,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreAmbulanceState value)? initial,
    TResult Function(LoadingStoreAmbulanceState value)? loading,
    TResult Function(LoadedStoreAmbulanceState value)? loaded,
    TResult Function(UploadingStoreAmbulanceState value)? uploading,
    TResult Function(UploadedStoreAmbulanceState value)? uploaded,
    TResult Function(ErrorStoreAmbulancState value)? error,
    TResult Function(PostErrorStoreAmbulancState value)? postError,
    TResult Function(ForbiddenStoreAmbulancState value)? forbidden,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedStoreAmbulanceState extends StoreAmbulanceState {
  const factory LoadedStoreAmbulanceState(StoreAmbulanceModel model) =
      _$LoadedStoreAmbulanceState;
  const LoadedStoreAmbulanceState._() : super._();

  StoreAmbulanceModel get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedStoreAmbulanceStateCopyWith<LoadedStoreAmbulanceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadingStoreAmbulanceStateCopyWith<$Res> {
  factory $UploadingStoreAmbulanceStateCopyWith(
          UploadingStoreAmbulanceState value,
          $Res Function(UploadingStoreAmbulanceState) then) =
      _$UploadingStoreAmbulanceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UploadingStoreAmbulanceStateCopyWithImpl<$Res>
    extends _$StoreAmbulanceStateCopyWithImpl<$Res>
    implements $UploadingStoreAmbulanceStateCopyWith<$Res> {
  _$UploadingStoreAmbulanceStateCopyWithImpl(
      UploadingStoreAmbulanceState _value,
      $Res Function(UploadingStoreAmbulanceState) _then)
      : super(_value, (v) => _then(v as UploadingStoreAmbulanceState));

  @override
  UploadingStoreAmbulanceState get _value =>
      super._value as UploadingStoreAmbulanceState;
}

/// @nodoc

class _$UploadingStoreAmbulanceState extends UploadingStoreAmbulanceState {
  const _$UploadingStoreAmbulanceState() : super._();

  @override
  String toString() {
    return 'StoreAmbulanceState.uploading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UploadingStoreAmbulanceState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(StoreAmbulanceModel model) loaded,
    required TResult Function() uploading,
    required TResult Function() uploaded,
    required TResult Function(String message) error,
    required TResult Function(String message) postError,
    required TResult Function(String message) forbidden,
  }) {
    return uploading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreAmbulanceModel model)? loaded,
    TResult Function()? uploading,
    TResult Function()? uploaded,
    TResult Function(String message)? error,
    TResult Function(String message)? postError,
    TResult Function(String message)? forbidden,
  }) {
    return uploading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreAmbulanceModel model)? loaded,
    TResult Function()? uploading,
    TResult Function()? uploaded,
    TResult Function(String message)? error,
    TResult Function(String message)? postError,
    TResult Function(String message)? forbidden,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStoreAmbulanceState value) initial,
    required TResult Function(LoadingStoreAmbulanceState value) loading,
    required TResult Function(LoadedStoreAmbulanceState value) loaded,
    required TResult Function(UploadingStoreAmbulanceState value) uploading,
    required TResult Function(UploadedStoreAmbulanceState value) uploaded,
    required TResult Function(ErrorStoreAmbulancState value) error,
    required TResult Function(PostErrorStoreAmbulancState value) postError,
    required TResult Function(ForbiddenStoreAmbulancState value) forbidden,
  }) {
    return uploading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreAmbulanceState value)? initial,
    TResult Function(LoadingStoreAmbulanceState value)? loading,
    TResult Function(LoadedStoreAmbulanceState value)? loaded,
    TResult Function(UploadingStoreAmbulanceState value)? uploading,
    TResult Function(UploadedStoreAmbulanceState value)? uploaded,
    TResult Function(ErrorStoreAmbulancState value)? error,
    TResult Function(PostErrorStoreAmbulancState value)? postError,
    TResult Function(ForbiddenStoreAmbulancState value)? forbidden,
  }) {
    return uploading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreAmbulanceState value)? initial,
    TResult Function(LoadingStoreAmbulanceState value)? loading,
    TResult Function(LoadedStoreAmbulanceState value)? loaded,
    TResult Function(UploadingStoreAmbulanceState value)? uploading,
    TResult Function(UploadedStoreAmbulanceState value)? uploaded,
    TResult Function(ErrorStoreAmbulancState value)? error,
    TResult Function(PostErrorStoreAmbulancState value)? postError,
    TResult Function(ForbiddenStoreAmbulancState value)? forbidden,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading(this);
    }
    return orElse();
  }
}

abstract class UploadingStoreAmbulanceState extends StoreAmbulanceState {
  const factory UploadingStoreAmbulanceState() = _$UploadingStoreAmbulanceState;
  const UploadingStoreAmbulanceState._() : super._();
}

/// @nodoc
abstract class $UploadedStoreAmbulanceStateCopyWith<$Res> {
  factory $UploadedStoreAmbulanceStateCopyWith(
          UploadedStoreAmbulanceState value,
          $Res Function(UploadedStoreAmbulanceState) then) =
      _$UploadedStoreAmbulanceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UploadedStoreAmbulanceStateCopyWithImpl<$Res>
    extends _$StoreAmbulanceStateCopyWithImpl<$Res>
    implements $UploadedStoreAmbulanceStateCopyWith<$Res> {
  _$UploadedStoreAmbulanceStateCopyWithImpl(UploadedStoreAmbulanceState _value,
      $Res Function(UploadedStoreAmbulanceState) _then)
      : super(_value, (v) => _then(v as UploadedStoreAmbulanceState));

  @override
  UploadedStoreAmbulanceState get _value =>
      super._value as UploadedStoreAmbulanceState;
}

/// @nodoc

class _$UploadedStoreAmbulanceState extends UploadedStoreAmbulanceState {
  const _$UploadedStoreAmbulanceState() : super._();

  @override
  String toString() {
    return 'StoreAmbulanceState.uploaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UploadedStoreAmbulanceState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(StoreAmbulanceModel model) loaded,
    required TResult Function() uploading,
    required TResult Function() uploaded,
    required TResult Function(String message) error,
    required TResult Function(String message) postError,
    required TResult Function(String message) forbidden,
  }) {
    return uploaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreAmbulanceModel model)? loaded,
    TResult Function()? uploading,
    TResult Function()? uploaded,
    TResult Function(String message)? error,
    TResult Function(String message)? postError,
    TResult Function(String message)? forbidden,
  }) {
    return uploaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreAmbulanceModel model)? loaded,
    TResult Function()? uploading,
    TResult Function()? uploaded,
    TResult Function(String message)? error,
    TResult Function(String message)? postError,
    TResult Function(String message)? forbidden,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStoreAmbulanceState value) initial,
    required TResult Function(LoadingStoreAmbulanceState value) loading,
    required TResult Function(LoadedStoreAmbulanceState value) loaded,
    required TResult Function(UploadingStoreAmbulanceState value) uploading,
    required TResult Function(UploadedStoreAmbulanceState value) uploaded,
    required TResult Function(ErrorStoreAmbulancState value) error,
    required TResult Function(PostErrorStoreAmbulancState value) postError,
    required TResult Function(ForbiddenStoreAmbulancState value) forbidden,
  }) {
    return uploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreAmbulanceState value)? initial,
    TResult Function(LoadingStoreAmbulanceState value)? loading,
    TResult Function(LoadedStoreAmbulanceState value)? loaded,
    TResult Function(UploadingStoreAmbulanceState value)? uploading,
    TResult Function(UploadedStoreAmbulanceState value)? uploaded,
    TResult Function(ErrorStoreAmbulancState value)? error,
    TResult Function(PostErrorStoreAmbulancState value)? postError,
    TResult Function(ForbiddenStoreAmbulancState value)? forbidden,
  }) {
    return uploaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreAmbulanceState value)? initial,
    TResult Function(LoadingStoreAmbulanceState value)? loading,
    TResult Function(LoadedStoreAmbulanceState value)? loaded,
    TResult Function(UploadingStoreAmbulanceState value)? uploading,
    TResult Function(UploadedStoreAmbulanceState value)? uploaded,
    TResult Function(ErrorStoreAmbulancState value)? error,
    TResult Function(PostErrorStoreAmbulancState value)? postError,
    TResult Function(ForbiddenStoreAmbulancState value)? forbidden,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded(this);
    }
    return orElse();
  }
}

abstract class UploadedStoreAmbulanceState extends StoreAmbulanceState {
  const factory UploadedStoreAmbulanceState() = _$UploadedStoreAmbulanceState;
  const UploadedStoreAmbulanceState._() : super._();
}

/// @nodoc
abstract class $ErrorStoreAmbulancStateCopyWith<$Res> {
  factory $ErrorStoreAmbulancStateCopyWith(ErrorStoreAmbulancState value,
          $Res Function(ErrorStoreAmbulancState) then) =
      _$ErrorStoreAmbulancStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorStoreAmbulancStateCopyWithImpl<$Res>
    extends _$StoreAmbulanceStateCopyWithImpl<$Res>
    implements $ErrorStoreAmbulancStateCopyWith<$Res> {
  _$ErrorStoreAmbulancStateCopyWithImpl(ErrorStoreAmbulancState _value,
      $Res Function(ErrorStoreAmbulancState) _then)
      : super(_value, (v) => _then(v as ErrorStoreAmbulancState));

  @override
  ErrorStoreAmbulancState get _value => super._value as ErrorStoreAmbulancState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorStoreAmbulancState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStoreAmbulancState extends ErrorStoreAmbulancState {
  const _$ErrorStoreAmbulancState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'StoreAmbulanceState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorStoreAmbulancState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorStoreAmbulancStateCopyWith<ErrorStoreAmbulancState> get copyWith =>
      _$ErrorStoreAmbulancStateCopyWithImpl<ErrorStoreAmbulancState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(StoreAmbulanceModel model) loaded,
    required TResult Function() uploading,
    required TResult Function() uploaded,
    required TResult Function(String message) error,
    required TResult Function(String message) postError,
    required TResult Function(String message) forbidden,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreAmbulanceModel model)? loaded,
    TResult Function()? uploading,
    TResult Function()? uploaded,
    TResult Function(String message)? error,
    TResult Function(String message)? postError,
    TResult Function(String message)? forbidden,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreAmbulanceModel model)? loaded,
    TResult Function()? uploading,
    TResult Function()? uploaded,
    TResult Function(String message)? error,
    TResult Function(String message)? postError,
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
    required TResult Function(InitialStoreAmbulanceState value) initial,
    required TResult Function(LoadingStoreAmbulanceState value) loading,
    required TResult Function(LoadedStoreAmbulanceState value) loaded,
    required TResult Function(UploadingStoreAmbulanceState value) uploading,
    required TResult Function(UploadedStoreAmbulanceState value) uploaded,
    required TResult Function(ErrorStoreAmbulancState value) error,
    required TResult Function(PostErrorStoreAmbulancState value) postError,
    required TResult Function(ForbiddenStoreAmbulancState value) forbidden,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreAmbulanceState value)? initial,
    TResult Function(LoadingStoreAmbulanceState value)? loading,
    TResult Function(LoadedStoreAmbulanceState value)? loaded,
    TResult Function(UploadingStoreAmbulanceState value)? uploading,
    TResult Function(UploadedStoreAmbulanceState value)? uploaded,
    TResult Function(ErrorStoreAmbulancState value)? error,
    TResult Function(PostErrorStoreAmbulancState value)? postError,
    TResult Function(ForbiddenStoreAmbulancState value)? forbidden,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreAmbulanceState value)? initial,
    TResult Function(LoadingStoreAmbulanceState value)? loading,
    TResult Function(LoadedStoreAmbulanceState value)? loaded,
    TResult Function(UploadingStoreAmbulanceState value)? uploading,
    TResult Function(UploadedStoreAmbulanceState value)? uploaded,
    TResult Function(ErrorStoreAmbulancState value)? error,
    TResult Function(PostErrorStoreAmbulancState value)? postError,
    TResult Function(ForbiddenStoreAmbulancState value)? forbidden,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorStoreAmbulancState extends StoreAmbulanceState {
  const factory ErrorStoreAmbulancState(String message) =
      _$ErrorStoreAmbulancState;
  const ErrorStoreAmbulancState._() : super._();

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorStoreAmbulancStateCopyWith<ErrorStoreAmbulancState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostErrorStoreAmbulancStateCopyWith<$Res> {
  factory $PostErrorStoreAmbulancStateCopyWith(
          PostErrorStoreAmbulancState value,
          $Res Function(PostErrorStoreAmbulancState) then) =
      _$PostErrorStoreAmbulancStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$PostErrorStoreAmbulancStateCopyWithImpl<$Res>
    extends _$StoreAmbulanceStateCopyWithImpl<$Res>
    implements $PostErrorStoreAmbulancStateCopyWith<$Res> {
  _$PostErrorStoreAmbulancStateCopyWithImpl(PostErrorStoreAmbulancState _value,
      $Res Function(PostErrorStoreAmbulancState) _then)
      : super(_value, (v) => _then(v as PostErrorStoreAmbulancState));

  @override
  PostErrorStoreAmbulancState get _value =>
      super._value as PostErrorStoreAmbulancState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(PostErrorStoreAmbulancState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PostErrorStoreAmbulancState extends PostErrorStoreAmbulancState {
  const _$PostErrorStoreAmbulancState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'StoreAmbulanceState.postError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostErrorStoreAmbulancState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $PostErrorStoreAmbulancStateCopyWith<PostErrorStoreAmbulancState>
      get copyWith => _$PostErrorStoreAmbulancStateCopyWithImpl<
          PostErrorStoreAmbulancState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(StoreAmbulanceModel model) loaded,
    required TResult Function() uploading,
    required TResult Function() uploaded,
    required TResult Function(String message) error,
    required TResult Function(String message) postError,
    required TResult Function(String message) forbidden,
  }) {
    return postError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreAmbulanceModel model)? loaded,
    TResult Function()? uploading,
    TResult Function()? uploaded,
    TResult Function(String message)? error,
    TResult Function(String message)? postError,
    TResult Function(String message)? forbidden,
  }) {
    return postError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreAmbulanceModel model)? loaded,
    TResult Function()? uploading,
    TResult Function()? uploaded,
    TResult Function(String message)? error,
    TResult Function(String message)? postError,
    TResult Function(String message)? forbidden,
    required TResult orElse(),
  }) {
    if (postError != null) {
      return postError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStoreAmbulanceState value) initial,
    required TResult Function(LoadingStoreAmbulanceState value) loading,
    required TResult Function(LoadedStoreAmbulanceState value) loaded,
    required TResult Function(UploadingStoreAmbulanceState value) uploading,
    required TResult Function(UploadedStoreAmbulanceState value) uploaded,
    required TResult Function(ErrorStoreAmbulancState value) error,
    required TResult Function(PostErrorStoreAmbulancState value) postError,
    required TResult Function(ForbiddenStoreAmbulancState value) forbidden,
  }) {
    return postError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreAmbulanceState value)? initial,
    TResult Function(LoadingStoreAmbulanceState value)? loading,
    TResult Function(LoadedStoreAmbulanceState value)? loaded,
    TResult Function(UploadingStoreAmbulanceState value)? uploading,
    TResult Function(UploadedStoreAmbulanceState value)? uploaded,
    TResult Function(ErrorStoreAmbulancState value)? error,
    TResult Function(PostErrorStoreAmbulancState value)? postError,
    TResult Function(ForbiddenStoreAmbulancState value)? forbidden,
  }) {
    return postError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreAmbulanceState value)? initial,
    TResult Function(LoadingStoreAmbulanceState value)? loading,
    TResult Function(LoadedStoreAmbulanceState value)? loaded,
    TResult Function(UploadingStoreAmbulanceState value)? uploading,
    TResult Function(UploadedStoreAmbulanceState value)? uploaded,
    TResult Function(ErrorStoreAmbulancState value)? error,
    TResult Function(PostErrorStoreAmbulancState value)? postError,
    TResult Function(ForbiddenStoreAmbulancState value)? forbidden,
    required TResult orElse(),
  }) {
    if (postError != null) {
      return postError(this);
    }
    return orElse();
  }
}

abstract class PostErrorStoreAmbulancState extends StoreAmbulanceState {
  const factory PostErrorStoreAmbulancState(String message) =
      _$PostErrorStoreAmbulancState;
  const PostErrorStoreAmbulancState._() : super._();

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostErrorStoreAmbulancStateCopyWith<PostErrorStoreAmbulancState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForbiddenStoreAmbulancStateCopyWith<$Res> {
  factory $ForbiddenStoreAmbulancStateCopyWith(
          ForbiddenStoreAmbulancState value,
          $Res Function(ForbiddenStoreAmbulancState) then) =
      _$ForbiddenStoreAmbulancStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ForbiddenStoreAmbulancStateCopyWithImpl<$Res>
    extends _$StoreAmbulanceStateCopyWithImpl<$Res>
    implements $ForbiddenStoreAmbulancStateCopyWith<$Res> {
  _$ForbiddenStoreAmbulancStateCopyWithImpl(ForbiddenStoreAmbulancState _value,
      $Res Function(ForbiddenStoreAmbulancState) _then)
      : super(_value, (v) => _then(v as ForbiddenStoreAmbulancState));

  @override
  ForbiddenStoreAmbulancState get _value =>
      super._value as ForbiddenStoreAmbulancState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ForbiddenStoreAmbulancState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForbiddenStoreAmbulancState extends ForbiddenStoreAmbulancState {
  const _$ForbiddenStoreAmbulancState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'StoreAmbulanceState.forbidden(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ForbiddenStoreAmbulancState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ForbiddenStoreAmbulancStateCopyWith<ForbiddenStoreAmbulancState>
      get copyWith => _$ForbiddenStoreAmbulancStateCopyWithImpl<
          ForbiddenStoreAmbulancState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(StoreAmbulanceModel model) loaded,
    required TResult Function() uploading,
    required TResult Function() uploaded,
    required TResult Function(String message) error,
    required TResult Function(String message) postError,
    required TResult Function(String message) forbidden,
  }) {
    return forbidden(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreAmbulanceModel model)? loaded,
    TResult Function()? uploading,
    TResult Function()? uploaded,
    TResult Function(String message)? error,
    TResult Function(String message)? postError,
    TResult Function(String message)? forbidden,
  }) {
    return forbidden?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(StoreAmbulanceModel model)? loaded,
    TResult Function()? uploading,
    TResult Function()? uploaded,
    TResult Function(String message)? error,
    TResult Function(String message)? postError,
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
    required TResult Function(InitialStoreAmbulanceState value) initial,
    required TResult Function(LoadingStoreAmbulanceState value) loading,
    required TResult Function(LoadedStoreAmbulanceState value) loaded,
    required TResult Function(UploadingStoreAmbulanceState value) uploading,
    required TResult Function(UploadedStoreAmbulanceState value) uploaded,
    required TResult Function(ErrorStoreAmbulancState value) error,
    required TResult Function(PostErrorStoreAmbulancState value) postError,
    required TResult Function(ForbiddenStoreAmbulancState value) forbidden,
  }) {
    return forbidden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialStoreAmbulanceState value)? initial,
    TResult Function(LoadingStoreAmbulanceState value)? loading,
    TResult Function(LoadedStoreAmbulanceState value)? loaded,
    TResult Function(UploadingStoreAmbulanceState value)? uploading,
    TResult Function(UploadedStoreAmbulanceState value)? uploaded,
    TResult Function(ErrorStoreAmbulancState value)? error,
    TResult Function(PostErrorStoreAmbulancState value)? postError,
    TResult Function(ForbiddenStoreAmbulancState value)? forbidden,
  }) {
    return forbidden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStoreAmbulanceState value)? initial,
    TResult Function(LoadingStoreAmbulanceState value)? loading,
    TResult Function(LoadedStoreAmbulanceState value)? loaded,
    TResult Function(UploadingStoreAmbulanceState value)? uploading,
    TResult Function(UploadedStoreAmbulanceState value)? uploaded,
    TResult Function(ErrorStoreAmbulancState value)? error,
    TResult Function(PostErrorStoreAmbulancState value)? postError,
    TResult Function(ForbiddenStoreAmbulancState value)? forbidden,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(this);
    }
    return orElse();
  }
}

abstract class ForbiddenStoreAmbulancState extends StoreAmbulanceState {
  const factory ForbiddenStoreAmbulancState(String message) =
      _$ForbiddenStoreAmbulancState;
  const ForbiddenStoreAmbulancState._() : super._();

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForbiddenStoreAmbulancStateCopyWith<ForbiddenStoreAmbulancState>
      get copyWith => throw _privateConstructorUsedError;
}
