// ignore_for_file: public_member_api_docs

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:suv_ombor_monitoring/core/core.dart';
import 'package:suv_ombor_monitoring/domain/usecases/data_usecase/get_statistic_stations_usecase.dart';

part 'get_statistic_stations_event.dart';
part 'get_statistic_stations_state.dart';
part 'get_statistic_stations_bloc.freezed.dart';

@injectable
class GetStatisticStationsBloc
    extends Bloc<GetStatisticStationsEvent, GetStatisticStationsState> {
  GetStatisticStationsBloc(this._getStatisticStationsUseCase)
    : super(const GetStatisticStationsState.initial()) {
    on<GetStatisticStationsEvent>((event, emit) async {
      await event.when(
        loadStatistics: () async => _onLoadStatistics(emit),
      );
    });
  }
  final GetStatisticStationsUseCase _getStatisticStationsUseCase;

  Future<void> _onLoadStatistics(
    Emitter<GetStatisticStationsState> emit,
  ) async {
    emit(const GetStatisticStationsState.loading());

    final result = await _getStatisticStationsUseCase(null);

    result.fold(
      (Failure failure) =>
          emit(GetStatisticStationsState.error(failure.message)),
      (GetStatisticStationsResponse statistics) {
        emit(
          GetStatisticStationsState.loaded(
            totalStations: statistics.data.totalStationsCount,
            workingStations: statistics.data.totalStationsWorking,
            notWorkingStations: statistics.data.totalStationsNotWorking,
          ),
        );
      },
    );
  }
}
