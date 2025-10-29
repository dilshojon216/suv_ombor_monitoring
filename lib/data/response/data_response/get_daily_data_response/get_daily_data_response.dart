// ignore_for_file: public_member_api_docs, document_ignores

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

part 'get_daily_data_response.freezed.dart';
part 'get_daily_data_response.g.dart';

@freezed
abstract class GetDailyDataResponse with _$GetDailyDataResponse {
  factory GetDailyDataResponse({
    required int statusCode,
    required String message,
    required List<DailyData> data,
  }) = _GetDailyDataResponse;
  factory GetDailyDataResponse.fromJson(Map<String, dynamic> json) =>
      _$GetDailyDataResponseFromJson(json);
}
