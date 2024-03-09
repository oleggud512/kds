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
import 'package:mobile_client/src/core/di/get_it.dart' as _i18;
import 'package:mobile_client/src/core/presentation/router/guards/waiter_auth_guard.dart'
    as _i15;
import 'package:mobile_client/src/core/presentation/router/router.dart' as _i16;
import 'package:mobile_client/src/features/menu/domain/repositories/dish_repository.dart'
    as _i4;
import 'package:mobile_client/src/features/menu/infrastructure/repositories/dish_repository_impl.dart'
    as _i5;
import 'package:mobile_client/src/features/waiters/app/use_cases/get_current_waiter_id_use_case.dart'
    as _i10;
import 'package:mobile_client/src/features/waiters/app/use_cases/get_current_waiter_use_case.dart'
    as _i17;
import 'package:mobile_client/src/features/waiters/app/use_cases/get_waiter_use_case.dart'
    as _i11;
import 'package:mobile_client/src/features/waiters/app/use_cases/get_waiters_use_case.dart'
    as _i12;
import 'package:mobile_client/src/features/waiters/app/use_cases/set_waiter_use_case.dart'
    as _i13;
import 'package:mobile_client/src/features/waiters/domain/repositories/waiter_repository.dart'
    as _i8;
import 'package:mobile_client/src/features/waiters/domain/services/waiter_auth_service.dart'
    as _i6;
import 'package:mobile_client/src/features/waiters/infrastructure/repositories/waiter_repository_impl.dart'
    as _i9;
import 'package:mobile_client/src/features/waiters/infrastructure/services/waiter_auth_service_impl.dart'
    as _i7;
import 'package:mobile_client/src/features/waiters/presentation/waiter_auth/waiter_auth_bloc.dart'
    as _i14;

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
    gh.factory<_i10.GetCurrentWaiterIdUseCase>(
        () => _i10.GetCurrentWaiterIdUseCase(gh<_i6.WaiterAuthService>()));
    gh.factory<_i11.GetWaiterUseCase>(
        () => _i11.GetWaiterUseCase(gh<_i8.WaiterRepository>()));
    gh.factory<_i12.GetWaitersUseCase>(
        () => _i12.GetWaitersUseCase(gh<_i8.WaiterRepository>()));
    gh.factory<_i13.SetWaiterUseCase>(
        () => _i13.SetWaiterUseCase(gh<_i6.WaiterAuthService>()));
    gh.factory<_i14.WaiterAuthBloc>(() => _i14.WaiterAuthBloc(
          gh<_i13.SetWaiterUseCase>(),
          gh<_i12.GetWaitersUseCase>(),
        ));
    gh.factory<_i15.WaiterAuthGuard>(
        () => _i15.WaiterAuthGuard(gh<_i10.GetCurrentWaiterIdUseCase>()));
    gh.lazySingleton<_i16.AppRouter>(
        () => _i16.AppRouter(gh<_i15.WaiterAuthGuard>()));
    gh.factory<_i17.GetCurrentWaiterUseCase>(() => _i17.GetCurrentWaiterUseCase(
          gh<_i11.GetWaiterUseCase>(),
          gh<_i6.WaiterAuthService>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i18.RegisterModule {}
