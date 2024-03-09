import 'package:injectable/injectable.dart';
import 'package:mobile_client/src/features/waiters/domain/services/waiter_auth_service.dart';


@Injectable()
class SetWaiterUseCase {
  final WaiterAuthService waiterAuth;

  SetWaiterUseCase(this.waiterAuth);
  
  Future<void> call(int newWaiterId) async {
    return waiterAuth.setWaiterId(newWaiterId);
  }
}