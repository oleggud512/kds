import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_client/src/core/presentation/router/guards/waiter_auth_guard.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/add_new_order_page.dart';
import 'package:mobile_client/src/features/order/presentation/order_list/order_list_page.dart';
import 'package:mobile_client/src/features/order/presentation/order_page/order_page.dart';
import 'package:mobile_client/src/features/waiters/presentation/waiter_auth/waiter_auth_page.dart';

import '../../../features/order/domain/entites/order.dart';

part 'router.gr.dart';


@lazySingleton
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  final WaiterAuthGuard waiterAuthGuard;

  AppRouter(this.waiterAuthGuard);

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      initial: true,
      path: '/orders',
      page: OrderListRoute.page,
      guards: [ waiterAuthGuard ],
    ),
    AutoRoute(
      path: '/orders/:orderId/new',
      page: AddOrderRoute.page,
      guards: [ waiterAuthGuard ],
    ),
    AutoRoute(
      path: '/orders/:orderId',
      page: OrderRoute.page,
      guards: [ waiterAuthGuard ],
    ),
    AutoRoute(
      path: '/login',
      page: WaiterAuthRoute.page,
    )
  ];

}