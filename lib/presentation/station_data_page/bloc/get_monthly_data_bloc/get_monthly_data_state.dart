// ignore_for_file: public_member_api_docs, document_ignores

part of 'get_monthly_data_bloc.dart';

@freezed
class GetMonthlyDataState with _$GetMonthlyDataState {
  const factory GetMonthlyDataState.initial() = _Initial;
  const factory GetMonthlyDataState.loading() = _Loading;
  const factory GetMonthlyDataState.loaded({required List<MonthlyData> data}) =
      _Loaded;
  const factory GetMonthlyDataState.error({required String message}) = _Error;
}
