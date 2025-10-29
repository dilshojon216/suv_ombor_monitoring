// ignore_for_file: public_member_api_docs, document_ignores

import 'package:dartz/dartz.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

class GetTwoSelectionDayDataUseCase
    implements
        BaseUseCase<GetTwoSelectionDayDataParams, GetHourlyDataResponse> {
  GetTwoSelectionDayDataUseCase(this.appRepository);
  final AppRepository appRepository;

  @override
  Future<Either<Failure, GetHourlyDataResponse>> call(
    GetTwoSelectionDayDataParams params,
  ) {
    return appRepository.getSelectionTwoDayDataFromHttp(
      GetSelectionTwoDayDataRequest(
        stationId: params.stationsId,
        firstDay: params.startDate,
        secondDay: params.endDate,
      ),
    );
  }
}

class GetTwoSelectionDayDataParams {
  GetTwoSelectionDayDataParams(this.stationsId, this.startDate, this.endDate);
  String stationsId;
  String startDate;
  String endDate;
}
