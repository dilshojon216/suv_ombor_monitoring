// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_statistic_stations_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetStatisticStationsResponse _$GetStatisticStationsResponseFromJson(
  Map<String, dynamic> json,
) => _GetStatisticStationsResponse(
  statusCode: (json['statusCode'] as num).toInt(),
  message: json['message'] as String,
  data: GetStatisticData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetStatisticStationsResponseToJson(
  _GetStatisticStationsResponse instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data,
};

_GetStatisticData _$GetStatisticDataFromJson(
  Map<String, dynamic> json,
) => _GetStatisticData(
  totalStationsCount: (json['totalStationsCount'] as num).toInt(),
  totalStationsWorking: (json['totalStationsWorking'] as num).toInt(),
  totalStationsNotWorking: (json['totalStationsNotWorking'] as num).toInt(),
  totalStationsDefective: (json['totalStationsDefective'] as num).toInt(),
  totalTodayWorkStationsCount: (json['totalTodayWorkStationsCount'] as num)
      .toInt(),
  totalThreeDayWorkStationsCount:
      (json['totalThreeDayWorkStationsCount'] as num).toInt(),
  totalMonthWorkStationsCount: (json['totalMonthWorkStationsCount'] as num)
      .toInt(),
  totalMoreWorkStationsCount: (json['totalMoreWorkStationsCount'] as num)
      .toInt(),
  totalNotDataStationsCount: (json['totalNotDataStationsCount'] as num).toInt(),
  totalStationsFutureCount: (json['totalStationsFutureCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$GetStatisticDataToJson(_GetStatisticData instance) =>
    <String, dynamic>{
      'totalStationsCount': instance.totalStationsCount,
      'totalStationsWorking': instance.totalStationsWorking,
      'totalStationsNotWorking': instance.totalStationsNotWorking,
      'totalStationsDefective': instance.totalStationsDefective,
      'totalTodayWorkStationsCount': instance.totalTodayWorkStationsCount,
      'totalThreeDayWorkStationsCount': instance.totalThreeDayWorkStationsCount,
      'totalMonthWorkStationsCount': instance.totalMonthWorkStationsCount,
      'totalMoreWorkStationsCount': instance.totalMoreWorkStationsCount,
      'totalNotDataStationsCount': instance.totalNotDataStationsCount,
      'totalStationsFutureCount': instance.totalStationsFutureCount,
    };
