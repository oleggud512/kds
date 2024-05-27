import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_client/src/core/domain/exceptions.dart';
import 'package:mobile_client/src/features/order/domain/entites/order.dart';
import 'package:mobile_client/src/features/order/domain/repositories/order_repository.dart';


@Injectable()
class GetOrdersUseCase {
  final OrderRepository repo;

  GetOrdersUseCase(this.repo);
  
  Future<Either<AppException, List<MyOrder>>> call() async {
    final res = await repo.getOrders();
    return res;
  }
}