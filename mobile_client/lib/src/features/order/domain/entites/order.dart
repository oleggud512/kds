import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_client/src/features/order/domain/entites/order_item.dart';
import 'package:mobile_client/src/features/order/domain/enums/order_state.dart';
import 'package:mobile_client/src/features/waiters/domain/entities/waiter.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@Freezed(toJson: false)
class MyOrder with _$MyOrder {
  factory MyOrder({
    required int id,

    required Waiter waiter,

    @Default(OrderState.inProgress) OrderState state,

    @JsonKey(name: 'order_items')
    @Default([]) 
    List<OrderItem> items,
  }) = _MyOrder;

  factory MyOrder.fromJson(Map<String, dynamic> json) => _$MyOrderFromJson(json);
}

myOrderListFromJson(List<dynamic> list) {
  return list.map((o) => MyOrder.fromJson(o as Map<String, dynamic>))
    .toList();
}