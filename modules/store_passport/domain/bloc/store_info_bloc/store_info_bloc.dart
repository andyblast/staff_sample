import 'package:bloc/bloc.dart';
import 'package:dixy_staff/core/domain/repositories/base_repository.dart';
import 'package:dixy_staff/modules/store_passport/data/models/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_info_bloc.freezed.dart';

@freezed
class StoreInfoEvent with _$StoreInfoEvent {
  const StoreInfoEvent._();

  const factory StoreInfoEvent.read(String siteCode) = ReadStoreInfoEvent;

  const factory StoreInfoEvent.init() = InitStoreInfoEvent;
}

@freezed
class StoreInfoState with _$StoreInfoState {
  const StoreInfoState._();

  const factory StoreInfoState.initial() = InitialStoreInfoState;

  const factory StoreInfoState.loading(String message) = LoadingStoreInfoState;

  const factory StoreInfoState.loaded(StoreInfoModel storeInfo) =
      LoadedStoreInfoState;

  const factory StoreInfoState.failure(String message) = FailureStoreInfoState;
}

class StoreInfoBloc extends Bloc<StoreInfoEvent, StoreInfoState> {
  final BaseRepository<StoreInfoModel> _baseRepository;
  StoreInfoBloc({
    required BaseRepository<StoreInfoModel> baseRepository,
  })  : _baseRepository = baseRepository,
        super(const InitialStoreInfoState());

  @override
  Stream<StoreInfoState> mapEventToState(StoreInfoEvent event) =>
      event.when<Stream<StoreInfoState>>(
        read: _read,
        init: _init,
      );

  Stream<StoreInfoState> _init() async* {
    yield InitialStoreInfoState();
  }

  Stream<StoreInfoState> _read(String siteCode) async* {
    yield LoadingStoreInfoState('Загрузка информации о магазине...');

    try {
      final result = await _baseRepository.read(siteCode);

      yield result.fold(
          (e) => FailureStoreInfoState('Возникла ошибка при загрузке данных'),
          (r) {
        if (r.data != null) {
          return LoadedStoreInfoState(r.data!);
        } else {
          return FailureStoreInfoState(
            'Ошибка соединения. Не удалось загрузить данные',
          );
        }
      });
    } catch (e) {
      yield FailureStoreInfoState('Возникла ошибка при загрузке данных');
    }
  }
}
