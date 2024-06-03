// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_page_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(MyOrder order) orderArrived,
    required TResult Function(int orderId, int dishId, OrderItemState state,
            void Function()? onOrderClose)
        itemStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(MyOrder order)? orderArrived,
    TResult? Function(int orderId, int dishId, OrderItemState state,
            void Function()? onOrderClose)?
        itemStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(MyOrder order)? orderArrived,
    TResult Function(int orderId, int dishId, OrderItemState state,
            void Function()? onOrderClose)?
        itemStateChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OrderPageEvent value) $default, {
    required TResult Function(OrderPageOrderArrivedEvent value) orderArrived,
    required TResult Function(OrderPageItemStateChangedEvent value)
        itemStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_OrderPageEvent value)? $default, {
    TResult? Function(OrderPageOrderArrivedEvent value)? orderArrived,
    TResult? Function(OrderPageItemStateChangedEvent value)? itemStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OrderPageEvent value)? $default, {
    TResult Function(OrderPageOrderArrivedEvent value)? orderArrived,
    TResult Function(OrderPageItemStateChangedEvent value)? itemStateChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPageEventCopyWith<$Res> {
  factory $OrderPageEventCopyWith(
          OrderPageEvent value, $Res Function(OrderPageEvent) then) =
      _$OrderPageEventCopyWithImpl<$Res, OrderPageEvent>;
}

/// @nodoc
class _$OrderPageEventCopyWithImpl<$Res, $Val extends OrderPageEvent>
    implements $OrderPageEventCopyWith<$Res> {
  _$OrderPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OrderPageEventImplCopyWith<$Res> {
  factory _$$OrderPageEventImplCopyWith(_$OrderPageEventImpl value,
          $Res Function(_$OrderPageEventImpl) then) =
      __$$OrderPageEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderPageEventImplCopyWithImpl<$Res>
    extends _$OrderPageEventCopyWithImpl<$Res, _$OrderPageEventImpl>
    implements _$$OrderPageEventImplCopyWith<$Res> {
  __$$OrderPageEventImplCopyWithImpl(
      _$OrderPageEventImpl _value, $Res Function(_$OrderPageEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderPageEventImpl implements _OrderPageEvent {
  _$OrderPageEventImpl();

  @override
  String toString() {
    return 'OrderPageEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderPageEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(MyOrder order) orderArrived,
    required TResult Function(int orderId, int dishId, OrderItemState state,
            void Function()? onOrderClose)
        itemStateChanged,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(MyOrder order)? orderArrived,
    TResult? Function(int orderId, int dishId, OrderItemState state,
            void Function()? onOrderClose)?
        itemStateChanged,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(MyOrder order)? orderArrived,
    TResult Function(int orderId, int dishId, OrderItemState state,
            void Function()? onOrderClose)?
        itemStateChanged,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OrderPageEvent value) $default, {
    required TResult Function(OrderPageOrderArrivedEvent value) orderArrived,
    required TResult Function(OrderPageItemStateChangedEvent value)
        itemStateChanged,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_OrderPageEvent value)? $default, {
    TResult? Function(OrderPageOrderArrivedEvent value)? orderArrived,
    TResult? Function(OrderPageItemStateChangedEvent value)? itemStateChanged,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OrderPageEvent value)? $default, {
    TResult Function(OrderPageOrderArrivedEvent value)? orderArrived,
    TResult Function(OrderPageItemStateChangedEvent value)? itemStateChanged,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _OrderPageEvent implements OrderPageEvent {
  factory _OrderPageEvent() = _$OrderPageEventImpl;
}

/// @nodoc
abstract class _$$OrderPageOrderArrivedEventImplCopyWith<$Res> {
  factory _$$OrderPageOrderArrivedEventImplCopyWith(
          _$OrderPageOrderArrivedEventImpl value,
          $Res Function(_$OrderPageOrderArrivedEventImpl) then) =
      __$$OrderPageOrderArrivedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MyOrder order});

  $MyOrderCopyWith<$Res> get order;
}

/// @nodoc
class __$$OrderPageOrderArrivedEventImplCopyWithImpl<$Res>
    extends _$OrderPageEventCopyWithImpl<$Res, _$OrderPageOrderArrivedEventImpl>
    implements _$$OrderPageOrderArrivedEventImplCopyWith<$Res> {
  __$$OrderPageOrderArrivedEventImplCopyWithImpl(
      _$OrderPageOrderArrivedEventImpl _value,
      $Res Function(_$OrderPageOrderArrivedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$OrderPageOrderArrivedEventImpl(
      null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as MyOrder,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MyOrderCopyWith<$Res> get order {
    return $MyOrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }
}

/// @nodoc

class _$OrderPageOrderArrivedEventImpl implements OrderPageOrderArrivedEvent {
  _$OrderPageOrderArrivedEventImpl(this.order);

  @override
  final MyOrder order;

  @override
  String toString() {
    return 'OrderPageEvent.orderArrived(order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPageOrderArrivedEventImpl &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPageOrderArrivedEventImplCopyWith<_$OrderPageOrderArrivedEventImpl>
      get copyWith => __$$OrderPageOrderArrivedEventImplCopyWithImpl<
          _$OrderPageOrderArrivedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(MyOrder order) orderArrived,
    required TResult Function(int orderId, int dishId, OrderItemState state,
            void Function()? onOrderClose)
        itemStateChanged,
  }) {
    return orderArrived(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(MyOrder order)? orderArrived,
    TResult? Function(int orderId, int dishId, OrderItemState state,
            void Function()? onOrderClose)?
        itemStateChanged,
  }) {
    return orderArrived?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(MyOrder order)? orderArrived,
    TResult Function(int orderId, int dishId, OrderItemState state,
            void Function()? onOrderClose)?
        itemStateChanged,
    required TResult orElse(),
  }) {
    if (orderArrived != null) {
      return orderArrived(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OrderPageEvent value) $default, {
    required TResult Function(OrderPageOrderArrivedEvent value) orderArrived,
    required TResult Function(OrderPageItemStateChangedEvent value)
        itemStateChanged,
  }) {
    return orderArrived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_OrderPageEvent value)? $default, {
    TResult? Function(OrderPageOrderArrivedEvent value)? orderArrived,
    TResult? Function(OrderPageItemStateChangedEvent value)? itemStateChanged,
  }) {
    return orderArrived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OrderPageEvent value)? $default, {
    TResult Function(OrderPageOrderArrivedEvent value)? orderArrived,
    TResult Function(OrderPageItemStateChangedEvent value)? itemStateChanged,
    required TResult orElse(),
  }) {
    if (orderArrived != null) {
      return orderArrived(this);
    }
    return orElse();
  }
}

abstract class OrderPageOrderArrivedEvent implements OrderPageEvent {
  factory OrderPageOrderArrivedEvent(final MyOrder order) =
      _$OrderPageOrderArrivedEventImpl;

  MyOrder get order;
  @JsonKey(ignore: true)
  _$$OrderPageOrderArrivedEventImplCopyWith<_$OrderPageOrderArrivedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderPageItemStateChangedEventImplCopyWith<$Res> {
  factory _$$OrderPageItemStateChangedEventImplCopyWith(
          _$OrderPageItemStateChangedEventImpl value,
          $Res Function(_$OrderPageItemStateChangedEventImpl) then) =
      __$$OrderPageItemStateChangedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int orderId,
      int dishId,
      OrderItemState state,
      void Function()? onOrderClose});
}

/// @nodoc
class __$$OrderPageItemStateChangedEventImplCopyWithImpl<$Res>
    extends _$OrderPageEventCopyWithImpl<$Res,
        _$OrderPageItemStateChangedEventImpl>
    implements _$$OrderPageItemStateChangedEventImplCopyWith<$Res> {
  __$$OrderPageItemStateChangedEventImplCopyWithImpl(
      _$OrderPageItemStateChangedEventImpl _value,
      $Res Function(_$OrderPageItemStateChangedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? dishId = null,
    Object? state = null,
    Object? onOrderClose = freezed,
  }) {
    return _then(_$OrderPageItemStateChangedEventImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      dishId: null == dishId
          ? _value.dishId
          : dishId // ignore: cast_nullable_to_non_nullable
              as int,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as OrderItemState,
      onOrderClose: freezed == onOrderClose
          ? _value.onOrderClose
          : onOrderClose // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ));
  }
}

/// @nodoc

class _$OrderPageItemStateChangedEventImpl
    implements OrderPageItemStateChangedEvent {
  _$OrderPageItemStateChangedEventImpl(
      {required this.orderId,
      required this.dishId,
      required this.state,
      this.onOrderClose});

  @override
  final int orderId;
  @override
  final int dishId;
  @override
  final OrderItemState state;
  @override
  final void Function()? onOrderClose;

  @override
  String toString() {
    return 'OrderPageEvent.itemStateChanged(orderId: $orderId, dishId: $dishId, state: $state, onOrderClose: $onOrderClose)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPageItemStateChangedEventImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.dishId, dishId) || other.dishId == dishId) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.onOrderClose, onOrderClose) ||
                other.onOrderClose == onOrderClose));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, orderId, dishId, state, onOrderClose);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPageItemStateChangedEventImplCopyWith<
          _$OrderPageItemStateChangedEventImpl>
      get copyWith => __$$OrderPageItemStateChangedEventImplCopyWithImpl<
          _$OrderPageItemStateChangedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(MyOrder order) orderArrived,
    required TResult Function(int orderId, int dishId, OrderItemState state,
            void Function()? onOrderClose)
        itemStateChanged,
  }) {
    return itemStateChanged(orderId, dishId, state, onOrderClose);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(MyOrder order)? orderArrived,
    TResult? Function(int orderId, int dishId, OrderItemState state,
            void Function()? onOrderClose)?
        itemStateChanged,
  }) {
    return itemStateChanged?.call(orderId, dishId, state, onOrderClose);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(MyOrder order)? orderArrived,
    TResult Function(int orderId, int dishId, OrderItemState state,
            void Function()? onOrderClose)?
        itemStateChanged,
    required TResult orElse(),
  }) {
    if (itemStateChanged != null) {
      return itemStateChanged(orderId, dishId, state, onOrderClose);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OrderPageEvent value) $default, {
    required TResult Function(OrderPageOrderArrivedEvent value) orderArrived,
    required TResult Function(OrderPageItemStateChangedEvent value)
        itemStateChanged,
  }) {
    return itemStateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_OrderPageEvent value)? $default, {
    TResult? Function(OrderPageOrderArrivedEvent value)? orderArrived,
    TResult? Function(OrderPageItemStateChangedEvent value)? itemStateChanged,
  }) {
    return itemStateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OrderPageEvent value)? $default, {
    TResult Function(OrderPageOrderArrivedEvent value)? orderArrived,
    TResult Function(OrderPageItemStateChangedEvent value)? itemStateChanged,
    required TResult orElse(),
  }) {
    if (itemStateChanged != null) {
      return itemStateChanged(this);
    }
    return orElse();
  }
}

abstract class OrderPageItemStateChangedEvent implements OrderPageEvent {
  factory OrderPageItemStateChangedEvent(
          {required final int orderId,
          required final int dishId,
          required final OrderItemState state,
          final void Function()? onOrderClose}) =
      _$OrderPageItemStateChangedEventImpl;

  int get orderId;
  int get dishId;
  OrderItemState get state;
  void Function()? get onOrderClose;
  @JsonKey(ignore: true)
  _$$OrderPageItemStateChangedEventImplCopyWith<
          _$OrderPageItemStateChangedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
