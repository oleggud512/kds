// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderItemImpl _$$OrderItemImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemImpl(
      id: json['id'] as int? ?? 0,
      dish: Dish.fromJson(json['dish'] as Map<String, dynamic>),
      count: json['count'] as int? ?? 0,
      comment: json['comment'] as String? ?? "",
      orderId: json['orderId'] as int? ?? 0,
      state: $enumDecodeNullable(_$OrderItemStateEnumMap, json['state']) ??
          OrderItemState.cooking,
    );

const _$OrderItemStateEnumMap = {
  OrderItemState.cooking: 'cooking',
  OrderItemState.ready: 'ready',
  OrderItemState.served: 'served',
};
