import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish.freezed.dart';

@freezed
class Dish with _$Dish {
  factory Dish({
    required int id,
    required String name,
  }) = _Dish;
}