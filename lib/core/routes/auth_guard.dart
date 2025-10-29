// ignore_for_file: public_member_api_docs, document_ignores, discarded_futures

import 'package:auto_route/auto_route.dart';
import 'package:suv_ombor_monitoring/core/core.dart';
import 'package:suv_ombor_monitoring/core/routes/app_router.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard({required this.appPreferences});
  final AppPreferences appPreferences;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (!appPreferences.installed) {
      if (appPreferences.chooseLanguage) {
        router.push(const WelcomeRoute());
      } else {
        router.push(const ChooseLanguageRoute());
      }
      return;
    } else {
      resolver.next();
    }
  }
}
