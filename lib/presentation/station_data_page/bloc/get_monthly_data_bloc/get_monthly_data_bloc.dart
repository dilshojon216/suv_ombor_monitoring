// ignore_for_file: public_member_api_docs, document_ignores

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

part 'get_monthly_data_event.dart';
part 'get_monthly_data_state.dart';
part 'get_monthly_data_bloc.freezed.dart';

@injectable
class GetMonthlyDataBloc
    extends Bloc<GetMonthlyDataEvent, GetMonthlyDataState> {
  GetMonthlyDataBloc(
    this._getMonthlyDataUsecase,
  ) : super(const GetMonthlyDataState.initial()) {
    on<GetMonthlyDataEvent>((event, emit) async {
      await event.when(
        started: () async {},
        loadDataEvent: (stationId, year) async =>
            _onLoadData(stationId, year, emit),
      );
    });
  }

  final GetMonthlyDataUseCase _getMonthlyDataUsecase;

  Future<void> _onLoadData(
    String stationId,
    String year,
    Emitter<GetMonthlyDataState> emit,
  ) async {
    emit(const GetMonthlyDataState.loading());

    final result = await _getMonthlyDataUsecase(
      GetMonthlyDataParams(stationId, int.parse(year)),
    );

    result.fold(
      (Failure failure) => emit(
        GetMonthlyDataState.error(message: failure.message),
      ),
      (GetMonthlyDataResponse response) {
        emit(GetMonthlyDataState.loaded(data: response.stations));
      },
    );
  }
}
