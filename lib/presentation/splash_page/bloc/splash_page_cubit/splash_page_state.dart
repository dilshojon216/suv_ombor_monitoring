// ignore_for_file: public_member_api_docs, document_ignores

part of 'splash_page_cubit.dart';

@freezed
class SplashPageState with _$SplashPageState {
  const factory SplashPageState.initial() = _Initial;
  const factory SplashPageState.loading() = _Loading;
  const factory SplashPageState.loaded() = _Loaded;
  const factory SplashPageState.error(String message) = _Error;
}
