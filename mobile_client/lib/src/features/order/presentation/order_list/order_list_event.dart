import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_client/src/features/order/presentation/order_list/order_list_filters.dart';

import '../../domain/entites/order.dart';

part 'order_list_event.freezed.dart';

@freezed
class OrderListEvent with _$OrderListEvent {
  factory OrderListEvent.load() = OrderListLoadEvent;
  
  factory OrderListEvent.ordersArrived(List<MyOrder> orders) 
    = OrderListOrdersArrivedEvent; 

  factory OrderListEvent.updateWaiterFilter(
    OrderListWaiterFilter waiterFilter
  ) = OrderListUpdateWaiterFilterEvent;

  factory OrderListEvent.updateStateFilter(
    OrderListStateFilter stateFilter
  ) = OrderListUpdateStateFilterEvent;

  factory OrderListEvent.updateTimeFilter(
    OrderListTimeFilter timeFilter
  ) = OrderListUpdateTimeFilterEvent;
}