import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_client/src/core/domain/exceptions.dart';
import 'package:mobile_client/src/features/order/domain/enums/order_item_state.dart';
import 'package:mobile_client/src/features/order/domain/repositories/order_repository.dart';


@Injectable()
class UpdateOrderItemStateUseCase {
  final OrderRepository repo;

  UpdateOrderItemStateUseCase(this.repo);
  
  Future<Either<AppException, void>> call(
    int orderId, 
    int dishId, 
    OrderItemState state
  ) async {
    final res = await repo.updateItemState(orderId, dishId, state);
    return res;
  }
}