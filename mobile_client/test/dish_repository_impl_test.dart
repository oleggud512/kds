import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_client/src/core/common/logger.dart';
import 'package:mobile_client/src/features/menu/domain/entities/dish.dart';
import 'package:mobile_client/src/features/menu/infrastructure/repositories/dish_repository_impl.dart';

import 'test_dio_client.dart';

void main() {

  final i = DishRepositoryImpl(testDio);
  group('test DishRepositoryImpl', () { 
    test('test getDishes()', () async {
      final res = await i.getDishes();
      res.map((right) {
        glogger.i(right);
        expect(right, isA<List<Dish>>());
      });
    });
  });
}