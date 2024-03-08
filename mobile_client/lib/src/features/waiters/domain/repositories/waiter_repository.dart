import 'package:either_dart/either.dart';
import 'package:mobile_client/src/core/domain/exceptions.dart';
import 'package:mobile_client/src/features/waiters/domain/entities/waiter.dart';

abstract interface class WaiterRepository {
  Future<Either<AppException, List<Waiter>>> getWaiters();
}