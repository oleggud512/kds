import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_client/src/features/order/app/use_cases/get_orders_use_case.dart';
import 'package:mobile_client/src/features/order/presentation/order_list/order_list_event.dart';
import 'package:mobile_client/src/features/order/presentation/order_list/order_list_state.dart';

@Injectable()
class OrderListBloc extends Bloc<OrderListEvent, OrderListState> {
  final GetOrdersUseCase getOrders;

  OrderListBloc(this.getOrders) : super(OrderListState(isLoading: true)) {
    on<OrderListLoadEvent>(_load);
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
  }
}