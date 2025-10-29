// ignore_for_file: public_member_api_docs, document_ignores

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:suv_ombor_monitoring/core/core.dart';
part 'app_api.g.dart';

@RestApi(baseUrl: EndPointConstant.baseUrl)
abstract class AppApi {
  factory AppApi(Dio dio, {String baseUrl}) = _AppApi;

  //* Auth
  @POST(EndPointConstant.signInUrl)
  Future<SignInResponse> signInFromHttp(
    @Body() Map<String, dynamic> body,
  );

  //*logout
  @POST(EndPointConstant.logoutUrl)
  Future<LogoutResponse> logoutFromHttp(
    @Body() Map<String, dynamic> body,
    @Header('Authorization') String token,
  );

  //*last-data
  @GET(EndPointConstant.lastDataUrl)
  Future<LastDataResponse> getLastDataFromHttp(
    @Query('page') int page,
    @Query('perPage') int perPage,
    @Header('Authorization') String token,
  );

  //*getStatisticStations
  @GET(EndPointConstant.getStatisticStationsUrl)
  Future<GetStatisticStationsResponse> getStatisticStationsFromHttp(
    @Header('Authorization') String token,
  );

  //* HourlyData

  @GET(EndPointConstant.getTodayHourlyDataUrl)
  Future<GetHourlyDataResponse> getTodayHourlyDataFromHttp(
    @Query('stationId') String stationId,
    @Header('Authorization') String token,
  );

  @GET(EndPointConstant.getYesterdayHourlyDataUrl)
  Future<GetHourlyDataResponse> getYesterdayHourlyDataFromHttp(
    @Query('stationId') String stationId,
    @Header('Authorization') String token,
  );

  @GET(EndPointConstant.getDailyHourlyDataUrl)
  Future<GetDailyDataResponse> getDailyHourlyDataFromHttp(
    @Query('stationId') String stationId,
    @Query('month') String month,
    @Header('Authorization') String token,
  );

  //* MonthlyData
  @GET(EndPointConstant.getMonthlyDataUrl)
  Future<GetMonthlyDataResponse> getMonthlyDataFromHttp(
    @Query('stationsId') String stationId,
    @Query('year') int year,
    @Header('Authorization') String token,
  );

  @GET(EndPointConstant.getStationsDataByStationIdAndDayUrl)
  Future<GetHourlyDataResponse> getSelectionDayDataFromHttp(
    @Query('stationsId') String stationId,
    @Query('day') String day,
    @Header('Authorization') String token,
  );

  @GET(EndPointConstant.getStationIdAndTwoDayBetweenUrl)
  Future<GetHourlyDataResponse> getSelectionTwoDayDataFromHttp(
    @Query('stationsId') String stationId,
    @Query('firstDay') String firstDay,
    @Query('secondDay') String secondDay,
    @Header('Authorization') String token,
  );
}
