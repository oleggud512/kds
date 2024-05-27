import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_client/src/core/common/constants/sizes.dart';
import 'package:mobile_client/src/core/common/extensions/string.dart';
import 'package:mobile_client/src/core/di/inject.dart';
import 'package:mobile_client/src/core/presentation/router/router.dart';
import 'package:mobile_client/src/features/order/domain/entites/order.dart';
import 'package:mobile_client/src/features/order/presentation/order_list/order_list_bloc.dart';
import 'package:mobile_client/src/features/order/presentation/order_list/order_list_event.dart';
import 'package:mobile_client/src/features/order/presentation/order_list/order_list_state.dart';
import 'package:mobile_client/src/features/order/presentation/order_list/widgets/order_widget.dart';
import 'package:mobile_client/src/features/waiters/presentation/widgets/logout_boutton.dart';

@RoutePage()
class OrderListPage extends StatefulWidget {
  const OrderListPage({super.key});

  @override
  State<OrderListPage> createState() => _OrderListPageState();
}

class _OrderListPageState extends State<OrderListPage> {

  void onAddOrder() {
    context.router.push(const AddOrderRoute());
  }

  void onTapOrder(MyOrder order) {
    context.router.push(OrderRoute(order: order));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => inject<OrderListBloc>()
        ..add(OrderListLoadEvent()),
      child: BlocBuilder<OrderListBloc, OrderListState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Orders".hardcoded),
              actions: const [
                LogoutButton() 
              ]
            ),
            body: buildOrderList(context, state),
            floatingActionButton: FloatingActionButton(
              onPressed: onAddOrder,
              child: const Icon(Icons.add),
            ),
          );
        }
      ),
    );
  }

  Widget buildOrderList(BuildContext context, OrderListState state) {
    return ListView.separated(
      separatorBuilder: (_, __) => h4gap,
      padding: const EdgeInsets.symmetric(horizontal: p8, vertical: p4),
      itemCount: state.orders.length,
      itemBuilder: (context, i) {
        final order = state.orders[i];
        return OrderWidget(
          order: order,
          onTap: () => onTapOrder(order)
        );
      }
    );
  }
}