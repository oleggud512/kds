import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_client/src/features/menu/domain/entities/dish.dart';
import 'package:mobile_client/src/features/order/domain/enums/order_item_state.dart';
import 'package:mobile_client/src/features/waiters/domain/entities/waiter.dart';

part 'order_item.freezed.dart';


@freezed
class OrderItem with _$OrderItem {
  factory OrderItem({
    required int id, 
    required Dish dish,
    @Default(0) int amount,
    required Waiter waiter,
    required int orderId,
    @Default(OrderItemState.preparing) OrderItemState state,
  }) = _OrderItem;
}