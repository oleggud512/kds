import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_client/src/core/domain/exceptions.dart';
import 'package:mobile_client/src/features/menu/domain/entities/dish.dart';
import 'package:mobile_client/src/features/menu/domain/repositories/dish_repository.dart';


@Injectable()
class GetDishesUseCase {
  final DishRepository repo;

  GetDishesUseCase(this.repo);
  
  Future<Either<AppException, List<Dish>>> call([String? category]) async {
    final res = await repo.getDishes(category: category);
    return res;
  }
}