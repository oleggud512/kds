import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_client/src/core/common/constants/sizes.dart';
import 'package:mobile_client/src/core/common/extensions/string.dart';
import 'package:mobile_client/src/core/di/inject.dart';
import 'package:mobile_client/src/core/presentation/confirm_dialog.dart';
import 'package:mobile_client/src/core/presentation/constants.dart';
import 'package:mobile_client/src/features/order/domain/entites/order.dart';
import 'package:mobile_client/src/features/order/domain/entites/order_item.dart';
import 'package:mobile_client/src/features/order/domain/enums/order_item_state.dart';
import 'package:mobile_client/src/features/order/presentation/order_list/widgets/order_widget.dart';
import 'package:mobile_client/src/features/order/presentation/order_page/order_page_bloc.dart';
import 'package:mobile_client/src/features/order/presentation/order_page/order_page_bloc_params.dart';
import 'package:mobile_client/src/features/order/presentation/order_page/order_page_event.dart';
import 'package:mobile_client/src/features/order/presentation/order_page/order_page_state.dart';

@RoutePage()
class OrderPage extends StatefulWidget {
  const OrderPage({
    super.key,
    // @PathParam('orderId') required this.orderId,
    required this.order,
    this.listen = false
  });

  // final int orderId;
  final MyOrder order;
  final bool listen;

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<OrderPageBloc>(OrderPageBlocParams(
        order: widget.order,
        listen: widget.listen
      )),
      child: BlocBuilder<OrderPageBloc, OrderPageState>(
        builder: (context, state) {
          return _OrderPageContents(
            order: state.order, 
            onCheckbox: (item, newState, isLast) {
              context.read<OrderPageBloc>()
                .add(OrderPageEvent.itemStateChanged(
                  orderId: item.orderId, 
                  dishId: item.dishId, 
                  state: newState,
                  onOrderClose: () {
                    if (isLast) {
                      context.router.popUntilRoot();
                    }
                  }
                ));
            }
          );
        }
      )
    );
  }
}

class _OrderPageContents extends StatelessWidget {
  const _OrderPageContents({
    required this.order,
    required this.onCheckbox
  });

  final MyOrder order;
  final void Function(OrderItem item, OrderItemState newState, bool isLast) onCheckbox;

  void onToggleServed(BuildContext context, bool? v, OrderItem item) async {
    final newState = v == true 
      ? OrderItemState.served
      : OrderItemState.ready;
    
    // check if it's the last one to mark as "served"
    final servedCount = order.items.where((o) => o.state == OrderItemState.served).length;
    final isLast = newState == OrderItemState.served && 
        servedCount == order.items.length - 1;
    if (isLast) {
      final isSure = await ConfirmDialog(
        message: "Ви впевнені що хочете закрити замовлення?".hardcoded
      ).show(context);
      if (isSure != true) {
        return;
      }
    }
    onCheckbox(item, newState, isLast);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Замовлення #${order.id}${order.table.isNotEmpty ? ' (${order.table})' : ""}".hardcoded),
        centerTitle: true,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return defaultListSeparator;
        },
        itemCount: order.items.length,
        padding: defaultListPadding,
        itemBuilder: (context, i) {
          final item = order.items[i];
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListTile(
                title: Text("${item.dish.name} × ${item.count}"),
                subtitle: Row(
                  children: [
                    OrderItemStateWidget(state: item.state),
                  ],
                ),
                trailing: Checkbox(
                  value: item.state == OrderItemState.served,
                  onChanged: [OrderItemState.ready, OrderItemState.served]
                      .contains(item.state)
                    ? (v) => onToggleServed(context, v, item)
                    : null,
                )
              ),
              if (item.comment.isNotEmpty) ...[
                Text(item.comment),
                h8gap
              ],
              const Divider(height: 1),
            ],
          );
        },
      )
    );
  }
}