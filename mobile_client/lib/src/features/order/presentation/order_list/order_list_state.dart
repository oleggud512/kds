import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_client/src/features/order/domain/entites/order.dart';

part 'order_list_state.freezed.dart';

@freezed
class OrderListState with _$OrderListState {
  factory OrderListState({
    @Default(false) bool isLoading,
    @Default([]) List<MyOrder> orders,
  }) = _OrderListState;
}