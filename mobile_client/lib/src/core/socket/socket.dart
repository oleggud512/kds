import 'dart:async';

import 'package:mobile_client/src/features/waiters/domain/services/waiter_auth_service.dart';
import 'package:mobile_client/src/shared/constants.dart';
import 'package:socket_io_client/socket_io_client.dart';

import 'package:injectable/injectable.dart';


@Injectable()
class GetSocketUseCase {
  final WaiterAuthService auth;

  GetSocketUseCase(this.auth);
  
  Socket call({String? namespace, Map<dynamic, dynamic>? queryParams}) {
    var options = OptionBuilder()
      .setTransports([ 'websocket' ]);
    
    options = options.setAuthFn((authFn) async {
      if (auth.waiterId == null) return authFn({});
      return authFn({
        "waiterId": auth.waiterId!
      });
    });
    
    if (queryParams != null) options = options.setQuery(queryParams);

    return io("$baseSocketUrl${namespace ?? ""}", options.build());
  }
}