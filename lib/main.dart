import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suv_ombor_monitoring/apps/app.dart';
import 'package:suv_ombor_monitoring/core/core.dart';
import 'package:suv_ombor_monitoring/core/state_manager/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  await initAppModule();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale(
          'uz',
        ),
        Locale(
          'en',
        ),
        Locale(
          'ru',
        ),
        Locale(
          'az',
        ),
      ],
      startLocale: const Locale('uz'),
      path: 'assets/translations',
      fallbackLocale: const Locale('uz'),
      assetLoader: const CodegenLoader(),
      child: MyApp(),
    ),
  );
}
