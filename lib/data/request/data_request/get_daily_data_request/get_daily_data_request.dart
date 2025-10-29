import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_daily_data_request.freezed.dart';
part 'get_daily_data_request.g.dart';

@freezed
abstract class GetDailyDataRequest with _$GetDailyDataRequest {
  factory GetDailyDataRequest({
    required String stationId,
    required String month,
  }) = _GetDailyDataRequest;
  factory GetDailyDataRequest.fromJson(Map<String, dynamic> json) =>
      _$GetDailyDataRequestFromJson(json);
}
