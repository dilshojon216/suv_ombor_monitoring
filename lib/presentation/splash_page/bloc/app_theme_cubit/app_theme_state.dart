// ignore_for_file: public_member_api_docs

part of 'app_theme_cubit.dart';

@freezed
class AppThemeState with _$AppThemeState {
  const factory AppThemeState.initial() = _Initial;
  const factory AppThemeState.light() = _Light;
  const factory AppThemeState.dark() = _Dark;
}
