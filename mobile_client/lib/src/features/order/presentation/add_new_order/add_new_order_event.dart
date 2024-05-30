import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_client/src/features/menu/domain/entities/dish.dart';
import 'package:mobile_client/src/features/order/domain/entites/order_item.dart';

part 'add_new_order_event.freezed.dart';

@freezed
class AddNewOrderEvent with _$AddNewOrderEvent {
  factory AddNewOrderEvent.load() = AddNewOrderLoadEvent;

  factory AddNewOrderEvent.dishSelected({
    required Dish dish,
    int? count, 
    String? comment,
  }) = AddNewOrderDishSelectedEvent;

  factory AddNewOrderEvent.deleteItem(OrderItem item) = AddNewOrderDeleteItemEvent;

  factory AddNewOrderEvent.countChanged(OrderItem item, int newCount) = AddNewOrderCountChangedEvent;

  factory AddNewOrderEvent.commentChanged(OrderItem item, String newComment) = AddNewOrderCommentChangedEvent;

  factory AddNewOrderEvent.submit({
    required void Function() onSuccess,
  }) = AddNewOrderSubmitEvent;
}