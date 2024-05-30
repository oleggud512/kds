import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_client/src/features/menu/domain/entities/dish.dart';
import 'package:mobile_client/src/features/order/domain/enums/order_item_state.dart';

part 'order_item.freezed.dart';
part 'order_item.g.dart';


int _dishToJson(Dish dish) => dish.id;

@Freezed(toJson: false)
class OrderItem with _$OrderItem {
  const OrderItem._();

  factory OrderItem({
    @Default(0) 
    int id, 

    required Dish dish,

    @Default(0) int count,

    @Default("") String comment,

    @Default(0) 
    int orderId,

    @Default(OrderItemState.cooking) 
    OrderItemState state,
  }) = _OrderItem;

  factory OrderItem.create(Dish dish, {
    int? count,
    String? comment,
  }) {
    return OrderItem(
      dish: dish, 
      count: count ?? 1, 
      comment: comment ?? ""
    );
  }

  factory OrderItem.fromJson(Map<String, dynamic> json) => _$OrderItemFromJson(json);

  Map<String, dynamic> toJson() {
    return {
      "dishId": dish.id,
      "comment": comment,
      "count": count
    };
  }
}