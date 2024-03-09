import 'package:injectable/injectable.dart';
import 'package:mobile_client/src/features/waiters/domain/services/waiter_auth_service.dart';


@Injectable()
class GetCurrentWaiterUseCase {
  final WaiterAuthService waiterAuth;

  GetCurrentWaiterUseCase(this.waiterAuth);
  
  int? call() {
    return waiterAuth.waiterId;
  }
}