// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderItem {
  int get id => throw _privateConstructorUsedError;
  Dish get dish => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  Waiter get waiter => throw _privateConstructorUsedError;
  int get orderId => throw _privateConstructorUsedError;
  OrderItemState get state => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderItemCopyWith<OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) then) =
      _$OrderItemCopyWithImpl<$Res, OrderItem>;
  @useResult
  $Res call(
      {int id,
      Dish dish,
      int amount,
      Waiter waiter,
      int orderId,
      OrderItemState state});

  $DishCopyWith<$Res> get dish;
  $WaiterCopyWith<$Res> get waiter;
}

/// @nodoc
class _$OrderItemCopyWithImpl<$Res, $Val extends OrderItem>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dish = null,
    Object? amount = null,
    Object? waiter = null,
    Object? orderId = null,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dish: null == dish
          ? _value.dish
          : dish // ignore: cast_nullable_to_non_nullable
              as Dish,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      waiter: null == waiter
          ? _value.waiter
          : waiter // ignore: cast_nullable_to_non_nullable
              as Waiter,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as OrderItemState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DishCopyWith<$Res> get dish {
    return $DishCopyWith<$Res>(_value.dish, (value) {
      return _then(_value.copyWith(dish: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WaiterCopyWith<$Res> get waiter {
    return $WaiterCopyWith<$Res>(_value.waiter, (value) {
      return _then(_value.copyWith(waiter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderItemImplCopyWith<$Res>
    implements $OrderItemCopyWith<$Res> {
  factory _$$OrderItemImplCopyWith(
          _$OrderItemImpl value, $Res Function(_$OrderItemImpl) then) =
      __$$OrderItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Dish dish,
      int amount,
      Waiter waiter,
      int orderId,
      OrderItemState state});

  @override
  $DishCopyWith<$Res> get dish;
  @override
  $WaiterCopyWith<$Res> get waiter;
}

/// @nodoc
class __$$OrderItemImplCopyWithImpl<$Res>
    extends _$OrderItemCopyWithImpl<$Res, _$OrderItemImpl>
    implements _$$OrderItemImplCopyWith<$Res> {
  __$$OrderItemImplCopyWithImpl(
      _$OrderItemImpl _value, $Res Function(_$OrderItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dish = null,
    Object? amount = null,
    Object? waiter = null,
    Object? orderId = null,
    Object? state = null,
  }) {
    return _then(_$OrderItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dish: null == dish
          ? _value.dish
          : dish // ignore: cast_nullable_to_non_nullable
              as Dish,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      waiter: null == waiter
          ? _value.waiter
          : waiter // ignore: cast_nullable_to_non_nullable
              as Waiter,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as OrderItemState,
    ));
  }
}

/// @nodoc

class _$OrderItemImpl implements _OrderItem {
  _$OrderItemImpl(
      {required this.id,
      required this.dish,
      this.amount = 0,
      required this.waiter,
      required this.orderId,
      this.state = OrderItemState.preparing});

  @override
  final int id;
  @override
  final Dish dish;
  @override
  @JsonKey()
  final int amount;
  @override
  final Waiter waiter;
  @override
  final int orderId;
  @override
  @JsonKey()
  final OrderItemState state;

  @override
  String toString() {
    return 'OrderItem(id: $id, dish: $dish, amount: $amount, waiter: $waiter, orderId: $orderId, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dish, dish) || other.dish == dish) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.waiter, waiter) || other.waiter == waiter) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, dish, amount, waiter, orderId, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      __$$OrderItemImplCopyWithImpl<_$OrderItemImpl>(this, _$identity);
}

abstract class _OrderItem implements OrderItem {
  factory _OrderItem(
      {required final int id,
      required final Dish dish,
      final int amount,
      required final Waiter waiter,
      required final int orderId,
      final OrderItemState state}) = _$OrderItemImpl;

  @override
  int get id;
  @override
  Dish get dish;
  @override
  int get amount;
  @override
  Waiter get waiter;
  @override
  int get orderId;
  @override
  OrderItemState get state;
  @override
  @JsonKey(ignore: true)
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
