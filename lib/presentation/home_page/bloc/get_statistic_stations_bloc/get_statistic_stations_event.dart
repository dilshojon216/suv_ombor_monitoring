part of 'get_statistic_stations_bloc.dart';

@freezed
class GetStatisticStationsEvent with _$GetStatisticStationsEvent {
  const factory GetStatisticStationsEvent.loadStatistics() = _LoadStatistics;
}
