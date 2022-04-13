import 'package:bloc/bloc.dart';
import 'package:dixy_staff/core/data/datasources/abstract/remote_data_source.dart';
import 'package:dixy_staff/core/data/models/datasource_filter.dart';
import 'package:dixy_staff/modules/store_passport/data/models/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_selection_detail_bloc.freezed.dart';

@freezed
class StoreSelectionDetailEvent with _$StoreSelectionDetailEvent {
  const StoreSelectionDetailEvent._();

  const factory StoreSelectionDetailEvent.readAllDetails(String requestId) =
      ReadStoreSelectionDetailEvent;

  const factory StoreSelectionDetailEvent.deleteDetail(
      String requestId, String detailId) = DeleteStoreSelectionDetailEvent;
}

@freezed
class StoreSelectionDetailState with _$StoreSelectionDetailState {
  const StoreSelectionDetailState._();

  const factory StoreSelectionDetailState.initial() =
      InitialStoreSelectionDetailState;

  const factory StoreSelectionDetailState.loading(String message) =
      LoadingStoreSelectionDetailState;
  const factory StoreSelectionDetailState.loaded(
          List<StoreSelectionRequestDetailModel> result) =
      LoadedStoreSelectionDetailState;

  const factory StoreSelectionDetailState.deleting(String message) =
      DeletingStoreSelectionDetailState;
  const factory StoreSelectionDetailState.deleted() =
      DeletedStoreSelectionDetailState;

  const factory StoreSelectionDetailState.failure(String message) =
      FailureStoreSelectionDetailState;
}

class StoreSelectionDetailBloc
    extends Bloc<StoreSelectionDetailEvent, StoreSelectionDetailState> {
  final RemoteDataSource<StoreSelectionRequestDetailModel> _remoteDataSource;

  StoreSelectionDetailBloc(
      {required RemoteDataSource<StoreSelectionRequestDetailModel>
          remoteDataSource})
      : _remoteDataSource = remoteDataSource,
        super(const InitialStoreSelectionDetailState());

  @override
  Stream<StoreSelectionDetailState> mapEventToState(
          StoreSelectionDetailEvent event) =>
      event.when<Stream<StoreSelectionDetailState>>(
        readAllDetails: _readAllDetails,
        deleteDetail: _deleteDetail,
      );

  Stream<StoreSelectionDetailState> _readAllDetails(String requestId) async* {
    yield LoadingStoreSelectionDetailState(
        'Загрузка информации о подзаявках...');

    try {
      final filter = DataSourceFilter<StoreSelectionRequestDetailModel>(
        params: {
          'requestId': requestId,
        },
      );
      final result = await _remoteDataSource.readList(filter: filter);

      if (result.isNotEmpty) {
        yield LoadedStoreSelectionDetailState(result);
      } else {
        yield FailureStoreSelectionDetailState('Нет информации о подзаявках');
      }
    } catch (e) {
      yield FailureStoreSelectionDetailState(
        'Ошибка соединения. Не удалось загрузить данные',
      );
    }
  }

  Stream<StoreSelectionDetailState> _deleteDetail(
      String requestId, String detailId) async* {
    yield DeletingStoreSelectionDetailState('Отмена подзаявки...');

    try {
      final deleteResult = await _remoteDataSource.delete(detailId);

      if (!deleteResult) {
        yield FailureStoreSelectionDetailState('Не удалось удалить заявку');
      } else {
        yield* _readAllDetails(requestId);
      }
    } catch (e) {
      yield FailureStoreSelectionDetailState(
        'Ошибка соединения. Не удалось отменить заявку',
      );
    }
  }
}
