// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Stations _$StationsFromJson(Map<String, dynamic> json) => _Stations(
  id: json['id'] as String,
  name: json['name'] as String,
  imel: json['imel'] as String,
  region_id: (json['region_id'] as num).toInt(),
  district_id: (json['district_id'] as num).toInt(),
  balance_organization_id: (json['balance_organization_id'] as num).toInt(),
  userPhoneNum: json['userPhoneNum'] as String,
  devicePhoneNum: json['devicePhoneNum'] as String,
  location: json['location'] as String,
  sendDataTime: json['sendDataTime'] as String,
  sendInfoTime: json['sendInfoTime'] as String,
  programVersion: json['programVersion'] as String,
  temperture: json['temperture'] as num,
  battery: json['battery'] as num,
  signal: json['signal'] as num,
  date: DateTime.parse(json['date'] as String),
  status: (json['status'] as num?)?.toInt(),
  defective: json['defective'] as bool?,
  isIntegration: json['isIntegration'] as bool?,
  sensorTypeId: json['sensorTypeId'] as String?,
  userId: json['userId'] as String?,
  integrationDate: json['integrationDate'] == null
      ? null
      : DateTime.parse(json['integrationDate'] as String),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$StationsToJson(_Stations instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'imel': instance.imel,
  'region_id': instance.region_id,
  'district_id': instance.district_id,
  'balance_organization_id': instance.balance_organization_id,
  'userPhoneNum': instance.userPhoneNum,
  'devicePhoneNum': instance.devicePhoneNum,
  'location': instance.location,
  'sendDataTime': instance.sendDataTime,
  'sendInfoTime': instance.sendInfoTime,
  'programVersion': instance.programVersion,
  'temperture': instance.temperture,
  'battery': instance.battery,
  'signal': instance.signal,
  'date': instance.date.toIso8601String(),
  'status': instance.status,
  'defective': instance.defective,
  'isIntegration': instance.isIntegration,
  'sensorTypeId': instance.sensorTypeId,
  'userId': instance.userId,
  'integrationDate': instance.integrationDate?.toIso8601String(),
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};
