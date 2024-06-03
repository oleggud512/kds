import 'package:flutter/material.dart';
import 'package:mobile_client/src/core/common/constants/sizes.dart';
import 'package:mobile_client/src/features/order/domain/entites/order.dart';
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppUtils.idToString(order.id)),
                  Text(order.waiter.name,
                    textAlign: TextAlign.right,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ]
              ),
              ...order.items.map((i) => Text('${i.dish.name} x ${i.count} [${i.state.name}]')),
            ]
          ),
        ),
      )
    );
  }
}