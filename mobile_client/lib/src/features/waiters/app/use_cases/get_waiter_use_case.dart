import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_client/src/core/domain/exceptions.dart';
import 'package:mobile_client/src/features/waiters/domain/entities/waiter.dart';
import 'package:mobile_client/src/features/waiters/domain/repositories/waiter_repository.dart';


@Injectable()
class GetWaiterUseCase {
  final WaiterRepository repo;

  GetWaiterUseCase(this.repo);
  
  Future<Either<AppException, Waiter>> call(int id) async {
    final res = repo.getWaiter(id);
    return res;
  }
}