// ignore_for_file: public_member_api_docs, document_ignores, avoid_catches_without_on_clauses

import 'package:dartz/dartz.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

class AppRepositoryImpl implements AppRepository {
  AppRepositoryImpl({
    required this.networkInfo,
    required this.remoteDataSource,
  });
  final NetworkInfo networkInfo;
  final RemoteDataSource remoteDataSource;

  @override
  Future<Either<Failure, LogoutResponse>> logout() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.logout();
        return Right(response);
      } catch (e) {
        return Left(ErrorHandler.handle(e).failure);
      }
    } else {
      return Left(Failure(code: 404, message: AppString.noInternetText));
    }
  }

  @override
  Future<Either<Failure, SignInResponse>> signIn(SignInRequest request) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.signIn(request);
        return Right(response);
      } catch (e) {
        return Left(ErrorHandler.handle(e).failure);
      }
    } else {
      return Left(Failure(code: 404, message: AppString.noInternetText));
    }
  }

  @override
  Future<Either<Failure, LastDataResponse>> getLastData(
    int page,
    int perPage,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.getLastData(page, perPage);
        return Right(response);
      } catch (e) {
        return Left(ErrorHandler.handle(e).failure);
      }
    } else {
      return Left(Failure(code: 404, message: AppString.noInternetText));
    }
  }

  @override
  Future<Either<Failure, GetDailyDataResponse>> getDailyDataFromHttp(
    GetDailyDataRequest getDailyDataRequest,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.getDailyDataFromHttp(
          getDailyDataRequest,
        );
        return Right(response);
      } catch (e) {
        return Left(ErrorHandler.handle(e).failure);
      }
    } else {
      return Left(Failure(code: 404, message: AppString.noInternetText));
    }
  }

  @override
  Future<Either<Failure, GetHourlyDataResponse>> getHourlyDataFromHttp(
    GetHourlyDataRequest getHourlyDataRequest,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.getHourlyDataFromHttp(
          getHourlyDataRequest,
        );
        return Right(response);
      } catch (e) {
        return Left(ErrorHandler.handle(e).failure);
      }
    } else {
      return Left(Failure(code: 404, message: AppString.noInternetText));
    }
  }

  @override
  Future<Either<Failure, GetMonthlyDataResponse>> getMonthlyDataFromHttp(
    GetMonthlyDataRequest getMonthlyDataRequest,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.getMonthlyDataFromHttp(
          getMonthlyDataRequest,
        );
        return Right(response);
      } catch (e) {
        return Left(ErrorHandler.handle(e).failure);
      }
    } else {
      return Left(Failure(code: 404, message: AppString.noInternetText));
    }
  }

  @override
  Future<Either<Failure, GetHourlyDataResponse>> getSelectionDayDataFromHttp(
    GetSelectionDayDataRequest getSelectionDayDataRequest,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.getSelectionDayDataFromHttp(
          getSelectionDayDataRequest,
        );
        return Right(response);
      } catch (e) {
        return Left(ErrorHandler.handle(e).failure);
      }
    } else {
      return Left(Failure(code: 404, message: AppString.noInternetText));
    }
  }

  @override
  Future<Either<Failure, GetHourlyDataResponse>> getSelectionTwoDayDataFromHttp(
    GetSelectionTwoDayDataRequest getSelectionTwoDayDataRequest,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.getSelectionTwoDayDataFromHttp(
          getSelectionTwoDayDataRequest,
        );
        return Right(response);
      } catch (e) {
        return Left(ErrorHandler.handle(e).failure);
      }
    } else {
      return Left(Failure(code: 404, message: AppString.noInternetText));
    }
  }

  @override
  Future<Either<Failure, GetStatisticStationsResponse>>
  getStatisticStationsFromHttp() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.getStatisticStationsFromHttp();
        return Right(response);
      } catch (e) {
        return Left(ErrorHandler.handle(e).failure);
      }
    } else {
      return Left(Failure(code: 404, message: AppString.noInternetText));
    }
  }

  @override
  Future<Either<Failure, GetHourlyDataResponse>> getYesterdayHourlyDataFromHttp(
    GetHourlyDataRequest getHourlyDataRequest,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.getYesterdayHourlyDataFromHttp(
          getHourlyDataRequest,
        );
        return Right(response);
      } catch (e) {
        return Left(ErrorHandler.handle(e).failure);
      }
    } else {
      return Left(Failure(code: 404, message: AppString.noInternetText));
    }
  }
}
