// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:mobile_client/src/core/di/get_it.dart' as _i24;
import 'package:mobile_client/src/core/presentation/router/guards/waiter_auth_guard.dart'
    as _i13;
import 'package:mobile_client/src/core/presentation/router/router.dart' as _i17;
import 'package:mobile_client/src/features/menu/app/use_cases/get_dishes_use_case.dart'
    as _i9;
import 'package:mobile_client/src/features/menu/domain/repositories/dish_repository.dart'
    as _i6;
import 'package:mobile_client/src/features/menu/infrastructure/repositories/dish_repository_impl.dart'
    as _i7;
import 'package:mobile_client/src/features/order/app/use_cases/get_orders_use_case.dart'
    as _i18;
import 'package:mobile_client/src/features/order/domain/repositories/order_repository.dart'
    as _i10;
import 'package:mobile_client/src/features/order/infrastructure/repositories/order_repository_impl.dart'
    as _i11;
import 'package:mobile_client/src/features/order/presentation/add_new_order/add_new_order_bloc.dart'
    as _i16;
import 'package:mobile_client/src/features/order/presentation/order_list/order_list_bloc.dart'
    as _i21;
import 'package:mobile_client/src/features/waiters/app/use_cases/get_current_waiter_id_use_case.dart'
    as _i8;
import 'package:mobile_client/src/features/waiters/app/use_cases/get_current_waiter_use_case.dart'
    as _i23;
import 'package:mobile_client/src/features/waiters/app/use_cases/get_waiter_use_case.dart'
    as _i19;
import 'package:mobile_client/src/features/waiters/app/use_cases/get_waiters_use_case.dart'
    as _i20;
import 'package:mobile_client/src/features/waiters/app/use_cases/set_waiter_use_case.dart'
    as _i12;
import 'package:mobile_client/src/features/waiters/domain/repositories/waiter_repository.dart'
    as _i14;
import 'package:mobile_client/src/features/waiters/domain/services/waiter_auth_service.dart'
    as _i3;
import 'package:mobile_client/src/features/waiters/infrastructure/repositories/waiter_repository_impl.dart'
    as _i15;
import 'package:mobile_client/src/features/waiters/infrastructure/services/waiter_auth_service_impl.dart'
    as _i4;
import 'package:mobile_client/src/features/waiters/presentation/waiter_auth/waiter_auth_bloc.dart'
    as _i22;

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
    gh.lazySingleton<_i5.Dio>(
        () => registerModule.getDio(gh<_i3.WaiterAuthService>()));
    gh.lazySingleton<_i6.DishRepository>(
        () => _i7.DishRepositoryImpl(gh<_i5.Dio>()));
    gh.factory<_i8.GetCurrentWaiterIdUseCase>(
        () => _i8.GetCurrentWaiterIdUseCase(gh<_i3.WaiterAuthService>()));
    gh.factory<_i9.GetDishesUseCase>(
        () => _i9.GetDishesUseCase(gh<_i6.DishRepository>()));
    gh.factory<_i10.OrderRepository>(
        () => _i11.OrderRepositoryImpl(gh<_i5.Dio>()));
    gh.factory<_i12.SetWaiterUseCase>(
        () => _i12.SetWaiterUseCase(gh<_i3.WaiterAuthService>()));
    gh.factory<_i13.WaiterAuthGuard>(
        () => _i13.WaiterAuthGuard(gh<_i8.GetCurrentWaiterIdUseCase>()));
    gh.lazySingleton<_i14.WaiterRepository>(
        () => _i15.WaiterRepositoryImpl(gh<_i5.Dio>()));
    gh.factory<_i16.AddNewOrderBloc>(
        () => _i16.AddNewOrderBloc(gh<_i9.GetDishesUseCase>()));
    gh.lazySingleton<_i17.AppRouter>(
        () => _i17.AppRouter(gh<_i13.WaiterAuthGuard>()));
    gh.factory<_i18.GetOrdersUseCase>(
        () => _i18.GetOrdersUseCase(gh<_i10.OrderRepository>()));
    gh.factory<_i19.GetWaiterUseCase>(
        () => _i19.GetWaiterUseCase(gh<_i14.WaiterRepository>()));
    gh.factory<_i20.GetWaitersUseCase>(
        () => _i20.GetWaitersUseCase(gh<_i14.WaiterRepository>()));
    gh.factory<_i21.OrderListBloc>(
        () => _i21.OrderListBloc(gh<_i18.GetOrdersUseCase>()));
    gh.factory<_i22.WaiterAuthBloc>(() => _i22.WaiterAuthBloc(
          gh<_i12.SetWaiterUseCase>(),
          gh<_i20.GetWaitersUseCase>(),
        ));
    gh.factory<_i23.GetCurrentWaiterUseCase>(() => _i23.GetCurrentWaiterUseCase(
          gh<_i19.GetWaiterUseCase>(),
          gh<_i3.WaiterAuthService>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i24.RegisterModule {}
