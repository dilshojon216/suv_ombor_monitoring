part of 'get_statistic_stations_bloc.dart';

@freezed
class GetStatisticStationsState with _$GetStatisticStationsState {
  const factory GetStatisticStationsState.initial() = _Initial;
  const factory GetStatisticStationsState.loading() = _Loading;
  const factory GetStatisticStationsState.loaded({
    required int totalStations,
    required int workingStations,
    required int notWorkingStations,
  }) = _Loaded;
  const factory GetStatisticStationsState.error(String message) = _Error;
}
