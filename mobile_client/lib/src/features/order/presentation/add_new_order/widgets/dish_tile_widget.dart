import 'package:flutter/material.dart';
import 'package:mobile_client/src/core/common/constants/sizes.dart';
import 'package:mobile_client/src/features/menu/domain/entities/dish.dart';

class DishTileWidget extends StatelessWidget {
  const DishTileWidget({
    super.key,
    this.onTap,
    required this.dish,
    this.trailing,
  });

  final Dish dish;
  final void Function()? onTap; 
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(dish.name),
      subtitle: Text(dish.category),
      trailing: trailing ?? shrink
    );
  }
}