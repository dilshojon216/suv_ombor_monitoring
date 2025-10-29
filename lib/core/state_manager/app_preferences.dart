// ignore_for_file: public_member_api_docs, document_ignores, constant_identifier_names, lines_longer_than_80_chars, avoid_positional_boolean_parameters, avoid_catches_without_on_clauses

import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

const String ACCESS_TOKEN = 'access_token';
const String REFRESH_TOKEN = 'refresh_token';
const String REMEMBERME = 'remember_me';
const String USER = 'app_user';
const String USERNAME = 'user_name';
const String INSTALLED = 'app_installed';
const String PASSWORD = 'password';
const String APP_THEME = 'app_theme';
const String APP_LANGUAGE = 'app_language';
const String CHOOSELANGUAGE = 'choose_language';

class AppPreferences {
  AppPreferences(this._sharedPreferences);
  final SharedPreferences _sharedPreferences;
  Future<void> clear() async {
    await _sharedPreferences.clear();
  }

  String get accessToken => _sharedPreferences.getString(ACCESS_TOKEN) ?? '';
  String get refreshToken => _sharedPreferences.getString(REFRESH_TOKEN) ?? '';
  bool get rememberMe => _sharedPreferences.getBool(REMEMBERME) ?? false;
  String get userName => _sharedPreferences.getString(USERNAME) ?? '';
  String get password => _sharedPreferences.getString(PASSWORD) ?? '';
  bool get installed => _sharedPreferences.getBool(INSTALLED) ?? false;
  bool get isDarkTheme => _sharedPreferences.getBool(APP_THEME) ?? false;
  String get appLanguage => _sharedPreferences.getString(APP_LANGUAGE) ?? 'uz';
  bool get chooseLanguage =>
      _sharedPreferences.getBool(CHOOSELANGUAGE) ?? false;

  Users? get user {
    try {
      final userString = _sharedPreferences.getString(USER);
      if (userString == null || userString.isEmpty) return null;

      final userJson = jsonDecode(userString) as Map<String, dynamic>;
      return Users.fromJson(userJson);
    } catch (e) {
      return null;
    }
  }

  /// User login qilganmi yoki yo'qmi
  bool get isLoggedIn => accessToken.isNotEmpty && user != null;

  // ==========================================================================
  // SETTER METHODS
  // ==========================================================================

  Future<void> setAccessToken(String token) async {
    await _sharedPreferences.setString(ACCESS_TOKEN, token);
  }

  Future<void> setRefreshToken(String token) async {
    await _sharedPreferences.setString(REFRESH_TOKEN, token);
  }

  Future<void> setUser(Users user) async {
    await _sharedPreferences.setString(USER, jsonEncode(user.toJson()));
  }

  Future<void> setUserName(String name) async {
    await _sharedPreferences.setString(USERNAME, name);
  }

  Future<void> setPassword(String pwd) async {
    await _sharedPreferences.setString(PASSWORD, pwd);
  }

  Future<void> setInstalled(bool value) async {
    await _sharedPreferences.setBool(INSTALLED, value);
  }

  Future<void> setDarkTheme(bool value) async {
    await _sharedPreferences.setBool(APP_THEME, value);
  }

  Future<void> setAppLanguage(String lang) async {
    await _sharedPreferences.setString(APP_LANGUAGE, lang);
  }

  Future<void> setChooseLanguage(bool value) async {
    await _sharedPreferences.setBool(CHOOSELANGUAGE, value);
  }

  Future<void> setRememberMe(bool value) async {
    await _sharedPreferences.setBool(REMEMBERME, value);
  }

  Future<void> setTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    await setAccessToken(accessToken);
    await setRefreshToken(refreshToken);
  }

  // ==========================================================================
  // UTILITY METHODS
  // ==========================================================================

  /// Logout - Faqat user ma'lumotlarini o'chiradi
  /// Remember me, language, theme saqlanadi
  Future<void> logout() async {
    await _sharedPreferences.remove(ACCESS_TOKEN);
    await _sharedPreferences.remove(REFRESH_TOKEN);
    await _sharedPreferences.remove(USER);
    await _sharedPreferences.remove(USERNAME);
    await _sharedPreferences.remove(PASSWORD);
  }

  /// Login ma'lumotlarini saqlash (Remember me uchun)
  Future<void> saveLoginCredentials({
    required String username,
    required String password,
    required bool rememberMe,
  }) async {
    await setUserName(username);
    if (rememberMe) {
      await setPassword(password);
    } else {
      await _sharedPreferences.remove(PASSWORD);
    }
    await setRememberMe(rememberMe);
  }

  /// Token'larni yangilash
  Future<void> updateTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    await setAccessToken(accessToken);
    await setRefreshToken(refreshToken);
  }
}
