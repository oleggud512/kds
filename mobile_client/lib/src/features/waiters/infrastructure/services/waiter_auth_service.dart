import 'package:injectable/injectable.dart';
import 'package:mobile_client/src/features/waiters/domain/services/waiter_auth_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: WaiterAuthService)
class WaiterAuthServiceImpl implements WaiterAuthService {


  static const String waiterIdKey = "currentWaiterId";

  @PostConstruct(preResolve: true)
  Future<void> load() async {
    final prefs = await SharedPreferences.getInstance();
    _waiterId = prefs.getInt(waiterIdKey);
  }

  int? _waiterId;

  @override
  int? get waiterId => _waiterId;

  @override
  Future<void> setWaiterId(int id) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(waiterIdKey, id);
  }


}