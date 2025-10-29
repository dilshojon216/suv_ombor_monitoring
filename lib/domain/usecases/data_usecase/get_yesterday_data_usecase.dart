// ignore_for_file: public_member_api_docs, document_ignores

import 'package:dartz/dartz.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

class GetYesterdayDataUseCase
    implements BaseUseCase<GetYesterdayDataParams, GetHourlyDataResponse> {
  GetYesterdayDataUseCase(this.appRepository);
  final AppRepository appRepository;

  @override
  Future<Either<Failure, GetHourlyDataResponse>> call(
    GetYesterdayDataParams params,
  ) {
    return appRepository.getSelectionDayDataFromHttp(
      GetSelectionDayDataRequest(
        day: params.day,
        stationsId: params.stationsId,
      ),
    );
  }
}

class GetYesterdayDataParams {
  GetYesterdayDataParams(this.stationsId, this.day);
  String stationsId;
  String day;
}
