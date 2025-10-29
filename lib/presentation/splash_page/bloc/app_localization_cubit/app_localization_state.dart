// ignore_for_file: public_member_api_docs

part of 'app_localization_cubit.dart';

@freezed
class AppLocalizationState with _$AppLocalizationState {
  const factory AppLocalizationState.initial() = _Initial;
  const factory AppLocalizationState.loading() = _Loading;
  const factory AppLocalizationState.loaded(Locale locale) = _Loaded;
}
