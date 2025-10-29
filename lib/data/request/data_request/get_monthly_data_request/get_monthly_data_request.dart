import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_monthly_data_request.freezed.dart';
part 'get_monthly_data_request.g.dart';

@freezed
abstract class GetMonthlyDataRequest with _$GetMonthlyDataRequest {
  factory GetMonthlyDataRequest({
    required String stationId,
    required int year,
  }) = _GetMonthlyDataRequest;
  factory GetMonthlyDataRequest.fromJson(Map<String, dynamic> json) =>
      _$GetMonthlyDataRequestFromJson(json);
}
