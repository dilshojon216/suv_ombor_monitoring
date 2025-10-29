// ignore_for_file: specify_nonobvious_property_types, public_member_api_docs, type_annotate_public_apis, lines_longer_than_80_chars, library_prefixes, document_ignores

import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:suv_ombor_monitoring/core/core.dart';
import 'package:suv_ombor_monitoring/core/routes/auth_guard.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  instance
    ..registerLazySingleton(() => sharedPreferences)
    ..registerLazySingleton<AppPreferences>(
      () => AppPreferences(instance()),
    )
    ..registerLazySingleton<AppLocalizationCubit>(
      () => AppLocalizationCubit(instance()),
    )
    ..registerLazySingleton<AppThemeCubit>(
      () => AppThemeCubit(instance()),
    )
    ..registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(
        connectionChecker: InternetConnectionChecker(),
      ),
    )
    ..registerLazySingleton<DioFactory>(() => DioFactory(instance()))
    ..registerLazySingleton<AuthGuard>(
      () => AuthGuard(appPreferences: instance()),
    )
    ..registerLazySingleton<SplashPageCubit>(
      SplashPageCubit.new,
    );

  final dio = await instance<DioFactory>().getDio();
  instance
    ..registerLazySingleton<AppApi>(() => AppApi(dio))
    ..registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImpl(
        instance(),
        instance(),
      ),
    )
    ..registerLazySingleton<AppRepository>(
      () => AppRepositoryImpl(
        remoteDataSource: instance(),
        networkInfo: instance(),
      ),
    )
    ..registerLazySingleton<SignInUseCase>(
      () => SignInUseCase(
        repository: instance(),
      ),
    )
    ..registerLazySingleton<GetLastDataUsecase>(
      () => GetLastDataUsecase(instance()),
    )
    ..registerLazySingleton<GetStatisticStationsUseCase>(
      () => GetStatisticStationsUseCase(instance()),
    )
    ..registerLazySingleton<GetHourlyDataUsecase>(
      () => GetHourlyDataUsecase(instance()),
    )
    ..registerLazySingleton<GetDailyDataUseCase>(
      () => GetDailyDataUseCase(instance()),
    )
    ..registerLazySingleton<GetYesterdayDataUseCase>(
      () => GetYesterdayDataUseCase(instance()),
    )
    ..registerLazySingleton<GetMonthlyDataUseCase>(
      () => GetMonthlyDataUseCase(instance()),
    )
    ..registerLazySingleton<GetSelectionDayDataUseCase>(
      () => GetSelectionDayDataUseCase(instance()),
    )
    ..registerLazySingleton<GetTwoSelectionDayDataUseCase>(
      () => GetTwoSelectionDayDataUseCase(instance()),
    )
    ..registerLazySingleton<SignInPageBloc>(
      () => SignInPageBloc(
        instance(),
        instance(),
      ),
    )
    ..registerLazySingleton<GetLastDataBloc>(
      () => GetLastDataBloc(instance()),
    )
    ..registerLazySingleton<GetStatisticStationsBloc>(
      () => GetStatisticStationsBloc(instance()),
    )
    ..registerLazySingleton<GetHourlyDataBloc>(
      () => GetHourlyDataBloc(instance()),
    )
    ..registerLazySingleton<GetCustomDataBloc>(
      () => GetCustomDataBloc(instance(), instance()),
    )
    ..registerLazySingleton<GetDailyDataBloc>(
      () => GetDailyDataBloc(instance()),
    )
    ..registerLazySingleton<GetMonthlyDataBloc>(
      () => GetMonthlyDataBloc(instance()),
    )
    ..registerLazySingleton<GetYesterdayDataBloc>(
      () => GetYesterdayDataBloc(instance()),
    );
}
