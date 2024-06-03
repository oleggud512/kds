import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_client/src/core/common/logger.dart';
import 'package:mobile_client/src/core/socket/socket.dart';
import 'package:mobile_client/src/core/socket/socket_connection.dart';
import 'package:mobile_client/src/features/order/app/use_cases/get_orders_use_case.dart';
import 'package:mobile_client/src/features/order/domain/entites/order.dart';
import 'package:mobile_client/src/features/order/domain/enums/order_state.dart';
import 'package:mobile_client/src/features/order/presentation/order_list/order_list_event.dart';
import 'package:mobile_client/src/features/order/presentation/order_list/order_list_filters.dart';
import 'package:mobile_client/src/features/order/presentation/order_list/order_list_state.dart';
import 'package:mobile_client/src/features/waiters/app/use_cases/get_current_waiter_id_use_case.dart';
import 'package:mobile_client/src/features/waiters/domain/services/waiter_auth_service.dart';
import 'package:mobile_client/src/features/waiters/presentation/waiter_auth/waiter_auth_bloc.dart';

@Injectable()
class OrderListBloc extends Bloc<OrderListEvent, OrderListState> {
  final GetOrdersUseCase getOrders;
  final GetSocketUseCase getSocket;
  final GetCurrentWaiterIdUseCase getWaiterId;

  late final SocketConnection<List<MyOrder>> socketConn;

  OrderListBloc(
    this.getOrders, 
    this.getSocket, 
    this.getWaiterId,
  ) : super(OrderListState(isLoading: true)) {
    on<OrderListLoadEvent>(_load);
    on<OrderListOrdersArrivedEvent>(_ordersArrived);
    on<OrderListUpdateWaiterFilterEvent>(_updateWaiterFilter);
    on<OrderListUpdateStateFilterEvent>(_updateStateFilter);
  }

  Future<void> _updateWaiterFilter(
    OrderListUpdateWaiterFilterEvent event,
    Emitter<OrderListState> emit,
  ) async {
    socketConn.socket.emit(
      "update-waiter-orders-filters", 
      _createFilters(event.waiterFilter, state.stateFilter)
    );
    emit(state.copyWith(
      waiterFilter: event.waiterFilter
    ));
  }

  Future<void> _updateStateFilter(
    OrderListUpdateStateFilterEvent event, Emitter<OrderListState> emit,
  ) async {
    socketConn.socket.emit(
      "update-waiter-orders-filters", 
      _createFilters(state.waiterFilter, event.stateFilter)
    );
    emit(state.copyWith(
      stateFilter: event.stateFilter
    ));
  }

  Future<void> _ordersArrived(
    OrderListOrdersArrivedEvent event,
    Emitter<OrderListState> emit,
  ) async {
    emit(state.copyWith(
      orders: event.orders, 
      isLoading: false
    ));
  }

  Future<void> _load(
    OrderListLoadEvent event, 
    Emitter<OrderListState> emit
  ) async {
    final orders = await getOrders();
    orders.fold(
      (left) => emit(state.copyWith(isLoading: false)),
      (right) => emit(state.copyWith(orders: right, isLoading: false))
    );

    socketConn = SocketConnection<List<MyOrder>>(
      namespace: "waiter-orders",
      getSocket: getSocket, 
      callback: (orders) {
        add(OrderListOrdersArrivedEvent(orders));
      }, 
      parser: (data) {
        return List.from(data).map((o) => MyOrder.fromJson(o)).toList();
      },
      onOn: (socket, listener) {
        socket.emit("subscribe-waiter-orders", _createFilters(
          state.waiterFilter,
          state.stateFilter
        ));
        socket.on("waiter-orders", listener);
      },
      onOff: (socket, listener) {
        socket.off("waiter-orders", listener);
        socket.emit("unsubscribe-waiter-orders");
      }
    );
  }

  Map<String, dynamic> _createFilters(
    OrderListWaiterFilter waiterFilter,
    OrderListStateFilter stateFilter
  ) {
    return {
      "waiterId": waiterFilter == OrderListWaiterFilter.my
        ? getWaiterId.call()
        : null,
      "state": switch (stateFilter) {
        OrderListStateFilter.inProgress => OrderState.inProgress,
        OrderListStateFilter.closed => OrderState.closed,
        OrderListStateFilter.all => null
      }
    };  
  }

  @override
  Future<void> close() {
    socketConn.dispose();
    return super.close();
  }
}