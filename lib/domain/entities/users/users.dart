// ignore_for_file: public_member_api_docs, document_ignores

import 'package:freezed_annotation/freezed_annotation.dart';

part 'users.freezed.dart';
part 'users.g.dart';

@freezed
abstract class Users with _$Users {
  factory Users({
    required String id,
    required String name,
    required String phoneNumber,
    required String role,
  }) = _Users;
  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
}
