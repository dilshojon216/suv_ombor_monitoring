// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [ChooseLanguagePage]
class ChooseLanguageRoute extends PageRouteInfo<void> {
  const ChooseLanguageRoute({List<PageRouteInfo>? children})
    : super(ChooseLanguageRoute.name, initialChildren: children);

  static const String name = 'ChooseLanguageRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const ChooseLanguagePage());
    },
  );
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const HomePage());
    },
  );
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const SettingsPage());
    },
  );
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute({List<PageRouteInfo>? children})
    : super(SignInRoute.name, initialChildren: children);

  static const String name = 'SignInRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const SignInPage());
    },
  );
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const SplashPage());
    },
  );
}

/// generated route for
/// [StationDataPage]
class StationDataRoute extends PageRouteInfo<StationDataRouteArgs> {
  StationDataRoute({
    required LastData item,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         StationDataRoute.name,
         args: StationDataRouteArgs(item: item, key: key),
         initialChildren: children,
       );

  static const String name = 'StationDataRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<StationDataRouteArgs>();
      return WrappedRoute(
        child: StationDataPage(item: args.item, key: args.key),
      );
    },
  );
}

class StationDataRouteArgs {
  const StationDataRouteArgs({required this.item, this.key});

  final LastData item;

  final Key? key;

  @override
  String toString() {
    return 'StationDataRouteArgs{item: $item, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! StationDataRouteArgs) return false;
    return item == other.item && key == other.key;
  }

  @override
  int get hashCode => item.hashCode ^ key.hashCode;
}

/// generated route for
/// [StationInfoPage]
class StationInfoRoute extends PageRouteInfo<StationInfoRouteArgs> {
  StationInfoRoute({
    required LastData lastData,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         StationInfoRoute.name,
         args: StationInfoRouteArgs(lastData: lastData, key: key),
         initialChildren: children,
       );

  static const String name = 'StationInfoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<StationInfoRouteArgs>();
      return WrappedRoute(
        child: StationInfoPage(lastData: args.lastData, key: args.key),
      );
    },
  );
}

class StationInfoRouteArgs {
  const StationInfoRouteArgs({required this.lastData, this.key});

  final LastData lastData;

  final Key? key;

  @override
  String toString() {
    return 'StationInfoRouteArgs{lastData: $lastData, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! StationInfoRouteArgs) return false;
    return lastData == other.lastData && key == other.key;
  }

  @override
  int get hashCode => lastData.hashCode ^ key.hashCode;
}

/// generated route for
/// [WelcomePage]
class WelcomeRoute extends PageRouteInfo<void> {
  const WelcomeRoute({List<PageRouteInfo>? children})
    : super(WelcomeRoute.name, initialChildren: children);

  static const String name = 'WelcomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const WelcomePage());
    },
  );
}
