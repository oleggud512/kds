import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mobile_client/src/core/common/extensions/string.dart';
import 'package:mobile_client/src/core/presentation/router/router.dart';
import 'package:mobile_client/src/features/waiters/presentation/widgets/logout_boutton.dart';

@RoutePage()
class OrderListPage extends StatefulWidget {
  const OrderListPage({super.key});

  @override
  State<OrderListPage> createState() => _OrderListPageState();
}

class _OrderListPageState extends State<OrderListPage> {

  Future<void> gout() async {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orders".hardcoded),
        actions: const [
          LogoutButton() 
        ]
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: can I just leave it 0 to identify that I want to add a new order?
          context.router.push(EditOrderRoute());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}