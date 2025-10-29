// ignore_for_file: public_member_api_docs, document_ignores

import 'package:dartz/dartz.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

class GetLastDataUsecase
    implements BaseUseCase<GetLastDataSmartWaterParams, LastDataResponse> {
  GetLastDataUsecase(this.appRepository);
  final AppRepository appRepository;

  @override
  Future<Either<Failure, LastDataResponse>> call(
    GetLastDataSmartWaterParams params,
  ) {
    return appRepository.getLastData(params.page, params.perPage);
  }
}

class GetLastDataSmartWaterParams {
  GetLastDataSmartWaterParams(this.page, this.perPage);
  final int page;
  final int perPage;
}
