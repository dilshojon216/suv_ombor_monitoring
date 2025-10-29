// ignore_for_file: public_member_api_docs, document_ignores

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

part 'get_monthly_data_response.freezed.dart';
part 'get_monthly_data_response.g.dart';

@freezed
abstract class GetMonthlyDataResponse with _$GetMonthlyDataResponse {
  factory GetMonthlyDataResponse({
    required int statusCode,
    required String message,
    required List<MonthlyData> stations,
  }) = _GetMonthlyDataResponse;
  factory GetMonthlyDataResponse.fromJson(Map<String, dynamic> json) =>
      _$GetMonthlyDataResponseFromJson(json);
}
