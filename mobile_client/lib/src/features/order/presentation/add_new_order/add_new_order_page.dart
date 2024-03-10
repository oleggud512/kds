import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_client/src/core/common/constants/sizes.dart';
import 'package:mobile_client/src/core/common/extensions/build_context.dart';
import 'package:mobile_client/src/core/common/extensions/string.dart';
import 'package:mobile_client/src/core/common/logger.dart';
import 'package:mobile_client/src/core/di/inject.dart';
import 'package:mobile_client/src/core/presentation/confirm_dialog.dart';
import 'package:mobile_client/src/core/presentation/simple_loading.dart';
import 'package:mobile_client/src/features/order/domain/entites/order_item.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/add_new_order_bloc.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/add_new_order_event.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/add_new_order_state.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/widgets/counter_widget.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/widgets/create_order_item_dialog.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/widgets/dish_tile_widget.dart';

import '../../../menu/domain/entities/dish.dart';
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

  Future<void> onSelectDish(BuildContext context, Dish dish) async {
    final res = await CreateOrderItemDialog(dish: dish).show(context);
    print(res);
    if (context.mounted) {
      context.read<AddNewOrderBloc>().add(AddNewOrderDishSelectedEvent(
        dish: dish,
        amount: res?.amount,
        comment: res?.comment,
      ));
    }
  }

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
      .add(AddNewOrderAmountChangedEvent(item, newAmount));
  }

  void onCommentChange(BuildContext context, OrderItem item, String newComment) {
    context.read<AddNewOrderBloc>()
      .add(AddNewOrderCommentChangedEvent(item, newComment));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => inject<AddNewOrderBloc>()
        ..add(AddNewOrderLoadEvent()),
      child: BlocBuilder<AddNewOrderBloc, AddNewOrderState>(
        builder: (context, state) {
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
                  buildOrderForm(state),
                  buildDishes(state),
                ]
              )
            )
          );
        }
      ),
    );
  }

  Widget buildOrderForm(AddNewOrderState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: state.items.length,
            itemBuilder: (context, i) {
              final item = state.items[i];
              return Column(
                children: [
                  DishTileWidget(
                    dish: item.dish,
                    trailing: IconButton(
                      icon: const Icon(Icons.delete_outline),
                      onPressed: () => onDeleteOrderItem(context, item),
                    )
                  ),
                  // TODO: extract component
                  CounterWidget(
                    value: item.amount,
                    onChanged: (newAmount) => onAmountChange(context, item, newAmount)
                  ),
                  SizedBox(
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
                  )
                ]
              );
            }
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(p16),
          child: FilledButton(
            onPressed: () {
              glogger.i(state.items);
            },
            child: Text("Add order!".hardcoded),
          )
        )
      ],
    );
  }

  Widget buildDishes(AddNewOrderState state) {
    if (state.isLoading) return const SimpleLoading();

    return ListView.builder(
      itemCount: state.dishes.length,
      itemBuilder: (context, i) {
        final dish = state.dishes[i];
        final orderItem = state.getOrderItemForDish(dish);
        return DishTileWidget(
          dish: dish,
          onTap: () => onSelectDish(context, dish),
          trailing: orderItem != null 
            ? CircleAvatar(
              child: Center(child: Text(orderItem.amount.toString()))
            )
            : null
        );
      }
    );
  }
}