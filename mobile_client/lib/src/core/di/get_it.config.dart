// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:mobile_client/src/core/di/get_it.dart' as _i30;
import 'package:mobile_client/src/core/presentation/router/guards/waiter_auth_guard.dart'
    as _i10;
import 'package:mobile_client/src/core/presentation/router/router.dart' as _i17;
import 'package:mobile_client/src/core/socket/notification_handler.dart' as _i9;
import 'package:mobile_client/src/core/socket/socket.dart' as _i5;
import 'package:mobile_client/src/features/menu/app/use_cases/get_dishes_use_case.dart'
    as _i21;
import 'package:mobile_client/src/features/menu/domain/repositories/dish_repository.dart'
    as _i15;
import 'package:mobile_client/src/features/menu/infrastructure/repositories/dish_repository_impl.dart'
    as _i16;
import 'package:mobile_client/src/features/order/app/use_cases/add_order_use_case.dart'
    as _i19;
import 'package:mobile_client/src/features/order/app/use_cases/get_orders_use_case.dart'
    as _i18;
import 'package:mobile_client/src/features/order/app/use_cases/update_order_item_state.dart'
    as _i20;
import 'package:mobile_client/src/features/order/domain/repositories/order_repository.dart'
    as _i11;
import 'package:mobile_client/src/features/order/infrastructure/repositories/order_repository_impl.dart'
    as _i12;
import 'package:mobile_client/src/features/order/presentation/add_new_order/add_new_order_bloc.dart'
    as _i22;
import 'package:mobile_client/src/features/order/presentation/order_list/order_list_bloc.dart'
    as _i25;
import 'package:mobile_client/src/features/order/presentation/order_page/order_page_bloc.dart'
    as _i27;
import 'package:mobile_client/src/features/order/presentation/order_page/order_page_bloc_params.dart'
    as _i28;
import 'package:mobile_client/src/features/waiters/app/use_cases/get_current_waiter_id_use_case.dart'
    as _i6;
import 'package:mobile_client/src/features/waiters/app/use_cases/get_current_waiter_use_case.dart'
    as _i29;
import 'package:mobile_client/src/features/waiters/app/use_cases/get_waiter_use_case.dart'
    as _i23;
import 'package:mobile_client/src/features/waiters/app/use_cases/get_waiters_use_case.dart'
    as _i24;
import 'package:mobile_client/src/features/waiters/app/use_cases/set_waiter_use_case.dart'
    as _i7;
import 'package:mobile_client/src/features/waiters/domain/repositories/waiter_repository.dart'
    as _i13;
import 'package:mobile_client/src/features/waiters/domain/services/waiter_auth_service.dart'
    as _i3;
import 'package:mobile_client/src/features/waiters/infrastructure/repositories/waiter_repository_impl.dart'
    as _i14;
import 'package:mobile_client/src/features/waiters/infrastructure/services/waiter_auth_service_impl.dart'
    as _i4;
import 'package:mobile_client/src/features/waiters/presentation/waiter_auth/waiter_auth_bloc.dart'
    as _i26;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.lazySingletonAsync<_i3.WaiterAuthService>(
      () {
        final i = _i4.WaiterAuthServiceImpl();
        return i.load().then((_) => i);
      },
      preResolve: true,
    );
    gh.factory<_i5.GetSocketUseCase>(
        () => _i5.GetSocketUseCase(gh<_i3.WaiterAuthService>()));
    gh.factory<_i6.GetCurrentWaiterIdUseCase>(
        () => _i6.GetCurrentWaiterIdUseCase(gh<_i3.WaiterAuthService>()));
    gh.factory<_i7.SetWaiterUseCase>(
        () => _i7.SetWaiterUseCase(gh<_i3.WaiterAuthService>()));
    gh.singleton<_i8.Dio>(
        () => registerModule.getDio(gh<_i3.WaiterAuthService>()));
    gh.singleton<_i9.NotificationHandler>(
      () => _i9.NotificationHandler(gh<_i5.GetSocketUseCase>()),
      dispose: (i) => i.dispose(),
    );
    gh.factory<_i10.WaiterAuthGuard>(
        () => _i10.WaiterAuthGuard(gh<_i6.GetCurrentWaiterIdUseCase>()));
    gh.factory<_i11.OrderRepository>(
        () => _i12.OrderRepositoryImpl(gh<_i8.Dio>()));
    gh.lazySingleton<_i13.WaiterRepository>(
        () => _i14.WaiterRepositoryImpl(gh<_i8.Dio>()));
    gh.lazySingleton<_i15.DishRepository>(
        () => _i16.DishRepositoryImpl(gh<_i8.Dio>()));
    gh.lazySingleton<_i17.AppRouter>(
        () => _i17.AppRouter(gh<_i10.WaiterAuthGuard>()));
    gh.factory<_i18.GetOrdersUseCase>(
        () => _i18.GetOrdersUseCase(gh<_i11.OrderRepository>()));
    gh.factory<_i19.AddOrderUseCase>(
        () => _i19.AddOrderUseCase(gh<_i11.OrderRepository>()));
    gh.factory<_i20.UpdateOrderItemStateUseCase>(
        () => _i20.UpdateOrderItemStateUseCase(gh<_i11.OrderRepository>()));
    gh.factory<_i21.GetDishesUseCase>(
        () => _i21.GetDishesUseCase(gh<_i15.DishRepository>()));
    gh.factory<_i22.AddNewOrderBloc>(() => _i22.AddNewOrderBloc(
          gh<_i21.GetDishesUseCase>(),
          gh<_i19.AddOrderUseCase>(),
        ));
    gh.factory<_i23.GetWaiterUseCase>(
        () => _i23.GetWaiterUseCase(gh<_i13.WaiterRepository>()));
    gh.factory<_i24.GetWaitersUseCase>(
        () => _i24.GetWaitersUseCase(gh<_i13.WaiterRepository>()));
    gh.factory<_i25.OrderListBloc>(() => _i25.OrderListBloc(
          gh<_i18.GetOrdersUseCase>(),
          gh<_i5.GetSocketUseCase>(),
          gh<_i6.GetCurrentWaiterIdUseCase>(),
        ));
    gh.factory<_i26.WaiterAuthBloc>(() => _i26.WaiterAuthBloc(
          gh<_i7.SetWaiterUseCase>(),
          gh<_i24.GetWaitersUseCase>(),
          gh<_i9.NotificationHandler>(),
        ));
    gh.factoryParam<_i27.OrderPageBloc, _i28.OrderPageBlocParams, dynamic>((
      params,
      _,
    ) =>
        _i27.OrderPageBloc(
          gh<_i5.GetSocketUseCase>(),
          gh<_i20.UpdateOrderItemStateUseCase>(),
          params,
        ));
    gh.factory<_i29.GetCurrentWaiterUseCase>(() => _i29.GetCurrentWaiterUseCase(
          gh<_i23.GetWaiterUseCase>(),
          gh<_i3.WaiterAuthService>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i30.RegisterModule {}
