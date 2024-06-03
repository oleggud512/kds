// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderItemImpl _$$OrderItemImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemImpl(
      orderId: (json['orderId'] as num?)?.toInt() ?? 0,
      dishId: (json['dishId'] as num?)?.toInt() ?? 0,
      count: (json['count'] as num?)?.toInt() ?? 0,
      comment: json['comment'] as String? ?? "",
      state: $enumDecodeNullable(_$OrderItemStateEnumMap, json['state']) ??
          OrderItemState.cooking,
      order: json['order'] == null
          ? null
          : MyOrder.fromJson(json['order'] as Map<String, dynamic>),
      dish: Dish.fromJson(json['dish'] as Map<String, dynamic>),
    );

const _$OrderItemStateEnumMap = {
  OrderItemState.cooking: 'cooking',
  OrderItemState.ready: 'ready',
  OrderItemState.served: 'served',
};
