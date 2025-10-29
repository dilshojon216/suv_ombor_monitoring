// ignore_for_file: public_member_api_docs, document_ignores, lines_longer_than_80_chars, discarded_futures

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

part 'app_theme_state.dart';
part 'app_theme_cubit.freezed.dart';

/// Cubit to manage the app's theme state.
/// It toggles between light and dark themes based on user preferences.
///  This cubit is used to initialize the app's theme settings and can be used to change the theme dynamically.
/// It listens to the user's theme preferences and updates the app's theme accordingly.
/// It also provides a method to initialize the theme when the app starts.
/// The [AppThemeCubit] extends [Cubit] with [AppThemeState] to manage the theme state.
/// This cubit is responsible for handling the theme changes and persisting the user's theme preference.
/// It provides methods to toggle the theme and initialize the theme based on user preferences.
class AppThemeCubit extends Cubit<AppThemeState> {
  AppThemeCubit(
    this._preferences,
  ) : super(const AppThemeState.light());
  final AppPreferences _preferences;

  void toggleTheme() {
    state.maybeWhen(
      orElse: () {},
      light: () {
        _preferences.setDarkTheme(true);
        emit(const AppThemeState.dark());
      },
      dark: () {
        _preferences.setDarkTheme(false);
        emit(const AppThemeState.light());
      },
    );
  }

  void initTheme() {
    final isDark = _preferences.isDarkTheme;
    isDark
        ? emit(const AppThemeState.dark())
        : emit(
            const AppThemeState.light(),
          );
  }
}
