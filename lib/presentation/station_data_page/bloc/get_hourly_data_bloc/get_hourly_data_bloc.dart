// ignore_for_file: public_member_api_docs, document_ignores

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

part 'get_hourly_data_event.dart';
part 'get_hourly_data_state.dart';
part 'get_hourly_data_bloc.freezed.dart';

@injectable
class GetHourlyDataBloc extends Bloc<GetHourlyDataEvent, GetHourlyDataState> {
  GetHourlyDataBloc(this._getHourlyDataUsecase)
    : super(const GetHourlyDataState.initial()) {
    on<GetHourlyDataEvent>((event, emit) async {
      await event.when(
        started: () async {},
        loadData: (stationId) async => _onLoadData(stationId, emit),
      );
    });
  }

  final GetHourlyDataUsecase _getHourlyDataUsecase;

  Future<void> _onLoadData(
    String stationId,
    Emitter<GetHourlyDataState> emit,
  ) async {
    emit(const GetHourlyDataState.loading());

    final result = await _getHourlyDataUsecase(
      GetHourlyDataParams(stationId),
    );

    result.fold(
      (Failure failure) => emit(
        GetHourlyDataState.error(message: failure.message),
      ),
      (GetHourlyDataResponse response) {
        emit(GetHourlyDataState.loaded(data: response.data));
      },
    );
  }
}
