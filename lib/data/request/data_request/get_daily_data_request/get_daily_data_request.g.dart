// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_daily_data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetDailyDataRequest _$GetDailyDataRequestFromJson(Map<String, dynamic> json) =>
    _GetDailyDataRequest(
      stationId: json['stationId'] as String,
      month: json['month'] as String,
    );

Map<String, dynamic> _$GetDailyDataRequestToJson(
  _GetDailyDataRequest instance,
) => <String, dynamic>{
  'stationId': instance.stationId,
  'month': instance.month,
};
