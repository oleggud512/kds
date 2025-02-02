import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_client/src/core/common/constants/sizes.dart';
import 'package:mobile_client/src/core/common/extensions/string.dart';
import 'package:mobile_client/src/core/presentation/dialog_widget.dart';
import 'package:mobile_client/src/features/menu/domain/entities/dish.dart';
import 'package:mobile_client/src/features/order/domain/entites/order_item.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/widgets/counter_widget.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/widgets/dish_tile_widget.dart';

class CreateOrderItemDialog extends StatefulWidget with DialogWidget<({int count, String comment})> {
  const CreateOrderItemDialog({super.key, required this.dish});

  final Dish dish;

  @override
  State<CreateOrderItemDialog> createState() => _CreateOrderItemDialogState();
}

class _CreateOrderItemDialogState extends State<CreateOrderItemDialog> {
  int count = 1;
  final commentController = TextEditingController();

  void onAmountChange(int newAmount) {
    setState(() {
      count = newAmount;
    });
  }

  void submit() {
    Navigator.of(context).pop((
      count: count, 
      comment: commentController.text
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(p16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            DishTileWidget(dish: widget.dish),
            CounterWidget(onChanged: onAmountChange),
            h8gap,
            SizedBox(
              height: p144,
              child: TextFormField(
                controller: commentController,
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                  hintText: "Додати коментар".hardcoded,
                ),
                maxLines: null,
                expands: true,
              ),
            ),
            h8gap,
            FilledButton(
              onPressed: submit,
              child: Text("Додати страву".hardcoded),
            ),
            h4gap,
            Text("Можна відредагувати потім".hardcoded,
              textAlign: TextAlign.center,
            )
          ]
        ),
      )
    );
  }
}