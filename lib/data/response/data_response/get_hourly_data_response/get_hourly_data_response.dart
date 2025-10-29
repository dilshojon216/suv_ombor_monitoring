// ignore_for_file: public_member_api_docs, document_ignores

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

part 'get_hourly_data_response.freezed.dart';
part 'get_hourly_data_response.g.dart';

@freezed
abstract class GetHourlyDataResponse with _$GetHourlyDataResponse {
  factory GetHourlyDataResponse({
    required int statusCode,
    required List<HourlyData> data,
  }) = _GetHourlyDataResponse;
  factory GetHourlyDataResponse.fromJson(Map<String, dynamic> json) =>
      _$GetHourlyDataResponseFromJson(json);
}
