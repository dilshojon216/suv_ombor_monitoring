// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DailyData _$DailyDataFromJson(Map<String, dynamic> json) => _DailyData(
  level: json['level'] as num,
  volume: json['volume'] as num,
  date: DateTime.parse(json['date'] as String),
);

Map<String, dynamic> _$DailyDataToJson(_DailyData instance) =>
    <String, dynamic>{
      'level': instance.level,
      'volume': instance.volume,
      'date': instance.date.toIso8601String(),
    };
