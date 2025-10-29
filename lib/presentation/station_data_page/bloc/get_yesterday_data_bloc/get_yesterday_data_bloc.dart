// ignore_for_file: public_member_api_docs, document_ignores

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

part 'get_yesterday_data_event.dart';
part 'get_yesterday_data_state.dart';
part 'get_yesterday_data_bloc.freezed.dart';

@injectable
class GetYesterdayDataBloc
    extends Bloc<GetYesterdayDataEvent, GetYesterdayDataState> {
  GetYesterdayDataBloc(
    this._getYesterdayDataUsecase,
  ) : super(const GetYesterdayDataState.initial()) {
    on<GetYesterdayDataEvent>((event, emit) async {
      await event.when(
        started: () async {},
        loadDataEvent: (stationId, day) async =>
            _onLoadData(stationId, day, emit),
      );
    });
  }
  final GetYesterdayDataUseCase _getYesterdayDataUsecase;

  Future<void> _onLoadData(
    String stationId,
    String day,
    Emitter<GetYesterdayDataState> emit,
  ) async {
    emit(const GetYesterdayDataState.loading());

    final result = await _getYesterdayDataUsecase(
      GetYesterdayDataParams(stationId, day),
    );

    result.fold(
      (Failure failure) => emit(
        GetYesterdayDataState.error(message: failure.message),
      ),
      (GetHourlyDataResponse response) {
        emit(GetYesterdayDataState.loaded(data: response.data));
      },
    );
  }
}
