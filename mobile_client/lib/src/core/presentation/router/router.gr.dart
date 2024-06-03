// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AddOrderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddOrderPage(),
      );
    },
    OrderListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrderListPage(),
      );
    },
    OrderRoute.name: (routeData) {
      final args = routeData.argsAs<OrderRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OrderPage(
          key: args.key,
          order: args.order,
          listen: args.listen,
        ),
      );
    },
    WaiterAuthRoute.name: (routeData) {
      final args = routeData.argsAs<WaiterAuthRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WaiterAuthPage(
          key: args.key,
          onWaiterSelected: args.onWaiterSelected,
        ),
      );
    },
  };
}

/// generated route for
/// [AddOrderPage]
class AddOrderRoute extends PageRouteInfo<void> {
  const AddOrderRoute({List<PageRouteInfo>? children})
      : super(
          AddOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddOrderRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrderListPage]
class OrderListRoute extends PageRouteInfo<void> {
  const OrderListRoute({List<PageRouteInfo>? children})
      : super(
          OrderListRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrderPage]
class OrderRoute extends PageRouteInfo<OrderRouteArgs> {
  OrderRoute({
    Key? key,
    required MyOrder order,
    bool listen = false,
    List<PageRouteInfo>? children,
  }) : super(
          OrderRoute.name,
          args: OrderRouteArgs(
            key: key,
            order: order,
            listen: listen,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderRoute';

  static const PageInfo<OrderRouteArgs> page = PageInfo<OrderRouteArgs>(name);
}

class OrderRouteArgs {
  const OrderRouteArgs({
    this.key,
    required this.order,
    this.listen = false,
  });

  final Key? key;

  final MyOrder order;

  final bool listen;

  @override
  String toString() {
    return 'OrderRouteArgs{key: $key, order: $order, listen: $listen}';
  }
}

/// generated route for
/// [WaiterAuthPage]
class WaiterAuthRoute extends PageRouteInfo<WaiterAuthRouteArgs> {
  WaiterAuthRoute({
    Key? key,
    required void Function() onWaiterSelected,
    List<PageRouteInfo>? children,
  }) : super(
          WaiterAuthRoute.name,
          args: WaiterAuthRouteArgs(
            key: key,
            onWaiterSelected: onWaiterSelected,
          ),
          initialChildren: children,
        );

  static const String name = 'WaiterAuthRoute';

  static const PageInfo<WaiterAuthRouteArgs> page =
      PageInfo<WaiterAuthRouteArgs>(name);
}

class WaiterAuthRouteArgs {
  const WaiterAuthRouteArgs({
    this.key,
    required this.onWaiterSelected,
  });

  final Key? key;

  final void Function() onWaiterSelected;

  @override
  String toString() {
    return 'WaiterAuthRouteArgs{key: $key, onWaiterSelected: $onWaiterSelected}';
  }
}
