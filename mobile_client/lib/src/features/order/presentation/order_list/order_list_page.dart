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
import 'package:mobile_client/src/features/order/presentation/order_list/order_list_filters.dart';
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
    context.router.push(OrderRoute(
      order: order,
      listen: true
      // orderId: order.id
    ));
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
              title: Text("Замовлення".hardcoded),
              actions: const [
                LogoutButton()
              ]
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: p16),
                  child: Row(
                    children: [
                      Expanded(
                        child: MyDropdown<OrderListWaiterFilter>(
                          value: state.waiterFilter,
                          underText: "Офіціант".hardcoded,
                          items: [
                            DropdownMenuItem(
                              value: OrderListWaiterFilter.my,
                              child: Text("Мої".hardcoded),
                            ),
                            DropdownMenuItem(
                              value: OrderListWaiterFilter.all,
                              child: Text("Всі".hardcoded)
                            ),
                          ],
                          onChanged: (v) {
                            context.read<OrderListBloc>()
                              .add(OrderListEvent.updateWaiterFilter(v!));
                          },
                        ),
                      ),
                      w8gap,
                      Expanded(
                        child: MyDropdown<OrderListStateFilter>(
                          value: state.stateFilter,
                          underText: "Стан зам.".hardcoded,
                          items: [
                            DropdownMenuItem(
                              value: OrderListStateFilter.inProgress,
                              child: Text("Активні".hardcoded),
                            ),
                            DropdownMenuItem(
                              value: OrderListStateFilter.closed,
                              child: Text("Закриті".hardcoded)
                            ),
                            DropdownMenuItem(
                              value: OrderListStateFilter.all,
                              child: Text("Всі".hardcoded)
                            ),
                          ],
                          onChanged: (v) {
                            context.read<OrderListBloc>()
                              .add(OrderListEvent.updateStateFilter(v!));
                          },
                        ),
                      ),
                      w8gap,
                      Expanded(
                        child: MyDropdown<OrderListTimeFilter>(
                          value: state.timeFilter,
                          underText: "Дата зам.",
                          items: [
                            DropdownMenuItem(
                              value: OrderListTimeFilter.today,
                              child: Text("Сьогоднішні".hardcoded),
                            ),
                            DropdownMenuItem(
                              value: OrderListTimeFilter.all,
                              child: Text("Всі".hardcoded)
                            ),
                          ],
                          onChanged: (v) {
                            context.read<OrderListBloc>()
                              .add(OrderListEvent.updateTimeFilter(v!));
                          },
                        ),
                      ),
                    ]
                  ),
                ),
                Expanded(child: buildOrderList(context, state)),
              ],
            ),
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
          key: UniqueKey(),
          order: order,
          onTap: () => onTapOrder(order)
        );
      }
    );
  }
}

class MyDropdown<T> extends StatelessWidget {
  const MyDropdown({
    super.key,
    required this.items,
    this.value,
    this.onChanged,
    this.underText
  });

  final void Function(T?)? onChanged;
  final T? value;
  final List<DropdownMenuItem<T>>? items;
  final String? underText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        DropdownButton<T>(
          value: value,
          isExpanded: true,
          underline: null,
          isDense: true,
          items: items,
          onChanged: onChanged,
        ),
        h2gap,
        if (underText != null) Text(underText!,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant
          ),
        )
      ],
    );
  }
}