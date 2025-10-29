// ignore_for_file: public_member_api_docs, non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_data.freezed.dart';
part 'last_data.g.dart';

@freezed
abstract class LastData with _$LastData {
  const factory LastData({
    required String id,
    required String name,
    required String imel,
    required int region_id,
    required int district_id,
    required int balance_organization_id,
    @Default('') String userPhoneNum,
    @Default('') String devicePhoneNum,
    @Default('') String location,
    @Default('') String sendDataTime,
    @Default('') String sendInfoTime,
    @Default('') String programVersion,
    @Default(0) num temperture,
    @Default(0) num battery,
    @Default(0) num signal,
    required DateTime date,
    @Default(0) int status,
    @Default(false) bool defective,
    @Default(false) bool isIntegration,
    String? sensorTypeId,
    String? userId,
    DateTime? integrationDate,
    required DateTime createdAt,
    required DateTime updatedAt,
    DataForLastData? lastData,
  }) = _LastData;

  factory LastData.fromJson(Map<String, dynamic> json) =>
      _$LastDataFromJson(json);
}

@freezed
abstract class DataForLastData with _$DataForLastData {
  const factory DataForLastData({
    required String id,
    required String stationsId,
    required num level,
    required num volume,
    required num correction,
    required DateTime date,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _DataForLastData;

  factory DataForLastData.fromJson(Map<String, dynamic> json) =>
      _$DataForLastDataFromJson(json);
}
