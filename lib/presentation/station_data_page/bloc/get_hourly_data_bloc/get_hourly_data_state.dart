// ignore_for_file: public_member_api_docs, document_ignores

part of 'get_hourly_data_bloc.dart';

@freezed
class GetHourlyDataState with _$GetHourlyDataState {
  const factory GetHourlyDataState.initial() = _Initial;
  const factory GetHourlyDataState.loading() = _Loading;
  const factory GetHourlyDataState.loaded({
    required List<HourlyData> data,
  }) = _Loaded;
  const factory GetHourlyDataState.error({
    required String message,
  }) = _Error;
}
