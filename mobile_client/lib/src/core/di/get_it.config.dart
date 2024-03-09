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
import 'package:mobile_client/src/core/di/get_it.dart' as _i15;
import 'package:mobile_client/src/core/presentation/router/guards/waiter_auth_guard.dart'
    as _i13;
import 'package:mobile_client/src/core/presentation/router/router.dart' as _i14;
import 'package:mobile_client/src/features/menu/domain/repositories/dish_repository.dart'
    as _i4;
import 'package:mobile_client/src/features/menu/infrastructure/repositories/dish_repository_impl.dart'
    as _i5;
import 'package:mobile_client/src/features/waiters/app/use_cases/get_current_waiter_use_case.dart'
    as _i10;
import 'package:mobile_client/src/features/waiters/app/use_cases/get_waiters_use_case.dart'
    as _i6;
import 'package:mobile_client/src/features/waiters/app/use_cases/set_waiter_use_case.dart'
    as _i11;
import 'package:mobile_client/src/features/waiters/domain/repositories/waiter_repository.dart'
    as _i7;
import 'package:mobile_client/src/features/waiters/domain/services/waiter_auth_service.dart'
    as _i8;
import 'package:mobile_client/src/features/waiters/infrastructure/services/waiter_auth_service.dart'
    as _i9;
import 'package:mobile_client/src/features/waiters/presentation/waiter_auth/waiter_auth_bloc.dart'
    as _i12;

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
    gh.factory<_i6.GetWaitersUseCase>(
        () => _i6.GetWaitersUseCase(gh<_i7.WaiterRepository>()));
    await gh.lazySingletonAsync<_i8.WaiterAuthService>(
      () {
        final i = _i9.WaiterAuthServiceImpl();
        return i.load().then((_) => i);
      },
      preResolve: true,
    );
    gh.factory<_i10.GetCurrentWaiterUseCase>(
        () => _i10.GetCurrentWaiterUseCase(gh<_i8.WaiterAuthService>()));
    gh.factory<_i11.SetWaiterUseCase>(
        () => _i11.SetWaiterUseCase(gh<_i8.WaiterAuthService>()));
    gh.factory<_i12.WaiterAuthBloc>(() => _i12.WaiterAuthBloc(
          gh<_i11.SetWaiterUseCase>(),
          gh<_i6.GetWaitersUseCase>(),
        ));
    gh.factory<_i13.WaiterAuthGuard>(
        () => _i13.WaiterAuthGuard(gh<_i10.GetCurrentWaiterUseCase>()));
    gh.lazySingleton<_i14.AppRouter>(
        () => _i14.AppRouter(gh<_i13.WaiterAuthGuard>()));
    return this;
  }
}

class _$RegisterModule extends _i15.RegisterModule {}
