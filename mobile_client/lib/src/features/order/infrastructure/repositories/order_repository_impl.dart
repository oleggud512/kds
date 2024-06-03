import 'package:dio/dio.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_client/src/core/common/logger.dart';
import 'package:mobile_client/src/core/domain/exceptions.dart';
import 'package:mobile_client/src/features/order/domain/entites/order.dart';
import 'package:mobile_client/src/features/order/domain/entites/order_item.dart';
import 'package:mobile_client/src/features/order/domain/enums/order_item_state.dart';
import 'package:mobile_client/src/features/order/domain/repositories/order_repository.dart';

@Injectable(as: OrderRepository)
class OrderRepositoryImpl implements OrderRepository {
  final Dio dio;

  OrderRepositoryImpl(this.dio);

  @override
  Future<Either<AppException, MyOrder>> createNewOrder(List<OrderItem> items) async {
    try {
      final res = await dio.post('orders', data: {
        "items": items.map((i) => i.toJson()).toList()
      });
      final order = MyOrder.fromJson(res.data["data"]);
      return Right(order);
      
    } catch (e) {
      glogger.e(e);
      return Left(AppException(e.toString()));
    }
  }

  @override
  Future<Either<AppException, List<MyOrder>>> getOrders() async {
    try {
      final res = await dio.get('orders');
      print(res.data);
      final orders = List.from(res.data["data"])
        .map((o) => MyOrder.fromJson(o))
        .toList();
      print(orders);
      return Right(orders);
    } catch (e, s) {
      glogger.e(e, stackTrace: s);
      return Left(AppException(e.toString()));
    }
  }

  @override
  Future<Either<AppException, void>> updateItemState(
    int orderId, 
    int dishId, 
    OrderItemState state
  ) async {
    try {
      final res = await dio.patch('orders/$orderId/items/$dishId', data: {
        "state": state.name
      });
      
      if (res.data["data"] != "success") {
        return Left(AppException("can't update order item state"));
      }

      return const Right(null);
    } catch (e, s) {
      glogger.e(e, stackTrace: s);
      return Left(AppException(e.toString()));
    }
  }

}