import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_client/src/features/order/presentation/order_list/order_list_event.dart';
import 'package:mobile_client/src/features/order/presentation/order_list/order_list_state.dart';

class OrderListBloc extends Bloc<OrderListEvent, OrderListState> {
  OrderListBloc() : super(OrderListState(isLoading: true)) {
    on<OrderListLoadEvent>((event, emit) async {
      // 
    });
  }
}