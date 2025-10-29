// ignore_for_file: non_constant_identifier_names, public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';

part 'stations.freezed.dart';
part 'stations.g.dart';

@freezed
abstract class Stations with _$Stations {
  factory Stations({
    required String id,
    required String name,
    required String imel,
    required int region_id,
    required int district_id,
    required int balance_organization_id,
    required String userPhoneNum,
    required String devicePhoneNum,
    required String location,
    required String sendDataTime,
    required String sendInfoTime,
    required String programVersion,
    required num temperture,
    required num battery,
    required num signal,
    required DateTime date,
    required int? status,
    required bool? defective,
    required bool? isIntegration,
    required String? sensorTypeId,
    required String? userId,
    required DateTime? integrationDate,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Stations;

  factory Stations.fromJson(Map<String, dynamic> json) =>
      _$StationsFromJson(json);
}
