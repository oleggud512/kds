import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_client/src/core/common/constants/sizes.dart';
import 'package:mobile_client/src/core/common/extensions/string.dart';
import 'package:mobile_client/src/core/common/logger.dart';
import 'package:mobile_client/src/core/di/inject.dart';
import 'package:mobile_client/src/core/presentation/confirm_dialog.dart';
import 'package:mobile_client/src/core/presentation/constants.dart';
import 'package:mobile_client/src/core/presentation/simple_loading.dart';
import 'package:mobile_client/src/features/order/domain/entites/order_item.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/add_new_order_bloc.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/add_new_order_event.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/add_new_order_state.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/widgets/add_order_page/add_order_dishes_widget.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/widgets/add_order_page/order_form_widget.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/widgets/counter_widget.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/widgets/create_order_item_dialog.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/widgets/dish_tile_widget.dart';

import '../../../menu/domain/entities/dish.dart';

@RoutePage()
class AddOrderPage extends StatefulWidget {
  const AddOrderPage({
    super.key,
  });

  @override
  State<AddOrderPage> createState() => _AddOrderPageState();
}

class _AddOrderPageState extends State<AddOrderPage> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => inject<AddNewOrderBloc>()
        ..add(AddNewOrderLoadEvent()),
      child: BlocBuilder<AddNewOrderBloc, AddNewOrderState>(
        builder: (context, state) {
          return DefaultTabController(
            length: 2, 
            initialIndex: 1,
            child: Scaffold(
              appBar: AppBar(
                title: Text("Нове замовлення".hardcoded),
                bottom: TabBar(
                  tabs: [
                    Tab(
                      text: "Замовлення".hardcoded,
                    ),
                    Tab(
                      text: "Меню".hardcoded,
                    ),
                  ]
                )
              ),
              body: TabBarView(
                children: [
                  OrderFormWidget(state: state),
                  AddOrderDishesWidget(state: state),
                ]
              )
            )
          );
        }
      ),
    );
  }
}