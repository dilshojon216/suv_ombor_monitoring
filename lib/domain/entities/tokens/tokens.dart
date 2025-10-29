// ignore_for_file: public_member_api_docs, document_ignores

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tokens.freezed.dart';
part 'tokens.g.dart';

@freezed
abstract class Tokens with _$Tokens {
  factory Tokens({
    required String accessToken,
    required String refreshToken,
  }) = _Tokens;
  factory Tokens.fromJson(Map<String, dynamic> json) => _$TokensFromJson(json);
}
