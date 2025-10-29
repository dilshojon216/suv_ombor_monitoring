// ignore_for_file: public_member_api_docs, document_ignores

part of 'get_custom_data_bloc.dart';

@freezed
class GetCustomDataState with _$GetCustomDataState {
  const factory GetCustomDataState.initial() = _Initial;
  const factory GetCustomDataState.loading() = _Loading;
  const factory GetCustomDataState.loadedSelectedDay({
    required List<HourlyData> data,
  }) = _LoadedSelectedDay;
  const factory GetCustomDataState.loadedDateRange({
    required List<HourlyData> data,
  }) = _LoadedDateRange;
  const factory GetCustomDataState.error({required String message}) = _Error;
}
