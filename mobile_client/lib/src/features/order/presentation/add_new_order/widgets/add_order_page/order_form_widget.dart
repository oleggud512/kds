import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_client/src/core/common/constants/sizes.dart';
import 'package:mobile_client/src/core/common/extensions/string.dart';
import 'package:mobile_client/src/core/common/logger.dart';
import 'package:mobile_client/src/core/presentation/confirm_dialog.dart';
import 'package:mobile_client/src/core/presentation/constants.dart';
import 'package:mobile_client/src/core/presentation/router/router.dart';
import 'package:mobile_client/src/features/order/domain/entites/order_item.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/add_new_order_bloc.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/add_new_order_event.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/add_new_order_state.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/widgets/counter_widget.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/widgets/dish_tile_widget.dart';

class OrderFormWidget extends StatefulWidget {
  const OrderFormWidget({
    super.key,
    required this.state,
  });

  final AddNewOrderState state;

  @override
  State<OrderFormWidget> createState() => _OrderFormWidgetState();
}

class _OrderFormWidgetState extends State<OrderFormWidget> {
  AddNewOrderState get state => widget.state;

  Future<void> onDeleteOrderItem(BuildContext context, OrderItem item) async {
    final isSure = await ConfirmDialog(
      message: "Are you sure you want to delete this item?".hardcoded
    ).show(context);
    if (isSure == true && context.mounted) {
      context.read<AddNewOrderBloc>().add(AddNewOrderDeleteItemEvent(item));
    }
  }

  void onAmountChange(BuildContext context, OrderItem item, int newAmount) {
    context.read<AddNewOrderBloc>()
      .add(AddNewOrderCountChangedEvent(item, newAmount));
  }

  void onCommentChange(BuildContext context, OrderItem item, String newComment) {
    context.read<AddNewOrderBloc>()
      .add(AddNewOrderCommentChangedEvent(item, newComment));
  }

  Future<void> onAddOrder(BuildContext context) async {
    final isSure = await ConfirmDialog(
      message: "Are you sure the order is completed? The action can't be undone.".hardcoded
    ).show(context);

    if (isSure == true && context.mounted) {
      context.read<AddNewOrderBloc>()
        .add(AddNewOrderEvent.submit(onSuccess: () {
          context.router.popUntilRoot();
        }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => defaultListSeparator,
            padding: defaultListPadding,
            itemCount: state.items.length,
            itemBuilder: (context, i) {
              final item = state.items[i];
              return Card(
                child: Column(
                  children: [
                    h4gap,
                    Row(
                      children: [
                        Expanded(
                          child: DishTileWidget(
                            dish: item.dish,
                            trailing: IconButton(
                              icon: const Icon(Icons.delete_outline),
                              onPressed: () => onDeleteOrderItem(context, item),
                            )
                          ),
                        ),
                        CounterWidget(
                          value: item.count,
                          onChanged: (newAmount) => onAmountChange(context, item, newAmount)
                        ),
                      ]
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: p16, right: p16, bottom: p16, top: p4),
                      child: SizedBox(
                        height: p104,
                        child: TextFormField(
                          initialValue: item.comment,
                          onChanged: (newComment) => onCommentChange(context, item, newComment),
                          maxLines: null,
                          expands: true,
                          textAlignVertical: TextAlignVertical.top,
                          decoration: InputDecoration(
                            hintText: "Add a comment".hardcoded,
                          )
                        ),
                      ),
                    )
                  ]
                ),
              );
            }
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(p16),
          child: FilledButton(
            onPressed: () {
              // TODO: implement adding new order.
              glogger.i("add order: ${state.items}");
              onAddOrder(context);
            },
            child: Text("Add order!".hardcoded),
          )
        )
      ],
    );
  }
}