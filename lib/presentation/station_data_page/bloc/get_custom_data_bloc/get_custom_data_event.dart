// ignore_for_file: public_member_api_docs, document_ignores

part of 'get_custom_data_bloc.dart';

@freezed
class GetCustomDataEvent with _$GetCustomDataEvent {
  const factory GetCustomDataEvent.started() = _Started;
  const factory GetCustomDataEvent.loadDataOneEvent(
    String stationId,
    String day,
  ) = _LoadDataOneEvent;

  const factory GetCustomDataEvent.loadDataTwoEvent(
    String stationId,
    String startDay,
    String endDay,
  ) = _LoadDataTwoEvent;
}
