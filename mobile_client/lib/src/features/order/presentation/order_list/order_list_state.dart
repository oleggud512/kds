import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_client/src/features/order/domain/entites/order.dart';
import 'package:mobile_client/src/features/order/presentation/order_list/order_list_filters.dart';

part 'order_list_state.freezed.dart';

@freezed
class OrderListState with _$OrderListState {
  factory OrderListState({
    @Default(false) bool isLoading,
    @Default(OrderListStateFilter.inProgress) OrderListStateFilter stateFilter,
    @Default(OrderListWaiterFilter.my) OrderListWaiterFilter waiterFilter,
    @Default([]) List<MyOrder> orders,
  }) = _OrderListState;
}