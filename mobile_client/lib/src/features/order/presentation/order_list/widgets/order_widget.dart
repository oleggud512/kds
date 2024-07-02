import 'package:flutter/material.dart';
import 'package:mobile_client/src/core/common/constants/sizes.dart';
import 'package:mobile_client/src/core/presentation/constants.dart';
import 'package:mobile_client/src/features/order/domain/entites/order.dart';
import 'package:mobile_client/src/features/order/domain/enums/order_item_state.dart';
import 'package:mobile_client/src/features/order/domain/enums/order_state.dart';
import 'package:mobile_client/src/shared/utils.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({
    super.key,
    required this.order,
    this.onTap,
  });

  final MyOrder order;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(p16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppUtils.idToString(order.id)),
                  w4gap,
                  OrderStateWidget(state: order.state),
                  const Spacer(),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(order.waiter.name,
                        textAlign: TextAlign.right,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      if (order.table.isNotEmpty) Text(order.table)
                    ],
                  ),
                ]
              ),
              ...order.items.map((i) => Padding(
                padding: const EdgeInsets.only(top: p4),
                child: Row(
                  children: [
                    Text('${i.dish.name} x ${i.count}'),
                    w4gap,
                    OrderItemStateWidget(state: i.state)
                  ],
                ),
              ),),
              Align(
                alignment: Alignment.centerRight,
                child: Text(defaultDateFormat.format(order.date.toLocal())),
              )
            ]
          ),
        ),
      )
    );
  }
}

class OrderStateWidget extends StatelessWidget {
  const OrderStateWidget({
    super.key,
    required this.state
  });

  final OrderState state;
  Color get bg => switch (state) {
    OrderState.inProgress => Colors.red,
    OrderState.closed => Colors.grey
  };
  Color get fg => bg.computeLuminance() >= 0.5 ? Colors.black : Colors.white;

  @override
  Widget build(BuildContext context) {
    return LabelWidget(
      bg: bg, 
      fg: fg,
      text: AppUtils.ukOrderState(state), 
    );
  }
}

class OrderItemStateWidget extends StatelessWidget {
  const OrderItemStateWidget({
    super.key,
    required this.state
  });

  final OrderItemState state;
  Color get bg => switch (state) {
    OrderItemState.cooking => Colors.red,
    OrderItemState.ready => Colors.green,
    OrderItemState.served => Colors.grey
  };
  Color get fg => bg.computeLuminance() >= 0.5 ? Colors.black : Colors.white;

  @override
  Widget build(BuildContext context) {
    return LabelWidget(
      bg: bg, 
      fg: fg,
      text: AppUtils.ukOrderItemState(state), 
    );
  }
}

class LabelWidget extends StatelessWidget {
  const LabelWidget({
    super.key,
    required this.bg,
    required this.fg,
    required this.text,
  });

  final Color bg;
  final String text;
  final Color fg;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: p4),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(p4)
      ),
      child: Text(text, 
        style: TextStyle(
          color: fg
        )
      )
    );
  }
}