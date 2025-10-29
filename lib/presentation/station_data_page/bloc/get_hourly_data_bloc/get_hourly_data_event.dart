// ignore_for_file: public_member_api_docs, document_ignores

part of 'get_hourly_data_bloc.dart';

@freezed
class GetHourlyDataEvent with _$GetHourlyDataEvent {
  const factory GetHourlyDataEvent.started() = _Started;
  const factory GetHourlyDataEvent.loadData({
    required String stationId,
  }) = _LoadData;
}
