// ignore_for_file: public_member_api_docs, document_ignores

import 'package:dartz/dartz.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

class GetDailyDataUseCase
    implements BaseUseCase<GetDailyDataParams, GetDailyDataResponse> {
  GetDailyDataUseCase(this.appRepository);
  final AppRepository appRepository;

  @override
  Future<Either<Failure, GetDailyDataResponse>> call(
    GetDailyDataParams params,
  ) {
    return appRepository.getDailyDataFromHttp(
      GetDailyDataRequest(
        month: params.month,
        stationId: params.stationsId,
      ),
    );
  }
}

class GetDailyDataParams {
  GetDailyDataParams(this.stationsId, this.month);
  String stationsId;
  String month;
}
