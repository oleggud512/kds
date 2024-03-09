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
    EditOrderRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<EditOrderRouteArgs>(
          orElse: () => EditOrderRouteArgs(
                  orderId: pathParams.getInt(
                'orderId',
                0,
              )));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditOrderPage(
          key: args.key,
          orderId: args.orderId,
          order: args.order,
        ),
      );
    },
    OrderListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrderListPage(),
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
/// [EditOrderPage]
class EditOrderRoute extends PageRouteInfo<EditOrderRouteArgs> {
  EditOrderRoute({
    Key? key,
    int orderId = 0,
    MyOrder? order,
    List<PageRouteInfo>? children,
  }) : super(
          EditOrderRoute.name,
          args: EditOrderRouteArgs(
            key: key,
            orderId: orderId,
            order: order,
          ),
          rawPathParams: {'orderId': orderId},
          initialChildren: children,
        );

  static const String name = 'EditOrderRoute';

  static const PageInfo<EditOrderRouteArgs> page =
      PageInfo<EditOrderRouteArgs>(name);
}

class EditOrderRouteArgs {
  const EditOrderRouteArgs({
    this.key,
    this.orderId = 0,
    this.order,
  });

  final Key? key;

  final int orderId;

  final MyOrder? order;

  @override
  String toString() {
    return 'EditOrderRouteArgs{key: $key, orderId: $orderId, order: $order}';
  }
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
