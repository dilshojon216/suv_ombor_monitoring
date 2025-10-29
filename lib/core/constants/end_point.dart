// ignore_for_file: public_member_api_docs, document_ignores

class EndPointConstant {
  //* Base Url
  static const String baseUrl = 'http://api.sw.sss.uz/api/v1';

  //* Auth

  // Sign In
  static const String signInUrl = '/auth/signin';

  // Sign Up
  static const String logoutUrl = '/auth/logout';

  //last-data
  static const String lastDataUrl = '/last-data/getLastData';

  //getStatisticStations
  static const String getStatisticStationsUrl =
      '/last-data/getStatisticStations';

  // HourlyData
  static const String getTodayHourlyDataUrl =
      '/mqttDataWrite/getTodayDataByStationId';

  static const String getYesterdayHourlyDataUrl =
      '/yesterdayData/getYesterdayDataByStationId';

  // DailyData
  static const String getDailyHourlyDataUrl =
      '/dailyData/getStationDailyDataById';

  // MonthlyData
  static const String getMonthlyDataUrl =
      '/monthlyData/getStationDataByYearAndStationId';
  //getStationsDataByStationIdAndDay
  static const String getStationsDataByStationIdAndDayUrl =
      '/allData/getStationsDataByStationIdAndDay';

  ///allData/getStationIdAndTwoDayBetween
  static const String getStationIdAndTwoDayBetweenUrl =
      '/allData/getStationIdAndTwoDayBetween';
}
