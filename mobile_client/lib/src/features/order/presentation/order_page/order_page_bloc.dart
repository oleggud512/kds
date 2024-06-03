import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_client/src/core/socket/socket.dart';
import 'package:mobile_client/src/core/socket/socket_connection.dart';
import 'package:mobile_client/src/features/order/app/use_cases/update_order_item_state.dart';
import 'package:mobile_client/src/features/order/domain/entites/order.dart';
import 'package:mobile_client/src/features/order/presentation/order_page/order_page_bloc_params.dart';
import 'package:mobile_client/src/features/order/presentation/order_page/order_page_event.dart';
import 'package:mobile_client/src/features/order/presentation/order_page/order_page_state.dart';

@Injectable()
class OrderPageBloc extends Bloc<OrderPageEvent, OrderPageState> {
  SocketConnection<MyOrder>? orderConn;
  final GetSocketUseCase getSocket;
  final UpdateOrderItemStateUseCase updateItemState;

  OrderPageBloc(
    this.getSocket,
    this.updateItemState,
    @factoryParam OrderPageBlocParams params,
  ) : super(OrderPageState(order: params.order)) {
    
    if (params.listen) {
      orderConn = SocketConnection(
        namespace: "waiter-orders",
        getSocket: getSocket, 
        callback: (order) {
          add(OrderPageEvent.orderArrived(order));
        }, 
        parser: (data) {
          return MyOrder.fromJson(data);
        }, 
        onOn: (socket, listener) {
          socket.emit("subscribe-order", params.order.id);
          socket.on("order", listener);
        }, 
        onOff: (socket, listener) {
          socket.off("order", listener);
          socket.emit("unsubscribe-order", params.order.id);
        }
      );
    }

    on<OrderPageOrderArrivedEvent>((event, emit) {
      emit(state.copyWith(order: event.order));
    });

    on<OrderPageItemStateChangedEvent>((event, emit) async {
      final res = await updateItemState.call(
        event.orderId, 
        event.dishId, 
        event.state
      );
      res.fold(
        (l) {},
        (_) {
          final newItems = [...state.order.items];
          final updatedItemIndex = newItems.indexWhere((oi) => 
            oi.orderId == event.orderId && oi.dishId == event.dishId);

          newItems[updatedItemIndex] = newItems[updatedItemIndex].copyWith(
            state: event.state
          );

          emit(state.copyWith.order(
            items: newItems
          ));

          event.onOrderClose?.call();
        }
      );
    });
  }

  @override
  Future<void> close() {
    orderConn?.dispose();
    return super.close();
  }
}