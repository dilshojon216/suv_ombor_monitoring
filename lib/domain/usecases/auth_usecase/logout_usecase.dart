// ignore_for_file: public_member_api_docs, document_ignores

import 'package:dartz/dartz.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

class LogoutUseCase implements BaseUseCase<NoParams, LogoutResponse> {
  const LogoutUseCase(this.appRepository);
  final AppRepository appRepository;

  @override
  Future<Either<Failure, LogoutResponse>> call(NoParams input) {
    return appRepository.logout();
  }
}
