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
  int get id => throw _privateConstructorUsedError;
  Dish get dish => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
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
      int count,
      String comment,
      int orderId,
      OrderItemState state});

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
    Object? id = null,
    Object? dish = null,
    Object? count = null,
    Object? comment = null,
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
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
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
      int count,
      String comment,
      int orderId,
      OrderItemState state});

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
    Object? id = null,
    Object? dish = null,
    Object? count = null,
    Object? comment = null,
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
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
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
@JsonSerializable(createToJson: false)
class _$OrderItemImpl extends _OrderItem {
  _$OrderItemImpl(
      {this.id = 0,
      required this.dish,
      this.count = 0,
      this.comment = "",
      this.orderId = 0,
      this.state = OrderItemState.cooking})
      : super._();

  factory _$OrderItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  final Dish dish;
  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final String comment;
  @override
  @JsonKey()
  final int orderId;
  @override
  @JsonKey()
  final OrderItemState state;

  @override
  String toString() {
    return 'OrderItem(id: $id, dish: $dish, count: $count, comment: $comment, orderId: $orderId, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dish, dish) || other.dish == dish) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, dish, count, comment, orderId, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      __$$OrderItemImplCopyWithImpl<_$OrderItemImpl>(this, _$identity);
}

abstract class _OrderItem extends OrderItem {
  factory _OrderItem(
      {final int id,
      required final Dish dish,
      final int count,
      final String comment,
      final int orderId,
      final OrderItemState state}) = _$OrderItemImpl;
  _OrderItem._() : super._();

  factory _OrderItem.fromJson(Map<String, dynamic> json) =
      _$OrderItemImpl.fromJson;

  @override
  int get id;
  @override
  Dish get dish;
  @override
  int get count;
  @override
  String get comment;
  @override
  int get orderId;
  @override
  OrderItemState get state;
  @override
  @JsonKey(ignore: true)
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
