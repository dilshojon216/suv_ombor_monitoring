// ignore_for_file: public_member_api_docs, document_ignores

part of 'get_monthly_data_bloc.dart';

@freezed
class GetMonthlyDataEvent with _$GetMonthlyDataEvent {
  const factory GetMonthlyDataEvent.started() = _Started;
  const factory GetMonthlyDataEvent.loadDataEvent({
    required String stationId,
    required String year,
  }) = _LoadDataEvent;
}
