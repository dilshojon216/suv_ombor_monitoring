// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignInResponse _$SignInResponseFromJson(Map<String, dynamic> json) =>
    _SignInResponse(
      statusCode: (json['statusCode'] as num).toInt(),
      message: json['message'] as String,
      data: SignInData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignInResponseToJson(_SignInResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

_SignInData _$SignInDataFromJson(Map<String, dynamic> json) => _SignInData(
  accessToken: json['accessToken'] as String,
  refreshToken: json['refreshToken'] as String,
  user: Users.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SignInDataToJson(_SignInData instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'user': instance.user,
    };
