// ignore_for_file: public_member_api_docs, document_ignores

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

part 'sign_in_page_event.dart';
part 'sign_in_page_state.dart';
part 'sign_in_page_bloc.freezed.dart';

class SignInPageBloc extends Bloc<SignInPageEvent, SignInPageState> {
  SignInPageBloc(
    this.signInUseCase,
    this.appPreferences,
  ) : super(const _Initial()) {
    on<SignInPageEvent>((event, emit) async {
      await event.map(
        started: (e) {},
        signInButtonPressed: (e) async {
          emit(const SignInPageState.loading());
          final result = await signInUseCase(
            SignInRequest(
              username: e.username,
              password: e.password,
            ),
          );
          await result.fold(
            (failure) async {
              emit(SignInPageState.error(message: failure.message));
            },
            (response) async {
              // Save tokens
              await appPreferences.setTokens(
                accessToken: response.data.accessToken,
                refreshToken: response.data.refreshToken,
              );

              // Save user info
              await appPreferences.setUser(response.data.user);

              // Save username for later use
              await appPreferences.setUserName(e.username);

              // Save password if remember me is checked

              await appPreferences.setPassword(e.password);

              await appPreferences.setRememberMe(e.rememberMe);

              // Set installed to true
              await appPreferences.setInstalled(true);

              emit(SignInPageState.loaded(response: response));
            },
          );
        },
      );
    });
  }

  final SignInUseCase signInUseCase;
  final AppPreferences appPreferences;
}
