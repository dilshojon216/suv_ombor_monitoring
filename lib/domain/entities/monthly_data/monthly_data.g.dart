// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MonthlyData _$MonthlyDataFromJson(Map<String, dynamic> json) => _MonthlyData(
  level: json['level'] as num,
  volume: json['volume'] as num,
  monthNumber: (json['monthNumber'] as num).toInt(),
);

Map<String, dynamic> _$MonthlyDataToJson(_MonthlyData instance) =>
    <String, dynamic>{
      'level': instance.level,
      'volume': instance.volume,
      'monthNumber': instance.monthNumber,
    };
