// ignore_for_file: public_member_api_docs, must_be_immutable, document_ignores

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

class MyApp extends StatefulWidget {
  factory MyApp() => _instance;
  MyApp._internal();
  int appState = 0;

  static final MyApp _instance = MyApp._internal();
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final appRouter = AppRouter(
    appPreferences: instance<AppPreferences>(),
  );
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) {
        return MultiBlocProvider(
          providers: [
            BlocProvider.value(
              value: instance<AppThemeCubit>()..initTheme(),
            ),
            BlocProvider.value(
              value: instance<AppLocalizationCubit>()..initLocale(),
            ),
          ],
          child: BlocBuilder<AppThemeCubit, AppThemeState>(
            builder: (context, state1) {
              return MaterialApp.router(
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
                debugShowCheckedModeBanner: false,
                title: AppString.appName,
                themeMode: state1.maybeWhen(
                  orElse: () => ThemeMode.light,
                  light: () => ThemeMode.light,
                  dark: () => ThemeMode.dark,
                ),
                darkTheme: AppDarkTheme.theme,
                theme: AppLightTheme.theme,
                routerConfig: appRouter.config(),
              );
            },
          ),
        );
      },
    );
  }
}
