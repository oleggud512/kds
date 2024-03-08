import 'package:either_dart/either.dart';
import 'package:mobile_client/src/core/domain/exceptions.dart';
import 'package:mobile_client/src/features/menu/domain/entities/dish.dart';

abstract interface class DishRepository {
  Either<AppException, List<Dish>> getDishes({ String? category });
}