// ignore_for_file: public_member_api_docs, deprecated_member_use, avoid_dynamic_calls, lines_longer_than_80_chars, document_ignores

import 'package:dio/dio.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

class ErrorHandler implements Exception {
  ErrorHandler.handle(dynamic error) {
    if (error is DioError) {
      failure = _handleError(error);
    } else {
      // default error

      failure = Failure(
        message: error.toString(),
        code: StatusCodeConstant.statusCodeBadRequest401,
      );
    }
  }
  late Failure failure;

  Failure _handleError(DioError error) {
    switch (error.type) {
      case DioErrorType.sendTimeout:
      case DioExceptionType.connectionTimeout:
        return Failure(
          message: 'Connection timeout',
          code: StatusCodeConstant.statusCodeGatewayTimeout504,
        );
      case DioExceptionType.receiveTimeout:
        return Failure(
          message: 'Receive timeout in connection',
          code: StatusCodeConstant.statusCodeGatewayTimeout504,
        );
      case DioExceptionType.badCertificate:
        return Failure(
          message: 'Bad certificate',
          code: StatusCodeConstant.statusCodeBadRequest401,
        );
      case DioExceptionType.badResponse:
        if (error.response!.statusCode == 400 ||
            error.response!.statusCode == 401) {
          final dataError = error.response!.data['message'].toString();

          return Failure(code: 400, message: dataError);
        } else if (error.response!.statusCode == 500) {
          final dataError = error.response!.data['message'].toString();
          return Failure(code: 500, message: dataError);
        } else if (error.response!.statusCode == 404) {
          final dataError = error.response!.data['message'].toString();
          return Failure(code: 404, message: dataError);
        } else if (error.response!.statusCode == 403) {
          final dataError = error.response!.data['message'].toString();
          return Failure(code: 403, message: dataError);
        } else if (error.response!.statusCode == 502 ||
            error.response!.statusCode == 503) {
          final dataError = error.response!.data['message'].toString();
          return Failure(code: 502, message: dataError);
        }

        return Failure(
          message: 'Invalid response',
          code: StatusCodeConstant.statusCodeInternalServerError500,
        );
      case DioExceptionType.cancel:
        return Failure(
          message: 'Request to server was cancelled',
          code: StatusCodeConstant.statusCodeBadRequest401,
        );
      case DioExceptionType.connectionError:
        return Failure(
          message: 'Connection to server failed',
          code: StatusCodeConstant.statusCodeInternalServerError500,
        );
      case DioExceptionType.unknown:
        return Failure(
          message: 'Unknown error',
          code: StatusCodeConstant.statusCodeInternalServerError500,
        );
    }
  }
}
