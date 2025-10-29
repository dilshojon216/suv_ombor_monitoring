import 'package:freezed_annotation/freezed_annotation.dart';

part 'hourly_data.freezed.dart';
part 'hourly_data.g.dart';

@freezed
abstract class HourlyData with _$HourlyData {
  factory HourlyData({
    required num level,
    required num volume,
    required num correction,
    required DateTime date,
  }) = _HourlyData;
  factory HourlyData.fromJson(Map<String, dynamic> json) =>
      _$HourlyDataFromJson(json);
}
