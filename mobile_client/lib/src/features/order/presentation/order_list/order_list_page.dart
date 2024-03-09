import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mobile_client/src/core/common/extensions/string.dart';
import 'package:mobile_client/src/core/di/inject.dart';
import 'package:mobile_client/src/core/presentation/confirm_dialog.dart';
import 'package:mobile_client/src/core/presentation/router/router.dart';
import 'package:mobile_client/src/features/waiters/domain/services/waiter_auth_service.dart';

@RoutePage()
class OrderListPage extends StatefulWidget {
  const OrderListPage({super.key});

  @override
  State<OrderListPage> createState() => _OrderListPageState();
}

class _OrderListPageState extends State<OrderListPage> {

  Future<void> onLogout() async {
    final isSureLogout = await ConfirmDialog(
      message: 'Are you sure you want to logout?'.hardcoded
    ).show(context);
    await inject<WaiterAuthService>().clearWaiterId();
    if (isSureLogout == true && mounted) {
      context.router.reevaluateGuards();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OrderListPage".hardcoded),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: onLogout,
          )
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