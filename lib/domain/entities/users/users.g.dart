// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Users _$UsersFromJson(Map<String, dynamic> json) => _Users(
  id: json['id'] as String,
  name: json['name'] as String,
  phoneNumber: json['phoneNumber'] as String,
  role: json['role'] as String,
);

Map<String, dynamic> _$UsersToJson(_Users instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'phoneNumber': instance.phoneNumber,
  'role': instance.role,
};
