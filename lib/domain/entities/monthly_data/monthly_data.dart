import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_data.freezed.dart';
part 'monthly_data.g.dart';

@freezed
abstract class MonthlyData with _$MonthlyData {
  factory MonthlyData(
      {required num level,
      required num volume,
      required int monthNumber}) = _MonthlyData;
  factory MonthlyData.fromJson(Map<String, dynamic> json) =>
      _$MonthlyDataFromJson(json);
}
