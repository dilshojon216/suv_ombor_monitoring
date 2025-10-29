// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_monthly_data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetMonthlyDataRequest _$GetMonthlyDataRequestFromJson(
  Map<String, dynamic> json,
) => _GetMonthlyDataRequest(
  stationId: json['stationId'] as String,
  year: (json['year'] as num).toInt(),
);

Map<String, dynamic> _$GetMonthlyDataRequestToJson(
  _GetMonthlyDataRequest instance,
) => <String, dynamic>{'stationId': instance.stationId, 'year': instance.year};
