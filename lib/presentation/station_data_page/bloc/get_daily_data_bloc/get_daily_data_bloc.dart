// ignore_for_file: public_member_api_docs, document_ignores

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

part 'get_daily_data_event.dart';
part 'get_daily_data_state.dart';
part 'get_daily_data_bloc.freezed.dart';

@injectable
class GetDailyDataBloc extends Bloc<GetDailyDataEvent, GetDailyDataState> {
  GetDailyDataBloc(
    this._getDailyDataUsecase,
  ) : super(const GetDailyDataState.initial()) {
    on<GetDailyDataEvent>((event, emit) async {
      await event.when(
        started: () async {},
        loadDataEvent: (stationId, month) async =>
            _onLoadData(stationId, month, emit),
      );
    });
  }

  final GetDailyDataUseCase _getDailyDataUsecase;

  Future<void> _onLoadData(
    String stationId,
    String month,
    Emitter<GetDailyDataState> emit,
  ) async {
    emit(const GetDailyDataState.loading());

    final result = await _getDailyDataUsecase(
      GetDailyDataParams(stationId, month),
    );

    result.fold(
      (Failure failure) => emit(
        GetDailyDataState.error(message: failure.message),
      ),
      (GetDailyDataResponse response) {
        emit(GetDailyDataState.loaded(data: response.data));
      },
    );
  }
}
