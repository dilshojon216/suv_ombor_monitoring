// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_hourly_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetHourlyDataResponse _$GetHourlyDataResponseFromJson(
  Map<String, dynamic> json,
) => _GetHourlyDataResponse(
  statusCode: (json['statusCode'] as num).toInt(),
  data: (json['data'] as List<dynamic>)
      .map((e) => HourlyData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetHourlyDataResponseToJson(
  _GetHourlyDataResponse instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'data': instance.data,
};
