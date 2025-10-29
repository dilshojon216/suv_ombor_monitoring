// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_monthly_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetMonthlyDataResponse _$GetMonthlyDataResponseFromJson(
  Map<String, dynamic> json,
) => _GetMonthlyDataResponse(
  statusCode: (json['statusCode'] as num).toInt(),
  message: json['message'] as String,
  stations: (json['stations'] as List<dynamic>)
      .map((e) => MonthlyData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetMonthlyDataResponseToJson(
  _GetMonthlyDataResponse instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'stations': instance.stations,
};
