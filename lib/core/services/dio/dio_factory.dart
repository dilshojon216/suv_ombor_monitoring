// ignore_for_file: public_member_api_docs, document_ignores, inference_failure_on_function_invocation, avoid_dynamic_calls, lines_longer_than_80_chars

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

class DioFactory {
  DioFactory(this._appPreferences);
  final AppPreferences _appPreferences;

  Future<Dio> getDio() async {
    final dio = Dio();
    final accessToken = _appPreferences.accessToken;

    if (accessToken != '') {
      dio.options = BaseOptions(
        baseUrl: EndPointConstant.baseUrl,
        headers: {
          'Authorization': 'Bearer $accessToken',
        },
        receiveTimeout: const Duration(seconds: Constants.apiTimeOut),
        sendTimeout: const Duration(seconds: Constants.apiTimeOut),
      );

      dio.interceptors.add(
        InterceptorsWrapper(
          onError: (e, handler) async {
            if (e.response!.statusCode == 401 &&
                e.response!.data['message'].toString().contains(
                  'Unauthorized',
                )) {
              // print(e.response!.data);
              final username = _appPreferences.userName;
              final password = _appPreferences.password;
              //print(refreshToken + "sssss");
              final response = await dio.post(
                '/auth/signin',
                data: {
                  'username': username,
                  'password': password,
                },
              );
              if (response.statusCode == 200 || response.statusCode == 201) {
                final accessToken = response.data['data']['accessToken'];
                final refreshToken = response.data['data']['refreshToken'];

                await _appPreferences.setTokens(
                  accessToken: accessToken.toString(),
                  refreshToken: refreshToken.toString(),
                );

                e.requestOptions.headers['Authorization'] =
                    'Bearer $accessToken';

                return handler.resolve(await dio.fetch(e.requestOptions));
              } else {
                return handler.next(e);
              }
            }
            return handler.next(e);
          },
        ),
      );
      // dio.options.headers['Cookies'] = accessToken;
    } else {
      dio.options = BaseOptions(
        baseUrl: EndPointConstant.baseUrl,
        receiveTimeout: const Duration(seconds: Constants.apiTimeOut),
        sendTimeout: const Duration(seconds: Constants.apiTimeOut),
      );
    }

    if (!kReleaseMode) {
      // its debug mode so print app logs
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
        ),
      );
    }
    return dio;
  }
}
