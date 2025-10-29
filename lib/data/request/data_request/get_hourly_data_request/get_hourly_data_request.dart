import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_hourly_data_request.freezed.dart';
part 'get_hourly_data_request.g.dart';

@freezed
abstract class GetHourlyDataRequest with _$GetHourlyDataRequest {
  factory GetHourlyDataRequest({required String stationId}) =
      _GetHourlyDataRequest;
  factory GetHourlyDataRequest.fromJson(Map<String, dynamic> json) =>
      _$GetHourlyDataRequestFromJson(json);
}
