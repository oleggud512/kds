// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:mobile_client/src/core/di/get_it.dart' as _i20;
import 'package:mobile_client/src/core/presentation/router/guards/waiter_auth_guard.dart'
    as _i17;
import 'package:mobile_client/src/core/presentation/router/router.dart' as _i18;
import 'package:mobile_client/src/features/menu/app/use_cases/get_dishes_use_case.dart'
    as _i6;
import 'package:mobile_client/src/features/menu/domain/repositories/dish_repository.dart'
    as _i4;
import 'package:mobile_client/src/features/menu/infrastructure/repositories/dish_repository_impl.dart'
    as _i5;
import 'package:mobile_client/src/features/order/presentation/add_new_order/add_new_order_bloc.dart'
    as _i11;
import 'package:mobile_client/src/features/waiters/app/use_cases/get_current_waiter_id_use_case.dart'
    as _i12;
import 'package:mobile_client/src/features/waiters/app/use_cases/get_current_waiter_use_case.dart'
    as _i19;
import 'package:mobile_client/src/features/waiters/app/use_cases/get_waiter_use_case.dart'
    as _i13;
import 'package:mobile_client/src/features/waiters/app/use_cases/get_waiters_use_case.dart'
    as _i14;
import 'package:mobile_client/src/features/waiters/app/use_cases/set_waiter_use_case.dart'
    as _i15;
import 'package:mobile_client/src/features/waiters/domain/repositories/waiter_repository.dart'
    as _i9;
import 'package:mobile_client/src/features/waiters/domain/services/waiter_auth_service.dart'
    as _i7;
import 'package:mobile_client/src/features/waiters/infrastructure/repositories/waiter_repository_impl.dart'
    as _i10;
import 'package:mobile_client/src/features/waiters/infrastructure/services/waiter_auth_service_impl.dart'
    as _i8;
import 'package:mobile_client/src/features/waiters/presentation/waiter_auth/waiter_auth_bloc.dart'
    as _i16;

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
    gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i4.DishRepository>(
        () => _i5.DishRepositoryImpl(gh<_i3.Dio>()));
    gh.factory<_i6.GetDishesUseCase>(
        () => _i6.GetDishesUseCase(gh<_i4.DishRepository>()));
    await gh.lazySingletonAsync<_i7.WaiterAuthService>(
      () {
        final i = _i8.WaiterAuthServiceImpl();
        return i.load().then((_) => i);
      },
      preResolve: true,
    );
    gh.lazySingleton<_i9.WaiterRepository>(
        () => _i10.WaiterRepositoryImpl(gh<_i3.Dio>()));
    gh.factory<_i11.AddNewOrderBloc>(
        () => _i11.AddNewOrderBloc(gh<_i6.GetDishesUseCase>()));
    gh.factory<_i12.GetCurrentWaiterIdUseCase>(
        () => _i12.GetCurrentWaiterIdUseCase(gh<_i7.WaiterAuthService>()));
    gh.factory<_i13.GetWaiterUseCase>(
        () => _i13.GetWaiterUseCase(gh<_i9.WaiterRepository>()));
    gh.factory<_i14.GetWaitersUseCase>(
        () => _i14.GetWaitersUseCase(gh<_i9.WaiterRepository>()));
    gh.factory<_i15.SetWaiterUseCase>(
        () => _i15.SetWaiterUseCase(gh<_i7.WaiterAuthService>()));
    gh.factory<_i16.WaiterAuthBloc>(() => _i16.WaiterAuthBloc(
          gh<_i15.SetWaiterUseCase>(),
          gh<_i14.GetWaitersUseCase>(),
        ));
    gh.factory<_i17.WaiterAuthGuard>(
        () => _i17.WaiterAuthGuard(gh<_i12.GetCurrentWaiterIdUseCase>()));
    gh.lazySingleton<_i18.AppRouter>(
        () => _i18.AppRouter(gh<_i17.WaiterAuthGuard>()));
    gh.factory<_i19.GetCurrentWaiterUseCase>(() => _i19.GetCurrentWaiterUseCase(
          gh<_i13.GetWaiterUseCase>(),
          gh<_i7.WaiterAuthService>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i20.RegisterModule {}
