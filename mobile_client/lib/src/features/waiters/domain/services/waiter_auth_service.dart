abstract interface class WaiterAuthService {

  int? get waiterId;

  Future<void> setWaiterId(int id);

}