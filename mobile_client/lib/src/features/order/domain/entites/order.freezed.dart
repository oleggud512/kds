// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyOrder _$MyOrderFromJson(Map<String, dynamic> json) {
  return _MyOrder.fromJson(json);
}

/// @nodoc
mixin _$MyOrder {
  int get id => throw _privateConstructorUsedError;
  Waiter get waiter => throw _privateConstructorUsedError;
  OrderState get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_items')
  List<OrderItem> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyOrderCopyWith<MyOrder> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrderCopyWith<$Res> {
  factory $MyOrderCopyWith(MyOrder value, $Res Function(MyOrder) then) =
      _$MyOrderCopyWithImpl<$Res, MyOrder>;
  @useResult
  $Res call(
      {int id,
      Waiter waiter,
      OrderState state,
      @JsonKey(name: 'order_items') List<OrderItem> items});

  $WaiterCopyWith<$Res> get waiter;
}

/// @nodoc
class _$MyOrderCopyWithImpl<$Res, $Val extends MyOrder>
    implements $MyOrderCopyWith<$Res> {
  _$MyOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? waiter = null,
    Object? state = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      waiter: null == waiter
          ? _value.waiter
          : waiter // ignore: cast_nullable_to_non_nullable
              as Waiter,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as OrderState,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
    ) as $Val);
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
abstract class _$$MyOrderImplCopyWith<$Res> implements $MyOrderCopyWith<$Res> {
  factory _$$MyOrderImplCopyWith(
          _$MyOrderImpl value, $Res Function(_$MyOrderImpl) then) =
      __$$MyOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Waiter waiter,
      OrderState state,
      @JsonKey(name: 'order_items') List<OrderItem> items});

  @override
  $WaiterCopyWith<$Res> get waiter;
}

/// @nodoc
class __$$MyOrderImplCopyWithImpl<$Res>
    extends _$MyOrderCopyWithImpl<$Res, _$MyOrderImpl>
    implements _$$MyOrderImplCopyWith<$Res> {
  __$$MyOrderImplCopyWithImpl(
      _$MyOrderImpl _value, $Res Function(_$MyOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? waiter = null,
    Object? state = null,
    Object? items = null,
  }) {
    return _then(_$MyOrderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      waiter: null == waiter
          ? _value.waiter
          : waiter // ignore: cast_nullable_to_non_nullable
              as Waiter,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as OrderState,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$MyOrderImpl implements _MyOrder {
  _$MyOrderImpl(
      {required this.id,
      required this.waiter,
      this.state = OrderState.inProgress,
      @JsonKey(name: 'order_items') final List<OrderItem> items = const []})
      : _items = items;

  factory _$MyOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyOrderImplFromJson(json);

  @override
  final int id;
  @override
  final Waiter waiter;
  @override
  @JsonKey()
  final OrderState state;
  final List<OrderItem> _items;
  @override
  @JsonKey(name: 'order_items')
  List<OrderItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'MyOrder(id: $id, waiter: $waiter, state: $state, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.waiter, waiter) || other.waiter == waiter) &&
            (identical(other.state, state) || other.state == state) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, waiter, state,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrderImplCopyWith<_$MyOrderImpl> get copyWith =>
      __$$MyOrderImplCopyWithImpl<_$MyOrderImpl>(this, _$identity);
}

abstract class _MyOrder implements MyOrder {
  factory _MyOrder(
          {required final int id,
          required final Waiter waiter,
          final OrderState state,
          @JsonKey(name: 'order_items') final List<OrderItem> items}) =
      _$MyOrderImpl;

  factory _MyOrder.fromJson(Map<String, dynamic> json) = _$MyOrderImpl.fromJson;

  @override
  int get id;
  @override
  Waiter get waiter;
  @override
  OrderState get state;
  @override
  @JsonKey(name: 'order_items')
  List<OrderItem> get items;
  @override
  @JsonKey(ignore: true)
  _$$MyOrderImplCopyWith<_$MyOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
