import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_client/src/features/order/domain/entites/order_item.dart';
import 'package:mobile_client/src/features/order/domain/enums/order_state.dart';
import 'package:mobile_client/src/features/waiters/domain/entities/waiter.dart';

part 'order.freezed.dart';

@freezed
class MyOrder with _$MyOrder {
  factory MyOrder({
    required int id,
    required Waiter waiter,
    @Default(OrderState.inProgress) state,
    @Default([]) List<OrderItem> items,
  }) = _MyOrder;
}