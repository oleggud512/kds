import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_client/src/core/presentation/router/router.dart';
import 'package:mobile_client/src/features/waiters/app/use_cases/get_current_waiter_id_use_case.dart';

@Injectable()
class WaiterAuthGuard extends AutoRouteGuard {
  final GetCurrentWaiterIdUseCase getCurrentWaiter;

  WaiterAuthGuard(this.getCurrentWaiter);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (getCurrentWaiter() != null) {
      return resolver.next(true);
    } 
    resolver.redirect(WaiterAuthRoute(onWaiterSelected: () {
      resolver.next(true);
    }));
  }

}