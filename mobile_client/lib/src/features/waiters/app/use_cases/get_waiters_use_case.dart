import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_client/src/core/domain/exceptions.dart';
import 'package:mobile_client/src/features/waiters/domain/entities/waiter.dart';
import 'package:mobile_client/src/features/waiters/domain/repositories/waiter_repository.dart';


@Injectable()
class GetWaitersUseCase {
  final WaiterRepository repo;

  GetWaitersUseCase(this.repo);
  
  Future<Either<AppException, List<Waiter>>> call() async {
    final res = await repo.getWaiters();
    return res;
  }
}