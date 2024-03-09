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
import 'package:mobile_client/src/core/di/get_it.dart' as _i16;
import 'package:mobile_client/src/core/presentation/router/guards/waiter_auth_guard.dart'
    as _i14;
import 'package:mobile_client/src/core/presentation/router/router.dart' as _i15;
import 'package:mobile_client/src/features/menu/domain/repositories/dish_repository.dart'
    as _i4;
import 'package:mobile_client/src/features/menu/infrastructure/repositories/dish_repository_impl.dart'
    as _i5;
import 'package:mobile_client/src/features/waiters/app/use_cases/get_current_waiter_use_case.dart'
    as _i10;
import 'package:mobile_client/src/features/waiters/app/use_cases/get_waiters_use_case.dart'
    as _i11;
import 'package:mobile_client/src/features/waiters/app/use_cases/set_waiter_use_case.dart'
    as _i12;
import 'package:mobile_client/src/features/waiters/domain/repositories/waiter_repository.dart'
    as _i8;
import 'package:mobile_client/src/features/waiters/domain/services/waiter_auth_service.dart'
    as _i6;
import 'package:mobile_client/src/features/waiters/infrastructure/repositories/waiter_repository_impl.dart'
    as _i9;
import 'package:mobile_client/src/features/waiters/infrastructure/services/waiter_auth_service_impl.dart'
    as _i7;
import 'package:mobile_client/src/features/waiters/presentation/waiter_auth/waiter_auth_bloc.dart'
    as _i13;

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
    await gh.lazySingletonAsync<_i6.WaiterAuthService>(
      () {
        final i = _i7.WaiterAuthServiceImpl();
        return i.load().then((_) => i);
      },
      preResolve: true,
    );
    gh.lazySingleton<_i8.WaiterRepository>(
        () => _i9.WaiterRepositoryImpl(gh<_i3.Dio>()));
    gh.factory<_i10.GetCurrentWaiterUseCase>(
        () => _i10.GetCurrentWaiterUseCase(gh<_i6.WaiterAuthService>()));
    gh.factory<_i11.GetWaitersUseCase>(
        () => _i11.GetWaitersUseCase(gh<_i8.WaiterRepository>()));
    gh.factory<_i12.SetWaiterUseCase>(
        () => _i12.SetWaiterUseCase(gh<_i6.WaiterAuthService>()));
    gh.factory<_i13.WaiterAuthBloc>(() => _i13.WaiterAuthBloc(
          gh<_i12.SetWaiterUseCase>(),
          gh<_i11.GetWaitersUseCase>(),
        ));
    gh.factory<_i14.WaiterAuthGuard>(
        () => _i14.WaiterAuthGuard(gh<_i10.GetCurrentWaiterUseCase>()));
    gh.lazySingleton<_i15.AppRouter>(
        () => _i15.AppRouter(gh<_i14.WaiterAuthGuard>()));
    return this;
  }
}

class _$RegisterModule extends _i16.RegisterModule {}
