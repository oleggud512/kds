// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DishImpl _$$DishImplFromJson(Map<String, dynamic> json) => _$DishImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      category: json['category'] as String? ?? "",
    );

Map<String, dynamic> _$$DishImplToJson(_$DishImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
    };
