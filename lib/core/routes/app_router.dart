// ignore_for_file: public_member_api_docs, document_ignores, inference_failure_on_instance_creation, lines_longer_than_80_chars

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:suv_ombor_monitoring/core/core.dart';
import 'package:suv_ombor_monitoring/core/routes/auth_guard.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  AppRouter({required this.appPreferences});
  final AppPreferences appPreferences;

  @override
  List<AutoRoute> get routes => [
    CustomRoute(
      path: '/',
      page: SplashRoute.page,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
    CustomRoute(
      path: '/home',
      page: HomeRoute.page,
      transitionsBuilder: TransitionsBuilders.noTransition,
      guards: [AuthGuard(appPreferences: appPreferences)],
    ),

    CustomRoute(
      path: '/choose_language',
      page: ChooseLanguageRoute.page,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
    CustomRoute(
      path: '/welcome',
      page: WelcomeRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),

    CustomRoute(
      path: '/sign-in',
      page: SignInRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      path: '/settings',
      page: SettingsRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      path: '/station_data',
      page: StationDataRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      path: '/station_info',
      page: StationInfoRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
  ];
}
