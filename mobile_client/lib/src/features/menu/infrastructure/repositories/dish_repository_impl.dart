import 'package:dio/dio.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_client/src/core/common/logger.dart';
import 'package:mobile_client/src/core/domain/exceptions.dart';
import 'package:mobile_client/src/features/menu/domain/entities/dish.dart';
import 'package:mobile_client/src/features/menu/domain/repositories/dish_repository.dart';


@LazySingleton(as: DishRepository)
class DishRepositoryImpl implements DishRepository {
  final Dio dio;

  DishRepositoryImpl(this.dio);

  @override
  Future<Either<AppException, List<Dish>>> getDishes({String? category}) async {
    try {
      final res = await dio.get('dishes');
      return Right(List.from(res.data)
        .map((d) => Dish.fromJson(d))
        .toList());
    } catch (e) {
      glogger.e(e);
      return Left(AppException(e.toString()));
    }
  }

}