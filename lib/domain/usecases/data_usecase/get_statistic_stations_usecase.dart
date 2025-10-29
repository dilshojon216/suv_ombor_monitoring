// ignore_for_file: public_member_api_docs, document_ignores

import 'package:dartz/dartz.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

class GetStatisticStationsUseCase
    implements BaseUseCase<void, GetStatisticStationsResponse> {
  GetStatisticStationsUseCase(this.appRepository);
  final AppRepository appRepository;

  @override
  Future<Either<Failure, GetStatisticStationsResponse>> call(
    void params,
  ) {
    return appRepository.getStatisticStationsFromHttp();
  }
}
