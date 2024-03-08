import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:mobile_client/src/core/common/extensions/string.dart';
import 'get_it.config.dart';


@module
abstract class RegisterModule {

  @lazySingleton
  Dio get dio => Dio(BaseOptions(
    baseUrl: "http://localhost:8000/".hardcoded
  ));
  
}

@InjectableInit()
GetIt configureDependencies() => GetIt.instance.init();