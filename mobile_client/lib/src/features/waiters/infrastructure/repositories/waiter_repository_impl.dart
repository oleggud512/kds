import 'package:dio/dio.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_client/src/core/common/extensions/string.dart';
import 'package:mobile_client/src/core/common/logger.dart';
import 'package:mobile_client/src/core/domain/exceptions.dart';
import 'package:mobile_client/src/features/waiters/domain/entities/waiter.dart';
import 'package:mobile_client/src/features/waiters/domain/repositories/waiter_repository.dart';

@LazySingleton(as: WaiterRepository)
class WaiterRepositoryImpl implements WaiterRepository {
  final Dio dio;

  WaiterRepositoryImpl(this.dio);

  @override
  Future<Either<AppException, List<Waiter>>> getWaiters() async {
    try {
      final res = await dio.get('waiters'.hardcoded);
      final waiters = List.from(res.data["data"]).map((w) => Waiter.fromJson(w)).toList();
      return Right(waiters);
    } catch (e) {
      glogger.e(e);
      return Left(AppException(e.toString()));
    }
  }
  
  @override
  Future<Either<AppException, Waiter>> getWaiter(int id) async {
    try {
      final res = await dio.get('waiters/$id'.hardcoded);
      final waiter = Waiter.fromJson(res.data["data"]);
      return Right(waiter);
    } catch (e) {
      glogger.e(e);
      return Left(AppException(e.toString()));
    }
  }

}