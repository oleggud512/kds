import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mobile_client/src/core/common/extensions/string.dart';

@RoutePage()
class OrderListPage extends StatefulWidget {
  const OrderListPage({super.key});

  @override
  State<OrderListPage> createState() => _OrderListPageState();
}

class _OrderListPageState extends State<OrderListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OrderListPage".hardcoded)
      ),
      body: Container()
    );
  }
}