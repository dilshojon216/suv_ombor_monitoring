// ignore_for_file: public_member_api_docs, document_ignores

import 'package:dartz/dartz.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

abstract class AppRepository {
  Future<Either<Failure, SignInResponse>> signIn(SignInRequest request);
  Future<Either<Failure, LogoutResponse>> logout();

  Future<Either<Failure, LastDataResponse>> getLastData(
    int page,
    int perPage,
  );

  Future<Either<Failure, GetStatisticStationsResponse>>
  getStatisticStationsFromHttp();
  Future<Either<Failure, GetHourlyDataResponse>> getHourlyDataFromHttp(
    GetHourlyDataRequest getHourlyDataRequest,
  );

  Future<Either<Failure, GetHourlyDataResponse>> getYesterdayHourlyDataFromHttp(
    GetHourlyDataRequest getHourlyDataRequest,
  );

  Future<Either<Failure, GetDailyDataResponse>> getDailyDataFromHttp(
    GetDailyDataRequest getDailyDataRequest,
  );

  Future<Either<Failure, GetMonthlyDataResponse>> getMonthlyDataFromHttp(
    GetMonthlyDataRequest getMonthlyDataRequest,
  );

  Future<Either<Failure, GetHourlyDataResponse>> getSelectionDayDataFromHttp(
    GetSelectionDayDataRequest getSelectionDayDataRequest,
  );
  Future<Either<Failure, GetHourlyDataResponse>> getSelectionTwoDayDataFromHttp(
    GetSelectionTwoDayDataRequest getSelectionTwoDayDataRequest,
  );
}
