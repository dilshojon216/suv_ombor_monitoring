import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_data.freezed.dart';
part 'daily_data.g.dart';

@freezed
abstract class DailyData with _$DailyData {
  factory DailyData({
    required num level,
    required num volume,
    required DateTime date,
  }) = _DailyData;
  factory DailyData.fromJson(Map<String, dynamic> json) =>
      _$DailyDataFromJson(json);
}
