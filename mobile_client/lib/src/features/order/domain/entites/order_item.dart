import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_client/src/features/menu/domain/entities/dish.dart';
import 'package:mobile_client/src/features/order/domain/enums/order_item_state.dart';

part 'order_item.freezed.dart';


@freezed
class OrderItem with _$OrderItem {
  const OrderItem._();

  factory OrderItem({
    @Default(0) int id, 
    required Dish dish,
    @Default(0) int amount,
    @Default("") String comment,
    @Default(0) int orderId,
    @Default(OrderItemState.preparing) OrderItemState state,
  }) = _OrderItem;

  factory OrderItem.create(Dish dish, {
    int? amount,
    String? comment,
  }) {
    return OrderItem(
      dish: dish, 
      amount: amount ?? 1, 
      comment: comment ?? ""
    );
  }
}