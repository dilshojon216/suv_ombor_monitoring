// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_selection_two_day_data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetSelectionTwoDayDataRequest _$GetSelectionTwoDayDataRequestFromJson(
  Map<String, dynamic> json,
) => _GetSelectionTwoDayDataRequest(
  stationId: json['stationId'] as String,
  firstDay: json['firstDay'] as String,
  secondDay: json['secondDay'] as String,
);

Map<String, dynamic> _$GetSelectionTwoDayDataRequestToJson(
  _GetSelectionTwoDayDataRequest instance,
) => <String, dynamic>{
  'stationId': instance.stationId,
  'firstDay': instance.firstDay,
  'secondDay': instance.secondDay,
};
