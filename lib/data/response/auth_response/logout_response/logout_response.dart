import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_response.freezed.dart';
part 'logout_response.g.dart';

@freezed
abstract class LogoutResponse with _$LogoutResponse {
  factory LogoutResponse({
    required int statusCode,
    required String message,
  }) = _LogoutResponse;
  factory LogoutResponse.fromJson(Map<String, dynamic> json) =>
      _$LogoutResponseFromJson(json);
}
