// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_daily_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetDailyDataResponse _$GetDailyDataResponseFromJson(
  Map<String, dynamic> json,
) => _GetDailyDataResponse(
  statusCode: (json['statusCode'] as num).toInt(),
  message: json['message'] as String,
  data: (json['data'] as List<dynamic>)
      .map((e) => DailyData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetDailyDataResponseToJson(
  _GetDailyDataResponse instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data,
};
