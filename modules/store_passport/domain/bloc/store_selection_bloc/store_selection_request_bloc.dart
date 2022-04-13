import 'package:bloc/bloc.dart';
import 'package:dixy_staff/core/data/datasources/abstract/remote_data_source.dart';
import 'package:dixy_staff/modules/store_passport/data/models/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_selection_request_bloc.freezed.dart';

@freezed
class StoreSelectionRequestEvent with _$StoreSelectionRequestEvent {
  const StoreSelectionRequestEvent._();

  const factory StoreSelectionRequestEvent.createRequest(
      StoreSelectionPostModel requestModel) = CreateStoreSelectionRequestEvent;

  const factory StoreSelectionRequestEvent.deleteRequest(String requestId) =
      DeleteRequestStoreSelectionRequestEvent;
}

@freezed
class StoreSelectionRequestState with _$StoreSelectionRequestState {
  const StoreSelectionRequestState._();

  const factory StoreSelectionRequestState.initial() =
      InitialStoreSelectionRequestState;

  const factory StoreSelectionRequestState.creating(String message) =
      CreatingStoreSelectionRequestState;
  const factory StoreSelectionRequestState.created() =
      CreatedStoreSelectionRequestState;

  const factory StoreSelectionRequestState.deletingRequest(String message) =
      DeletingRequestStoreSelectionRequestState;
  const factory StoreSelectionRequestState.deletedRequest() =
      DeletedRequestStoreSelectionRequestState;

  const factory StoreSelectionRequestState.failure(String message) =
      FailureStoreSelectionRequestState;
}

class StoreSelectionRequestBloc
    extends Bloc<StoreSelectionRequestEvent, StoreSelectionRequestState> {
  final RemoteDataSource<StoreSelectionPostModel> _remoteDataSource;

  StoreSelectionRequestBloc({
    required RemoteDataSource<StoreSelectionPostModel> remoteDataSource,
  })  : _remoteDataSource = remoteDataSource,
        super(const InitialStoreSelectionRequestState());

  @override
  Stream<StoreSelectionRequestState> mapEventToState(
          StoreSelectionRequestEvent event) =>
      event.when<Stream<StoreSelectionRequestState>>(
        createRequest: _createRequest,
        deleteRequest: _deleteRequest,
      );

  Stream<StoreSelectionRequestState> _createRequest(
      StoreSelectionPostModel requestModel) async* {
    yield CreatingStoreSelectionRequestState('Создание заявки...');

    try {
      final addResult = await _remoteDataSource.add(requestModel);

      if (!addResult) {
        yield FailureStoreSelectionRequestState('Не удалось создать запрос');
      } else {
        yield CreatedStoreSelectionRequestState();
      }
    } catch (e) {
      yield FailureStoreSelectionRequestState(
        'Ошибка соединения. Не удалось загрузить данные',
      );
    }
  }

  Stream<StoreSelectionRequestState> _deleteRequest(String requestId) async* {
    yield DeletingRequestStoreSelectionRequestState('Удаление заявки...');

    try {
      final deleteResult = await _remoteDataSource.delete(requestId);

      if (!deleteResult) {
        yield FailureStoreSelectionRequestState('Не удалось удалить заявку');
      } else {
        yield DeletedRequestStoreSelectionRequestState();
      }
    } catch (e) {
      yield FailureStoreSelectionRequestState(
        'Ошибка соединения. Не удалось загрузить данные',
      );
    }
  }
}
