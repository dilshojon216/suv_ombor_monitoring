// ignore_for_file: public_member_api_docs, document_ignores

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

part 'signin_response.freezed.dart';
part 'signin_response.g.dart';

@freezed
abstract class SignInResponse with _$SignInResponse {
  factory SignInResponse({
    required int statusCode,
    required String message,
    required SignInData data,
  }) = _SignInResponse;

  factory SignInResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseFromJson(json);
}

@freezed
abstract class SignInData with _$SignInData {
  factory SignInData({
    required String accessToken,
    required String refreshToken,
    required Users user,
  }) = _SignInData;
  factory SignInData.fromJson(Map<String, dynamic> json) =>
      _$SignInDataFromJson(json);
}
