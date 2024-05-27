import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mobile_client/src/features/order/domain/entites/order.dart';

@RoutePage()
class OrderPage extends StatefulWidget {
  const OrderPage({
    super.key,
    // @PathParam('orderId') required this.orderId,
    required this.order,
  });

  // final int orderId;
  final MyOrder order;

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Some order"),
      )
    );
  }
}