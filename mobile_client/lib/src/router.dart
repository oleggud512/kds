import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_client/src/features/order/presentation/order_list/order_list_page.dart';

part 'router.gr.dart';

@lazySingleton
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      initial: true,
      path: '/',
      page: OrderListRoute.page,
      guards: [
        // 
      ]
    ),
  ];

}