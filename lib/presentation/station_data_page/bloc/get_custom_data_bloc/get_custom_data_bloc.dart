// ignore_for_file: public_member_api_docs, document_ignores

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

part 'get_custom_data_event.dart';
part 'get_custom_data_state.dart';
part 'get_custom_data_bloc.freezed.dart';

@injectable
class GetCustomDataBloc extends Bloc<GetCustomDataEvent, GetCustomDataState> {
  GetCustomDataBloc(
    this._getSelectionDayDataUsecase,
    this._getTwoSelectionDayDataUsecase,
  ) : super(const GetCustomDataState.initial()) {
    on<GetCustomDataEvent>((event, emit) async {
      await event.when(
        started: () async {},
        loadDataOneEvent: (stationId, day) async =>
            _onLoadDataOne(stationId, day, emit),
        loadDataTwoEvent: (stationId, startDay, endDay) async =>
            _onLoadDataTwo(stationId, startDay, endDay, emit),
      );
    });
  }

  final GetSelectionDayDataUseCase _getSelectionDayDataUsecase;
  final GetTwoSelectionDayDataUseCase _getTwoSelectionDayDataUsecase;

  Future<void> _onLoadDataOne(
    String stationId,
    String day,
    Emitter<GetCustomDataState> emit,
  ) async {
    emit(const GetCustomDataState.loading());

    final result = await _getSelectionDayDataUsecase(
      GetSelectionDayDataParams(stationId, day),
    );

    result.fold(
      (Failure failure) => emit(
        GetCustomDataState.error(message: failure.message),
      ),
      (GetHourlyDataResponse response) {
        emit(GetCustomDataState.loadedSelectedDay(data: response.data));
      },
    );
  }

  Future<void> _onLoadDataTwo(
    String stationId,
    String startDay,
    String endDay,
    Emitter<GetCustomDataState> emit,
  ) async {
    emit(const GetCustomDataState.loading());

    final result = await _getTwoSelectionDayDataUsecase(
      GetTwoSelectionDayDataParams(stationId, startDay, endDay),
    );

    result.fold(
      (Failure failure) => emit(
        GetCustomDataState.error(message: failure.message),
      ),
      (GetHourlyDataResponse response) {
        emit(GetCustomDataState.loadedSelectedDay(data: response.data));
      },
    );
  }
}
