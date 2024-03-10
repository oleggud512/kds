import 'package:get_it/get_it.dart';

T inject<T extends Object>([dynamic parameter]) {
  return GetIt.instance.get(param1: parameter);
}