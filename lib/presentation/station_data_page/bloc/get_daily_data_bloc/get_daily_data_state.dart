part of 'get_daily_data_bloc.dart';

@freezed
class GetDailyDataState with _$GetDailyDataState {
  const factory GetDailyDataState.initial() = _Initial;
  const factory GetDailyDataState.loading() = _Loading;
  const factory GetDailyDataState.loaded({required List<DailyData> data}) =
      _Loaded;
  const factory GetDailyDataState.error({required String message}) = _Error;
}
