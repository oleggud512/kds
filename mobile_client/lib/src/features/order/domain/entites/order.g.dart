// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyOrderImpl _$$MyOrderImplFromJson(Map<String, dynamic> json) =>
    _$MyOrderImpl(
      id: (json['id'] as num).toInt(),
      waiter: Waiter.fromJson(json['waiter'] as Map<String, dynamic>),
      state: $enumDecodeNullable(_$OrderStateEnumMap, json['state']) ??
          OrderState.inProgress,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

const _$OrderStateEnumMap = {
  OrderState.inProgress: 'inProgress',
  OrderState.closed: 'closed',
};
