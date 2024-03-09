import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_client/src/core/common/extensions/string.dart';
import 'package:mobile_client/src/core/domain/exceptions.dart';
import 'package:mobile_client/src/features/waiters/app/use_cases/get_waiter_use_case.dart';
import 'package:mobile_client/src/features/waiters/domain/entities/waiter.dart';
import 'package:mobile_client/src/features/waiters/domain/repositories/waiter_repository.dart';
import 'package:mobile_client/src/features/waiters/domain/services/waiter_auth_service.dart';


@Injectable()
class GetCurrentWaiterUseCase {
  final GetWaiterUseCase getWaiter;
  final WaiterAuthService auth;

  GetCurrentWaiterUseCase(this.getWaiter, this.auth);
  
  Future<Either<AppException, Waiter>> call() async {
    if (auth.waiterId == null) return Left(AppException('no waiter'.hardcoded));
    final res = await getWaiter(auth.waiterId!);
    return res;
  }
}