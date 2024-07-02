import 'package:injectable/injectable.dart';
import 'package:mobile_client/src/core/common/logger.dart';
import 'package:mobile_client/src/core/socket/notification_service.dart';
import 'package:mobile_client/src/core/socket/socket.dart';
import 'package:mobile_client/src/core/socket/socket_connection.dart';
import 'package:mobile_client/src/features/order/domain/entites/order_item.dart';
import 'package:mobile_client/src/shared/utils.dart';

@Singleton()
class NotificationHandler {
  late SocketConnection<OrderItem> socket;
  final GetSocketUseCase getSocket;

  NotificationHandler(this.getSocket) {
    _init();
  }

  void sendNotification(OrderItem item) {
    final orderStr = AppUtils.idToString(item.orderId);
    NotificationService.showNotification(
      title: "Замовлення #$orderStr", 
      body: "\"${item.dish.name}\" очікує подачі."
    );
  }

  void reinit() {
    dispose();
    _init();
  }

  void _init() {
    glogger.i("init notification listener");
    socket = SocketConnection(
      namespace: "waiter-orders",
      getSocket: getSocket, 
      callback: sendNotification, 
      parser: (data) {
        return OrderItem.fromJson(data);
      }, 
      onOn: (socket, listener) {
        socket.emit("subscribe-notifications");
        socket.on("dish-ready-notification", listener);
      }, 
      onOff: (socket, listener) {
        socket.off("dish-ready-notification", listener);
        socket.emit("unsubscribe-notification");
      }
    );
  }

  @disposeMethod
  void dispose() {
    socket.dispose();
  }
}