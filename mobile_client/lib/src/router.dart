import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_client/src/features/order/presentation/edit_order/edit_order_page.dart';
import 'package:mobile_client/src/features/order/presentation/order_list/order_list_page.dart';

import 'features/order/domain/entites/order.dart';

part 'router.gr.dart';


@lazySingleton
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      initial: true,
      path: '/orders',
      page: OrderListRoute.page,
      guards: [
        // 
      ]
    ),
    AutoRoute(
      path: '/orders/:orderId',
      page: EditOrderRoute.page,
    )
  ];

}