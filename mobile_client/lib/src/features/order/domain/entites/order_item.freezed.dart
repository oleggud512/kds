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

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) {
  return _OrderItem.fromJson(json);
}

/// @nodoc
mixin _$OrderItem {
  int get orderId => throw _privateConstructorUsedError;
  int get dishId => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  OrderItemState get state => throw _privateConstructorUsedError;
  MyOrder? get order => throw _privateConstructorUsedError;
  Dish get dish => throw _privateConstructorUsedError;

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
      {int orderId,
      int dishId,
      int count,
      String comment,
      OrderItemState state,
      MyOrder? order,
      Dish dish});

  $MyOrderCopyWith<$Res>? get order;
  $DishCopyWith<$Res> get dish;
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
    Object? orderId = null,
    Object? dishId = null,
    Object? count = null,
    Object? comment = null,
    Object? state = null,
    Object? order = freezed,
    Object? dish = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      dishId: null == dishId
          ? _value.dishId
          : dishId // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as OrderItemState,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as MyOrder?,
      dish: null == dish
          ? _value.dish
          : dish // ignore: cast_nullable_to_non_nullable
              as Dish,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MyOrderCopyWith<$Res>? get order {
    if (_value.order == null) {
      return null;
    }

    return $MyOrderCopyWith<$Res>(_value.order!, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DishCopyWith<$Res> get dish {
    return $DishCopyWith<$Res>(_value.dish, (value) {
      return _then(_value.copyWith(dish: value) as $Val);
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
      {int orderId,
      int dishId,
      int count,
      String comment,
      OrderItemState state,
      MyOrder? order,
      Dish dish});

  @override
  $MyOrderCopyWith<$Res>? get order;
  @override
  $DishCopyWith<$Res> get dish;
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
    Object? orderId = null,
    Object? dishId = null,
    Object? count = null,
    Object? comment = null,
    Object? state = null,
    Object? order = freezed,
    Object? dish = null,
  }) {
    return _then(_$OrderItemImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      dishId: null == dishId
          ? _value.dishId
          : dishId // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as OrderItemState,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as MyOrder?,
      dish: null == dish
          ? _value.dish
          : dish // ignore: cast_nullable_to_non_nullable
              as Dish,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$OrderItemImpl extends _OrderItem {
  _$OrderItemImpl(
      {this.orderId = 0,
      this.dishId = 0,
      this.count = 0,
      this.comment = "",
      this.state = OrderItemState.cooking,
      this.order,
      required this.dish})
      : super._();

  factory _$OrderItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemImplFromJson(json);

  @override
  @JsonKey()
  final int orderId;
  @override
  @JsonKey()
  final int dishId;
  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final String comment;
  @override
  @JsonKey()
  final OrderItemState state;
  @override
  final MyOrder? order;
  @override
  final Dish dish;

  @override
  String toString() {
    return 'OrderItem(orderId: $orderId, dishId: $dishId, count: $count, comment: $comment, state: $state, order: $order, dish: $dish)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.dishId, dishId) || other.dishId == dishId) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.dish, dish) || other.dish == dish));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, orderId, dishId, count, comment, state, order, dish);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      __$$OrderItemImplCopyWithImpl<_$OrderItemImpl>(this, _$identity);
}

abstract class _OrderItem extends OrderItem {
  factory _OrderItem(
      {final int orderId,
      final int dishId,
      final int count,
      final String comment,
      final OrderItemState state,
      final MyOrder? order,
      required final Dish dish}) = _$OrderItemImpl;
  _OrderItem._() : super._();

  factory _OrderItem.fromJson(Map<String, dynamic> json) =
      _$OrderItemImpl.fromJson;

  @override
  int get orderId;
  @override
  int get dishId;
  @override
  int get count;
  @override
  String get comment;
  @override
  OrderItemState get state;
  @override
  MyOrder? get order;
  @override
  Dish get dish;
  @override
  @JsonKey(ignore: true)
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
