// ignore_for_file: public_member_api_docs, document_ignores, lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

part 'app_localization_state.dart';
part 'app_localization_cubit.freezed.dart';

/// Cubit to manage the app's localization state.
/// It loads the locale based on the user's preferences and emits the appropriate state.
/// This cubit is used to initialize the app's language settings and can be used to change the language dynamically.
/// It listens to the user's language preferences and updates the app's locale accordingly.
/// It also provides a method to initialize the locale when the app starts.
/// The [AppLocalizationCubit] extends [Cubit] with [AppLocalizationState] to manage the localization state.
class AppLocalizationCubit extends Cubit<AppLocalizationState> {
  AppLocalizationCubit(
    this._preferences,
  ) : super(const AppLocalizationState.initial());
  final AppPreferences _preferences;
  void loadLocale(Locale locale, String languageCode) {
    // ignore: discarded_futures
    _preferences.setAppLanguage(languageCode);
    emit(
      AppLocalizationState.loaded(locale),
    );
  }

  void initLocale() {
    final locale = _preferences.appLanguage;
    emit(AppLocalizationState.loaded(Locale(locale)));
  }
}
