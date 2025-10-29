import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suv_ombor_monitoring/core/core.dart';
import 'package:suv_ombor_monitoring/domain/usecases/data_usecase/get_last_data_usecase.dart';

part 'get_last_data_event.dart';
part 'get_last_data_state.dart';
part 'get_last_data_bloc.freezed.dart';

class GetLastDataBloc extends Bloc<GetLastDataEvent, GetLastDataState> {
  GetLastDataBloc(this._getLastDataUsecase) : super(const _Initial()) {
    on<_LoadData>(_onLoadData);
    on<_LoadMore>(_onLoadMore);
    on<_Refresh>(_onRefresh);
  }

  final GetLastDataUsecase _getLastDataUsecase;
  List<LastData> _allData = [];

  Future<void> _onLoadData(
    _LoadData event,
    Emitter<GetLastDataState> emit,
  ) async {
    emit(const GetLastDataState.loading());

    print(
      '🔵 GetLastDataBloc: Loading data with page=${event.page}, perPage=${event.perPage}',
    );

    final result = await _getLastDataUsecase(
      GetLastDataSmartWaterParams(event.page, event.perPage),
    );

    result.fold(
      (Failure failure) {
        print('🔴 GetLastDataBloc Error: ${failure.message}');
        print('🔴 Failure details: $failure');
        emit(GetLastDataState.error(message: failure.message));
      },
      (LastDataResponse response) {
        print(
          '🟢 GetLastDataBloc Success: Loaded ${response.data.length} items',
        );
        _allData = response.data;
        emit(
          GetLastDataState.loaded(
            data: _allData,
            currentPage: response.currentPage,
            totalPages: response.totalPages,
            hasMore: response.currentPage < response.totalPages,
          ),
        );
      },
    );
  }

  Future<void> _onLoadMore(
    _LoadMore event,
    Emitter<GetLastDataState> emit,
  ) async {
    final currentState = state;
    if (currentState is! _Loaded || !currentState.hasMore) return;

    emit(GetLastDataState.loadingMore(data: _allData));

    print(
      '🔵 GetLastDataBloc: Loading more with page=${event.page}, perPage=${event.perPage}',
    );

    final result = await _getLastDataUsecase(
      GetLastDataSmartWaterParams(event.page, event.perPage),
    );

    result.fold(
      (Failure failure) {
        print('🔴 GetLastDataBloc LoadMore Error: ${failure.message}');
        // Xato bo'lsa, oldingi holatga qaytamiz
        emit(currentState);
      },
      (LastDataResponse response) {
        final newData = response.data;
        _allData = [..._allData, ...newData];

        emit(
          GetLastDataState.loaded(
            data: _allData,
            currentPage: response.currentPage,
            totalPages: response.totalPages,
            hasMore: response.currentPage < response.totalPages,
          ),
        );
      },
    );
  }

  Future<void> _onRefresh(
    _Refresh event,
    Emitter<GetLastDataState> emit,
  ) async {
    _allData = [];
    add(const GetLastDataEvent.loadData());
  }
}
