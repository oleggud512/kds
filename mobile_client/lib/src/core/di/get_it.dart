import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:mobile_client/src/core/common/extensions/string.dart';
import 'package:mobile_client/src/features/waiters/domain/services/waiter_auth_service.dart';
import 'get_it.config.dart';


@module
abstract class RegisterModule {

  @lazySingleton
  Dio getDio(WaiterAuthService waiterAuth) => Dio(BaseOptions(
    baseUrl: "http://10.0.2.2:8000/".hardcoded,
  ))..interceptors.add(QueuedInterceptorsWrapper(
    onRequest: (options, handler) {
      options.headers['waiterId'] = waiterAuth.waiterId;
      handler.next(options);
    },
  ));

}

@InjectableInit()
Future<GetIt> configureDependencies() => GetIt.instance.init();