// ignore_for_file: public_member_api_docs, document_ignores

import 'package:dartz/dartz.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

class GetSelectionDayDataUseCase
    implements BaseUseCase<GetSelectionDayDataParams, GetHourlyDataResponse> {
  GetSelectionDayDataUseCase(this.appRepository);
  final AppRepository appRepository;

  @override
  Future<Either<Failure, GetHourlyDataResponse>> call(
    GetSelectionDayDataParams params,
  ) {
    return appRepository.getSelectionDayDataFromHttp(
      GetSelectionDayDataRequest(
        stationsId: params.stationsId,
        day: params.day,
      ),
    );
  }
}

class GetSelectionDayDataParams {
  GetSelectionDayDataParams(this.stationsId, this.day);
  String stationsId;
  String day;
}
