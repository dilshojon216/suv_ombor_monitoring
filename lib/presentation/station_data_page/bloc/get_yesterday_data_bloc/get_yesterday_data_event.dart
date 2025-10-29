part of 'get_yesterday_data_bloc.dart';

@freezed
class GetYesterdayDataEvent with _$GetYesterdayDataEvent {
  const factory GetYesterdayDataEvent.started() = _Started;
  const factory GetYesterdayDataEvent.loadDataEvent(
    String stationId,
    String day,
  ) = _LoadDataEvent;
}
