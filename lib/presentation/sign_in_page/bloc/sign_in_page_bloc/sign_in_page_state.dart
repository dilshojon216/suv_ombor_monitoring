// ignore_for_file: public_member_api_docs, document_ignores

part of 'sign_in_page_bloc.dart';

@freezed
class SignInPageState with _$SignInPageState {
  const factory SignInPageState.initial() = _Initial;
  const factory SignInPageState.loading() = _Loading;
  const factory SignInPageState.loaded({
    required SignInResponse response,
  }) = _LoadedState;
  const factory SignInPageState.error({
    required String message,
  }) = _ErrorState;
}
