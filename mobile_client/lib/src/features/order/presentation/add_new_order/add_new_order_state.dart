import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_client/src/features/menu/domain/entities/dish.dart';
import 'package:mobile_client/src/features/order/domain/entites/order.dart';
import 'package:mobile_client/src/features/order/domain/entites/order_item.dart';

part 'add_new_order_state.freezed.dart';

@freezed
class AddNewOrderState with _$AddNewOrderState {
  const AddNewOrderState._();

  factory AddNewOrderState({
    @Default(false) bool isLoading,
    @Default("") String table, // TODO: REPLACE WITH HARDCODED
    @Default([]) List<Dish> dishes,
    @Default([]) List<OrderItem> items,
  }) = _EditOrderState;

  OrderItem? getOrderItemForDish(Dish dish) {
    try {
      return items.firstWhere((item) => item.dish.id == dish.id);
    } on StateError catch (_) {
      return null;
    }
  }
}