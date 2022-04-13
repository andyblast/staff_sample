import 'package:dixy_staff/core/data/datasources/abstract/remote_data_source.dart';
import 'package:dixy_staff/modules/store_passport/data/models/index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_selection_bloc.freezed.dart';

@freezed
class StoreSelectionEvent with _$StoreSelectionEvent {
  const StoreSelectionEvent._();

  const factory StoreSelectionEvent.readView() = ReadStoreSelectionViewEvent;
}

@freezed
class StoreSelectionState with _$StoreSelectionState {
  const StoreSelectionState._();

  const factory StoreSelectionState.initial() = InitialStoreSelectionState;
  const factory StoreSelectionState.loading(String message) =
      LoadingStoreSelectionState;
  const factory StoreSelectionState.loadedView(
          StoreSelectionViewModel selectionViewModel) =
      LoadedStoreSelectionViewState;
  const factory StoreSelectionState.error(String message) =
      ErrorStoreSelectionState;
  const factory StoreSelectionState.forbidden(String message) =
      ForbiddenStoreSelectionState;
}

class StoreSelectionBloc
    extends Bloc<StoreSelectionEvent, StoreSelectionState> {
  final RemoteDataSource<StoreSelectionViewModel> _remoteDataSource;

  StoreSelectionBloc(
      {required RemoteDataSource<StoreSelectionViewModel> remoteDataSource})
      : _remoteDataSource = remoteDataSource,
        super(const InitialStoreSelectionState());

  @override
  Stream<StoreSelectionState> mapEventToState(StoreSelectionEvent event) =>
      event.when<Stream<StoreSelectionState>>(
        readView: _readView,
      );

  Stream<StoreSelectionState> _readView() async* {
    yield LoadingStoreSelectionState(
        'Загрузка информации о подборе персонала...');

    try {
      final result = await _remoteDataSource.read(0);

      if (result != null) {
        yield LoadedStoreSelectionViewState(result);
      } else {
        yield ErrorStoreSelectionState(
          'Не удалось загрузить информацию о подборе персонала',
        );
      }
    } catch (e) {
      if (e.toString().contains('403')) {
        yield ForbiddenStoreSelectionState(
          'Недостаточно прав для просмотра этой страницы',
        );
      } else {
        yield ErrorStoreSelectionState(
          'Ошибка соединения. Не удалось загрузить данные',
        );
      }
    }
  }
}
