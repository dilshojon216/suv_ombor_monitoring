// ignore_for_file: public_member_api_docs, document_ignores

part of 'sign_in_page_bloc.dart';

@freezed
class SignInPageEvent with _$SignInPageEvent {
  const factory SignInPageEvent.started() = _Started;
  const factory SignInPageEvent.signInButtonPressed({
    required String username,
    required String password,
    @Default(false) bool rememberMe,
  }) = _SignInButtonPressed;
}
