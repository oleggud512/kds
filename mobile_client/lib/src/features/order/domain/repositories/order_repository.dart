import 'package:either_dart/either.dart';
import 'package:mobile_client/src/core/domain/exceptions.dart';
import 'package:mobile_client/src/features/order/domain/entites/order.dart';
import 'package:mobile_client/src/features/order/domain/entites/order_item.dart';
import 'package:mobile_client/src/features/order/domain/enums/order_item_state.dart';

abstract interface class OrderRepository {
  Future<Either<AppException, List<MyOrder>>> getOrders();
  Future<Either<AppException, MyOrder>> createNewOrder(List<OrderItem> items);
  Future<Either<AppException, void>> updateItemState(
    int orderId, 
    int dishId, 
    OrderItemState state
  );
}