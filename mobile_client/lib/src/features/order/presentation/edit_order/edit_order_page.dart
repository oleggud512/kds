import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mobile_client/src/core/common/extensions/string.dart';

import '../../domain/entites/order.dart';

@RoutePage()
class EditOrderPage extends StatefulWidget {
  const EditOrderPage({
    super.key,
    @PathParam('orderId') this.orderId = 0,
    this.order,
  });

  final int orderId;
  final MyOrder? order;

  @override
  State<EditOrderPage> createState() => _EditOrderPageState();
}

class _EditOrderPageState extends State<EditOrderPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      initialIndex: widget.order == null ? 1 : 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.order == null 
            ? "New order" 
            : "Order #${widget.order!.id}"),
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Order".hardcoded,
              ),
              Tab(
                text: "Menu".hardcoded,
              ),
            ]
          )
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Here is an order you create".hardcoded)),
            Center(child: Text("Here is a list of dishes to choose".hardcoded)),
          ]
        )
      )
    );
  }
}