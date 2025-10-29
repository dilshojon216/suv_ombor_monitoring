// ignore_for_file: public_member_api_docs, document_ignores

import 'package:suv_ombor_monitoring/core/core.dart';

class RemoteDataSourceImpl implements RemoteDataSource {
  RemoteDataSourceImpl(this.appApi, this.appPreferences);

  final AppApi appApi;
  final AppPreferences appPreferences;

  @override
  Future<LogoutResponse> logout() async {
    try {
      final response = await appApi.logoutFromHttp(
        {
          'username': appPreferences.userName,
          'password': appPreferences.password,
        },
        'Bearer ${appPreferences.accessToken}',
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SignInResponse> signIn(SignInRequest request) async {
    try {
      final response = await appApi.signInFromHttp(
        request.toJson(),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<LastDataResponse> getLastData(
    int page,
    int perPage,
  ) async {
    try {
      final response = await appApi.getLastDataFromHttp(
        page,
        perPage,
        'Bearer ${appPreferences.accessToken}',
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<GetDailyDataResponse> getDailyDataFromHttp(
    GetDailyDataRequest getDailyDataRequest,
  ) async {
    try {
      final response = await appApi.getDailyHourlyDataFromHttp(
        getDailyDataRequest.stationId,
        getDailyDataRequest.month,
        'Bearer ${appPreferences.accessToken}',
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<GetHourlyDataResponse> getHourlyDataFromHttp(
    GetHourlyDataRequest getHourlyDataRequest,
  ) async {
    try {
      final response = await appApi.getTodayHourlyDataFromHttp(
        getHourlyDataRequest.stationId,
        'Bearer ${appPreferences.accessToken}',
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<GetMonthlyDataResponse> getMonthlyDataFromHttp(
    GetMonthlyDataRequest getMonthlyDataRequest,
  ) async {
    try {
      final response = await appApi.getMonthlyDataFromHttp(
        getMonthlyDataRequest.stationId,
        getMonthlyDataRequest.year,
        'Bearer ${appPreferences.accessToken}',
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<GetHourlyDataResponse> getSelectionDayDataFromHttp(
    GetSelectionDayDataRequest getSelectionDayDataRequest,
  ) async {
    try {
      final response = await appApi.getSelectionDayDataFromHttp(
        getSelectionDayDataRequest.stationsId,
        getSelectionDayDataRequest.day,
        'Bearer ${appPreferences.accessToken}',
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<GetStatisticStationsResponse> getStatisticStationsFromHttp() async {
    try {
      final response = await appApi.getStatisticStationsFromHttp(
        'Bearer ${appPreferences.accessToken}',
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<GetHourlyDataResponse> getYesterdayHourlyDataFromHttp(
    GetHourlyDataRequest getHourlyDataRequest,
  ) async {
    try {
      final response = await appApi.getYesterdayHourlyDataFromHttp(
        getHourlyDataRequest.stationId,
        'Bearer ${appPreferences.accessToken}',
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<GetHourlyDataResponse> getSelectionTwoDayDataFromHttp(
    GetSelectionTwoDayDataRequest getSelectionTwoDayDataRequest,
  ) async {
    try {
      final response = await appApi.getSelectionTwoDayDataFromHttp(
        getSelectionTwoDayDataRequest.stationId,
        getSelectionTwoDayDataRequest.firstDay,
        getSelectionTwoDayDataRequest.secondDay,
        'Bearer ${appPreferences.accessToken}',
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
