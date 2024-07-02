import 'package:mobile_client/src/features/order/domain/enums/order_item_state.dart';
import 'package:mobile_client/src/features/order/domain/enums/order_state.dart';

class AppUtils {
  static String idToString(int id) {
    final str = id.toString();
    final res = str.length > 3 
      ? str.substring(0, 3)
      : str.toString().padLeft(3, "0");
    return "#$res";
  }

  // TODO: localize
  static String ukOrderState(OrderState state) {
    return switch (state) {
      OrderState.inProgress => "Активне",
      OrderState.closed => "Закрите"
    };
  }
  // TODO: localize
  static String ukOrderItemState(OrderItemState state) {
    return switch (state) {
      OrderItemState.cooking => "Готується",
      OrderItemState.ready => "Готово до подачі",
      OrderItemState.served => "Подано"
    };
  }
}