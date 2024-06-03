import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:mobile_client/src/core/common/extensions/string.dart';
import 'package:mobile_client/src/features/waiters/domain/services/waiter_auth_service.dart';
import 'package:mobile_client/src/shared/constants.dart';
import 'get_it.config.dart';


@module
abstract class RegisterModule {

  @singleton
  Dio getDio(WaiterAuthService waiterAuth) => Dio(BaseOptions(
    baseUrl: baseApiUrl,
  ))..interceptors.add(QueuedInterceptorsWrapper(
    onRequest: (options, handler) {
      options.headers['waiter-id'] = waiterAuth.waiterId;
      handler.next(options);
    },
  ));

}

@InjectableInit()
Future<GetIt> configureDependencies() => GetIt.instance.init();