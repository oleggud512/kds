import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_client/src/core/common/logger.dart';
import 'package:mobile_client/src/features/waiters/infrastructure/repositories/waiter_repository_impl.dart';

import 'test_dio_client.dart';

void main() {

  final i = WaiterRepositoryImpl(testDio);

  group('test WaiterRepositoryImpl', () {

    test('test getWaiters()', () async {
      final res = await i.getWaiters();

      res.map((right) {
        glogger.i(right);
      });
      
    });

  });
}