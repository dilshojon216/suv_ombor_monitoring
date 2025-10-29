// ignore_for_file: public_member_api_docs, document_ignores

part of 'get_daily_data_bloc.dart';

@freezed
class GetDailyDataEvent with _$GetDailyDataEvent {
  const factory GetDailyDataEvent.started() = _Started;
  const factory GetDailyDataEvent.loadDataEvent({
    required String stationId,
    required String month,
  }) = _LoadDataEvent;
}
