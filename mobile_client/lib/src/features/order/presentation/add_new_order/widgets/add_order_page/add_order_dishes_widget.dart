import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_client/src/core/presentation/simple_loading.dart';
import 'package:mobile_client/src/features/menu/domain/entities/dish.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/add_new_order_bloc.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/add_new_order_event.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/add_new_order_state.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/widgets/create_order_item_dialog.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/widgets/dish_tile_widget.dart';

class AddOrderDishesWidget extends StatefulWidget {
  const AddOrderDishesWidget({
    super.key,
    required this.state
  });

  final AddNewOrderState state;

  @override
  State<AddOrderDishesWidget> createState() => _AddOrderDishesWidgetState();
}

class _AddOrderDishesWidgetState extends State<AddOrderDishesWidget> {
  AddNewOrderState get state => widget.state;

  Future<void> onSelectDish(BuildContext context, Dish dish) async {
    final res = await CreateOrderItemDialog(dish: dish).show(context);
    if (context.mounted) {
      context.read<AddNewOrderBloc>().add(AddNewOrderDishSelectedEvent(
        dish: dish,
        count: res?.count,
        comment: res?.comment,
      ));
    }
  }


  @override
  Widget build(BuildContext context) {
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
              child: Center(child: Text(orderItem.count.toString()))
            )
            : null
        );
      }
    );
  }
}