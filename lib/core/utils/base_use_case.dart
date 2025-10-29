import 'package:dartz/dartz.dart';
import 'package:suv_ombor_monitoring/core/errors/failures.dart';

abstract class BaseUseCase<In, Out> {
  Future<Either<Failure, Out>> call(In input);
}
