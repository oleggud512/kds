import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_client/src/features/order/domain/entites/order.dart';
import 'package:mobile_client/src/features/order/domain/enums/order_item_state.dart';

part 'order_page_event.freezed.dart';

@freezed
class OrderPageEvent with _$OrderPageEvent {
  factory OrderPageEvent() = _OrderPageEvent;
  factory OrderPageEvent.orderArrived(MyOrder order) = OrderPageOrderArrivedEvent;
  factory OrderPageEvent.itemStateChanged({
    required int orderId, 
    required int dishId, 
    required OrderItemState state,
    void Function()? onOrderClose
  }) = OrderPageItemStateChangedEvent;
}