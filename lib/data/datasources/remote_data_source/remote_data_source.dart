// ignore_for_file: one_member_abstracts, public_member_api_docs, document_ignores, lines_longer_than_80_chars, unnecessary_ignore

import 'package:suv_ombor_monitoring/core/core.dart';

abstract class RemoteDataSource {
  Future<SignInResponse> signIn(SignInRequest request);
  Future<LogoutResponse> logout();

  Future<LastDataResponse> getLastData(int page, int perPage);

  Future<GetStatisticStationsResponse> getStatisticStationsFromHttp();
  Future<GetHourlyDataResponse> getHourlyDataFromHttp(
    GetHourlyDataRequest getHourlyDataRequest,
  );

  Future<GetHourlyDataResponse> getYesterdayHourlyDataFromHttp(
    GetHourlyDataRequest getHourlyDataRequest,
  );

  Future<GetDailyDataResponse> getDailyDataFromHttp(
    GetDailyDataRequest getDailyDataRequest,
  );

  Future<GetMonthlyDataResponse> getMonthlyDataFromHttp(
    GetMonthlyDataRequest getMonthlyDataRequest,
  );

  Future<GetHourlyDataResponse> getSelectionDayDataFromHttp(
    GetSelectionDayDataRequest getSelectionDayDataRequest,
  );
  Future<GetHourlyDataResponse> getSelectionTwoDayDataFromHttp(
    GetSelectionTwoDayDataRequest getSelectionTwoDayDataRequest,
  );
}
