import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish.g.dart';
part 'dish.freezed.dart';

@freezed
class Dish with _$Dish {
  factory Dish({
    required int id,
    required String name,
  }) = _Dish;

  factory Dish.fromJson(Map<String, dynamic> json) => _$DishFromJson(json);
}