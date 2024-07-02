import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_client/src/core/common/logger.dart';
import 'package:mobile_client/src/core/domain/exceptions.dart';
import 'package:mobile_client/src/features/order/domain/entites/order.dart';
import 'package:mobile_client/src/features/order/domain/entites/order_item.dart';
import 'package:mobile_client/src/features/order/domain/repositories/order_repository.dart';


@Injectable()
class AddOrderUseCase {
  final OrderRepository repo;

  AddOrderUseCase(this.repo);
  
  Future<Either<AppException, MyOrder>> call(List<OrderItem> items, String table) async {
    final res = await repo.createNewOrder(items, table);
    return res;
  }
}