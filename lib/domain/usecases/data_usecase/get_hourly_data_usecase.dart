// ignore_for_file: public_member_api_docs, document_ignores

import 'package:dartz/dartz.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

class GetHourlyDataUsecase
    implements BaseUseCase<GetHourlyDataParams, GetHourlyDataResponse> {
  GetHourlyDataUsecase(this.appRepository);
  final AppRepository appRepository;

  @override
  Future<Either<Failure, GetHourlyDataResponse>> call(
    GetHourlyDataParams params,
  ) {
    return appRepository.getHourlyDataFromHttp(
      GetHourlyDataRequest(stationId: params.stationsId),
    );
  }
}

class GetHourlyDataParams {
  GetHourlyDataParams(this.stationsId);
  String stationsId;
}
