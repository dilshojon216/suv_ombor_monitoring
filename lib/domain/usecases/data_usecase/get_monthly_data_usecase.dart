// ignore_for_file: public_member_api_docs, document_ignores

import 'package:dartz/dartz.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

class GetMonthlyDataUseCase
    implements BaseUseCase<GetMonthlyDataParams, GetMonthlyDataResponse> {
  GetMonthlyDataUseCase(this.appRepository);
  final AppRepository appRepository;

  @override
  Future<Either<Failure, GetMonthlyDataResponse>> call(
    GetMonthlyDataParams params,
  ) {
    return appRepository.getMonthlyDataFromHttp(
      GetMonthlyDataRequest(
        stationId: params.stationsId,
        year: params.year,
      ),
    );
  }
}

class GetMonthlyDataParams {
  GetMonthlyDataParams(this.stationsId, this.year);
  String stationsId;
  int year;
}
