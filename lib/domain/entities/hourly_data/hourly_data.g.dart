// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HourlyData _$HourlyDataFromJson(Map<String, dynamic> json) => _HourlyData(
  level: json['level'] as num,
  volume: json['volume'] as num,
  correction: json['correction'] as num,
  date: DateTime.parse(json['date'] as String),
);

Map<String, dynamic> _$HourlyDataToJson(_HourlyData instance) =>
    <String, dynamic>{
      'level': instance.level,
      'volume': instance.volume,
      'correction': instance.correction,
      'date': instance.date.toIso8601String(),
    };
