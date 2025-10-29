import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_statistic_stations_response.freezed.dart';
part 'get_statistic_stations_response.g.dart';

@freezed
abstract class GetStatisticStationsResponse
    with _$GetStatisticStationsResponse {
  factory GetStatisticStationsResponse({
    required int statusCode,
    required String message,
    required GetStatisticData data,
  }) = _GetStatisticStationsResponse;
  factory GetStatisticStationsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetStatisticStationsResponseFromJson(json);
}

@freezed
abstract class GetStatisticData with _$GetStatisticData {
  factory GetStatisticData({
    required int totalStationsCount,
    required int totalStationsWorking,
    required int totalStationsNotWorking,
    required int totalStationsDefective,
    required int totalTodayWorkStationsCount,
    required int totalThreeDayWorkStationsCount,
    required int totalMonthWorkStationsCount,
    required int totalMoreWorkStationsCount,
    required int totalNotDataStationsCount,
    required int? totalStationsFutureCount,
  }) = _GetStatisticData;
  factory GetStatisticData.fromJson(Map<String, dynamic> json) =>
      _$GetStatisticDataFromJson(json);
}
