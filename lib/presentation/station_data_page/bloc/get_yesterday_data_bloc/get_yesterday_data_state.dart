part of 'get_yesterday_data_bloc.dart';

@freezed
class GetYesterdayDataState with _$GetYesterdayDataState {
  const factory GetYesterdayDataState.initial() = _Initial;
  const factory GetYesterdayDataState.loading() = _Loading;
  const factory GetYesterdayDataState.loaded({
    required List<HourlyData> data,
  }) = _Loaded;
  const factory GetYesterdayDataState.error({
    required String message,
  }) = _Error;
}
