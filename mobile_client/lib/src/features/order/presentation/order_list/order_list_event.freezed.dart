// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<MyOrder> orders) ordersArrived,
    required TResult Function(OrderListWaiterFilter waiterFilter)
        updateWaiterFilter,
    required TResult Function(OrderListStateFilter stateFilter)
        updateStateFilter,
    required TResult Function(OrderListTimeFilter timeFilter) updateTimeFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<MyOrder> orders)? ordersArrived,
    TResult? Function(OrderListWaiterFilter waiterFilter)? updateWaiterFilter,
    TResult? Function(OrderListStateFilter stateFilter)? updateStateFilter,
    TResult? Function(OrderListTimeFilter timeFilter)? updateTimeFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<MyOrder> orders)? ordersArrived,
    TResult Function(OrderListWaiterFilter waiterFilter)? updateWaiterFilter,
    TResult Function(OrderListStateFilter stateFilter)? updateStateFilter,
    TResult Function(OrderListTimeFilter timeFilter)? updateTimeFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderListLoadEvent value) load,
    required TResult Function(OrderListOrdersArrivedEvent value) ordersArrived,
    required TResult Function(OrderListUpdateWaiterFilterEvent value)
        updateWaiterFilter,
    required TResult Function(OrderListUpdateStateFilterEvent value)
        updateStateFilter,
    required TResult Function(OrderListUpdateTimeFilterEvent value)
        updateTimeFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderListLoadEvent value)? load,
    TResult? Function(OrderListOrdersArrivedEvent value)? ordersArrived,
    TResult? Function(OrderListUpdateWaiterFilterEvent value)?
        updateWaiterFilter,
    TResult? Function(OrderListUpdateStateFilterEvent value)? updateStateFilter,
    TResult? Function(OrderListUpdateTimeFilterEvent value)? updateTimeFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderListLoadEvent value)? load,
    TResult Function(OrderListOrdersArrivedEvent value)? ordersArrived,
    TResult Function(OrderListUpdateWaiterFilterEvent value)?
        updateWaiterFilter,
    TResult Function(OrderListUpdateStateFilterEvent value)? updateStateFilter,
    TResult Function(OrderListUpdateTimeFilterEvent value)? updateTimeFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderListEventCopyWith<$Res> {
  factory $OrderListEventCopyWith(
          OrderListEvent value, $Res Function(OrderListEvent) then) =
      _$OrderListEventCopyWithImpl<$Res, OrderListEvent>;
}

/// @nodoc
class _$OrderListEventCopyWithImpl<$Res, $Val extends OrderListEvent>
    implements $OrderListEventCopyWith<$Res> {
  _$OrderListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OrderListLoadEventImplCopyWith<$Res> {
  factory _$$OrderListLoadEventImplCopyWith(_$OrderListLoadEventImpl value,
          $Res Function(_$OrderListLoadEventImpl) then) =
      __$$OrderListLoadEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderListLoadEventImplCopyWithImpl<$Res>
    extends _$OrderListEventCopyWithImpl<$Res, _$OrderListLoadEventImpl>
    implements _$$OrderListLoadEventImplCopyWith<$Res> {
  __$$OrderListLoadEventImplCopyWithImpl(_$OrderListLoadEventImpl _value,
      $Res Function(_$OrderListLoadEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderListLoadEventImpl implements OrderListLoadEvent {
  _$OrderListLoadEventImpl();

  @override
  String toString() {
    return 'OrderListEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderListLoadEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<MyOrder> orders) ordersArrived,
    required TResult Function(OrderListWaiterFilter waiterFilter)
        updateWaiterFilter,
    required TResult Function(OrderListStateFilter stateFilter)
        updateStateFilter,
    required TResult Function(OrderListTimeFilter timeFilter) updateTimeFilter,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<MyOrder> orders)? ordersArrived,
    TResult? Function(OrderListWaiterFilter waiterFilter)? updateWaiterFilter,
    TResult? Function(OrderListStateFilter stateFilter)? updateStateFilter,
    TResult? Function(OrderListTimeFilter timeFilter)? updateTimeFilter,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<MyOrder> orders)? ordersArrived,
    TResult Function(OrderListWaiterFilter waiterFilter)? updateWaiterFilter,
    TResult Function(OrderListStateFilter stateFilter)? updateStateFilter,
    TResult Function(OrderListTimeFilter timeFilter)? updateTimeFilter,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderListLoadEvent value) load,
    required TResult Function(OrderListOrdersArrivedEvent value) ordersArrived,
    required TResult Function(OrderListUpdateWaiterFilterEvent value)
        updateWaiterFilter,
    required TResult Function(OrderListUpdateStateFilterEvent value)
        updateStateFilter,
    required TResult Function(OrderListUpdateTimeFilterEvent value)
        updateTimeFilter,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderListLoadEvent value)? load,
    TResult? Function(OrderListOrdersArrivedEvent value)? ordersArrived,
    TResult? Function(OrderListUpdateWaiterFilterEvent value)?
        updateWaiterFilter,
    TResult? Function(OrderListUpdateStateFilterEvent value)? updateStateFilter,
    TResult? Function(OrderListUpdateTimeFilterEvent value)? updateTimeFilter,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderListLoadEvent value)? load,
    TResult Function(OrderListOrdersArrivedEvent value)? ordersArrived,
    TResult Function(OrderListUpdateWaiterFilterEvent value)?
        updateWaiterFilter,
    TResult Function(OrderListUpdateStateFilterEvent value)? updateStateFilter,
    TResult Function(OrderListUpdateTimeFilterEvent value)? updateTimeFilter,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class OrderListLoadEvent implements OrderListEvent {
  factory OrderListLoadEvent() = _$OrderListLoadEventImpl;
}

/// @nodoc
abstract class _$$OrderListOrdersArrivedEventImplCopyWith<$Res> {
  factory _$$OrderListOrdersArrivedEventImplCopyWith(
          _$OrderListOrdersArrivedEventImpl value,
          $Res Function(_$OrderListOrdersArrivedEventImpl) then) =
      __$$OrderListOrdersArrivedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MyOrder> orders});
}

/// @nodoc
class __$$OrderListOrdersArrivedEventImplCopyWithImpl<$Res>
    extends _$OrderListEventCopyWithImpl<$Res,
        _$OrderListOrdersArrivedEventImpl>
    implements _$$OrderListOrdersArrivedEventImplCopyWith<$Res> {
  __$$OrderListOrdersArrivedEventImplCopyWithImpl(
      _$OrderListOrdersArrivedEventImpl _value,
      $Res Function(_$OrderListOrdersArrivedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$OrderListOrdersArrivedEventImpl(
      null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<MyOrder>,
    ));
  }
}

/// @nodoc

class _$OrderListOrdersArrivedEventImpl implements OrderListOrdersArrivedEvent {
  _$OrderListOrdersArrivedEventImpl(final List<MyOrder> orders)
      : _orders = orders;

  final List<MyOrder> _orders;
  @override
  List<MyOrder> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'OrderListEvent.ordersArrived(orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderListOrdersArrivedEventImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderListOrdersArrivedEventImplCopyWith<_$OrderListOrdersArrivedEventImpl>
      get copyWith => __$$OrderListOrdersArrivedEventImplCopyWithImpl<
          _$OrderListOrdersArrivedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<MyOrder> orders) ordersArrived,
    required TResult Function(OrderListWaiterFilter waiterFilter)
        updateWaiterFilter,
    required TResult Function(OrderListStateFilter stateFilter)
        updateStateFilter,
    required TResult Function(OrderListTimeFilter timeFilter) updateTimeFilter,
  }) {
    return ordersArrived(orders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<MyOrder> orders)? ordersArrived,
    TResult? Function(OrderListWaiterFilter waiterFilter)? updateWaiterFilter,
    TResult? Function(OrderListStateFilter stateFilter)? updateStateFilter,
    TResult? Function(OrderListTimeFilter timeFilter)? updateTimeFilter,
  }) {
    return ordersArrived?.call(orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<MyOrder> orders)? ordersArrived,
    TResult Function(OrderListWaiterFilter waiterFilter)? updateWaiterFilter,
    TResult Function(OrderListStateFilter stateFilter)? updateStateFilter,
    TResult Function(OrderListTimeFilter timeFilter)? updateTimeFilter,
    required TResult orElse(),
  }) {
    if (ordersArrived != null) {
      return ordersArrived(orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderListLoadEvent value) load,
    required TResult Function(OrderListOrdersArrivedEvent value) ordersArrived,
    required TResult Function(OrderListUpdateWaiterFilterEvent value)
        updateWaiterFilter,
    required TResult Function(OrderListUpdateStateFilterEvent value)
        updateStateFilter,
    required TResult Function(OrderListUpdateTimeFilterEvent value)
        updateTimeFilter,
  }) {
    return ordersArrived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderListLoadEvent value)? load,
    TResult? Function(OrderListOrdersArrivedEvent value)? ordersArrived,
    TResult? Function(OrderListUpdateWaiterFilterEvent value)?
        updateWaiterFilter,
    TResult? Function(OrderListUpdateStateFilterEvent value)? updateStateFilter,
    TResult? Function(OrderListUpdateTimeFilterEvent value)? updateTimeFilter,
  }) {
    return ordersArrived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderListLoadEvent value)? load,
    TResult Function(OrderListOrdersArrivedEvent value)? ordersArrived,
    TResult Function(OrderListUpdateWaiterFilterEvent value)?
        updateWaiterFilter,
    TResult Function(OrderListUpdateStateFilterEvent value)? updateStateFilter,
    TResult Function(OrderListUpdateTimeFilterEvent value)? updateTimeFilter,
    required TResult orElse(),
  }) {
    if (ordersArrived != null) {
      return ordersArrived(this);
    }
    return orElse();
  }
}

abstract class OrderListOrdersArrivedEvent implements OrderListEvent {
  factory OrderListOrdersArrivedEvent(final List<MyOrder> orders) =
      _$OrderListOrdersArrivedEventImpl;

  List<MyOrder> get orders;
  @JsonKey(ignore: true)
  _$$OrderListOrdersArrivedEventImplCopyWith<_$OrderListOrdersArrivedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderListUpdateWaiterFilterEventImplCopyWith<$Res> {
  factory _$$OrderListUpdateWaiterFilterEventImplCopyWith(
          _$OrderListUpdateWaiterFilterEventImpl value,
          $Res Function(_$OrderListUpdateWaiterFilterEventImpl) then) =
      __$$OrderListUpdateWaiterFilterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderListWaiterFilter waiterFilter});
}

/// @nodoc
class __$$OrderListUpdateWaiterFilterEventImplCopyWithImpl<$Res>
    extends _$OrderListEventCopyWithImpl<$Res,
        _$OrderListUpdateWaiterFilterEventImpl>
    implements _$$OrderListUpdateWaiterFilterEventImplCopyWith<$Res> {
  __$$OrderListUpdateWaiterFilterEventImplCopyWithImpl(
      _$OrderListUpdateWaiterFilterEventImpl _value,
      $Res Function(_$OrderListUpdateWaiterFilterEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waiterFilter = null,
  }) {
    return _then(_$OrderListUpdateWaiterFilterEventImpl(
      null == waiterFilter
          ? _value.waiterFilter
          : waiterFilter // ignore: cast_nullable_to_non_nullable
              as OrderListWaiterFilter,
    ));
  }
}

/// @nodoc

class _$OrderListUpdateWaiterFilterEventImpl
    implements OrderListUpdateWaiterFilterEvent {
  _$OrderListUpdateWaiterFilterEventImpl(this.waiterFilter);

  @override
  final OrderListWaiterFilter waiterFilter;

  @override
  String toString() {
    return 'OrderListEvent.updateWaiterFilter(waiterFilter: $waiterFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderListUpdateWaiterFilterEventImpl &&
            (identical(other.waiterFilter, waiterFilter) ||
                other.waiterFilter == waiterFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, waiterFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderListUpdateWaiterFilterEventImplCopyWith<
          _$OrderListUpdateWaiterFilterEventImpl>
      get copyWith => __$$OrderListUpdateWaiterFilterEventImplCopyWithImpl<
          _$OrderListUpdateWaiterFilterEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<MyOrder> orders) ordersArrived,
    required TResult Function(OrderListWaiterFilter waiterFilter)
        updateWaiterFilter,
    required TResult Function(OrderListStateFilter stateFilter)
        updateStateFilter,
    required TResult Function(OrderListTimeFilter timeFilter) updateTimeFilter,
  }) {
    return updateWaiterFilter(waiterFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<MyOrder> orders)? ordersArrived,
    TResult? Function(OrderListWaiterFilter waiterFilter)? updateWaiterFilter,
    TResult? Function(OrderListStateFilter stateFilter)? updateStateFilter,
    TResult? Function(OrderListTimeFilter timeFilter)? updateTimeFilter,
  }) {
    return updateWaiterFilter?.call(waiterFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<MyOrder> orders)? ordersArrived,
    TResult Function(OrderListWaiterFilter waiterFilter)? updateWaiterFilter,
    TResult Function(OrderListStateFilter stateFilter)? updateStateFilter,
    TResult Function(OrderListTimeFilter timeFilter)? updateTimeFilter,
    required TResult orElse(),
  }) {
    if (updateWaiterFilter != null) {
      return updateWaiterFilter(waiterFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderListLoadEvent value) load,
    required TResult Function(OrderListOrdersArrivedEvent value) ordersArrived,
    required TResult Function(OrderListUpdateWaiterFilterEvent value)
        updateWaiterFilter,
    required TResult Function(OrderListUpdateStateFilterEvent value)
        updateStateFilter,
    required TResult Function(OrderListUpdateTimeFilterEvent value)
        updateTimeFilter,
  }) {
    return updateWaiterFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderListLoadEvent value)? load,
    TResult? Function(OrderListOrdersArrivedEvent value)? ordersArrived,
    TResult? Function(OrderListUpdateWaiterFilterEvent value)?
        updateWaiterFilter,
    TResult? Function(OrderListUpdateStateFilterEvent value)? updateStateFilter,
    TResult? Function(OrderListUpdateTimeFilterEvent value)? updateTimeFilter,
  }) {
    return updateWaiterFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderListLoadEvent value)? load,
    TResult Function(OrderListOrdersArrivedEvent value)? ordersArrived,
    TResult Function(OrderListUpdateWaiterFilterEvent value)?
        updateWaiterFilter,
    TResult Function(OrderListUpdateStateFilterEvent value)? updateStateFilter,
    TResult Function(OrderListUpdateTimeFilterEvent value)? updateTimeFilter,
    required TResult orElse(),
  }) {
    if (updateWaiterFilter != null) {
      return updateWaiterFilter(this);
    }
    return orElse();
  }
}

abstract class OrderListUpdateWaiterFilterEvent implements OrderListEvent {
  factory OrderListUpdateWaiterFilterEvent(
          final OrderListWaiterFilter waiterFilter) =
      _$OrderListUpdateWaiterFilterEventImpl;

  OrderListWaiterFilter get waiterFilter;
  @JsonKey(ignore: true)
  _$$OrderListUpdateWaiterFilterEventImplCopyWith<
          _$OrderListUpdateWaiterFilterEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderListUpdateStateFilterEventImplCopyWith<$Res> {
  factory _$$OrderListUpdateStateFilterEventImplCopyWith(
          _$OrderListUpdateStateFilterEventImpl value,
          $Res Function(_$OrderListUpdateStateFilterEventImpl) then) =
      __$$OrderListUpdateStateFilterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderListStateFilter stateFilter});
}

/// @nodoc
class __$$OrderListUpdateStateFilterEventImplCopyWithImpl<$Res>
    extends _$OrderListEventCopyWithImpl<$Res,
        _$OrderListUpdateStateFilterEventImpl>
    implements _$$OrderListUpdateStateFilterEventImplCopyWith<$Res> {
  __$$OrderListUpdateStateFilterEventImplCopyWithImpl(
      _$OrderListUpdateStateFilterEventImpl _value,
      $Res Function(_$OrderListUpdateStateFilterEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateFilter = null,
  }) {
    return _then(_$OrderListUpdateStateFilterEventImpl(
      null == stateFilter
          ? _value.stateFilter
          : stateFilter // ignore: cast_nullable_to_non_nullable
              as OrderListStateFilter,
    ));
  }
}

/// @nodoc

class _$OrderListUpdateStateFilterEventImpl
    implements OrderListUpdateStateFilterEvent {
  _$OrderListUpdateStateFilterEventImpl(this.stateFilter);

  @override
  final OrderListStateFilter stateFilter;

  @override
  String toString() {
    return 'OrderListEvent.updateStateFilter(stateFilter: $stateFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderListUpdateStateFilterEventImpl &&
            (identical(other.stateFilter, stateFilter) ||
                other.stateFilter == stateFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderListUpdateStateFilterEventImplCopyWith<
          _$OrderListUpdateStateFilterEventImpl>
      get copyWith => __$$OrderListUpdateStateFilterEventImplCopyWithImpl<
          _$OrderListUpdateStateFilterEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<MyOrder> orders) ordersArrived,
    required TResult Function(OrderListWaiterFilter waiterFilter)
        updateWaiterFilter,
    required TResult Function(OrderListStateFilter stateFilter)
        updateStateFilter,
    required TResult Function(OrderListTimeFilter timeFilter) updateTimeFilter,
  }) {
    return updateStateFilter(stateFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<MyOrder> orders)? ordersArrived,
    TResult? Function(OrderListWaiterFilter waiterFilter)? updateWaiterFilter,
    TResult? Function(OrderListStateFilter stateFilter)? updateStateFilter,
    TResult? Function(OrderListTimeFilter timeFilter)? updateTimeFilter,
  }) {
    return updateStateFilter?.call(stateFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<MyOrder> orders)? ordersArrived,
    TResult Function(OrderListWaiterFilter waiterFilter)? updateWaiterFilter,
    TResult Function(OrderListStateFilter stateFilter)? updateStateFilter,
    TResult Function(OrderListTimeFilter timeFilter)? updateTimeFilter,
    required TResult orElse(),
  }) {
    if (updateStateFilter != null) {
      return updateStateFilter(stateFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderListLoadEvent value) load,
    required TResult Function(OrderListOrdersArrivedEvent value) ordersArrived,
    required TResult Function(OrderListUpdateWaiterFilterEvent value)
        updateWaiterFilter,
    required TResult Function(OrderListUpdateStateFilterEvent value)
        updateStateFilter,
    required TResult Function(OrderListUpdateTimeFilterEvent value)
        updateTimeFilter,
  }) {
    return updateStateFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderListLoadEvent value)? load,
    TResult? Function(OrderListOrdersArrivedEvent value)? ordersArrived,
    TResult? Function(OrderListUpdateWaiterFilterEvent value)?
        updateWaiterFilter,
    TResult? Function(OrderListUpdateStateFilterEvent value)? updateStateFilter,
    TResult? Function(OrderListUpdateTimeFilterEvent value)? updateTimeFilter,
  }) {
    return updateStateFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderListLoadEvent value)? load,
    TResult Function(OrderListOrdersArrivedEvent value)? ordersArrived,
    TResult Function(OrderListUpdateWaiterFilterEvent value)?
        updateWaiterFilter,
    TResult Function(OrderListUpdateStateFilterEvent value)? updateStateFilter,
    TResult Function(OrderListUpdateTimeFilterEvent value)? updateTimeFilter,
    required TResult orElse(),
  }) {
    if (updateStateFilter != null) {
      return updateStateFilter(this);
    }
    return orElse();
  }
}

abstract class OrderListUpdateStateFilterEvent implements OrderListEvent {
  factory OrderListUpdateStateFilterEvent(
          final OrderListStateFilter stateFilter) =
      _$OrderListUpdateStateFilterEventImpl;

  OrderListStateFilter get stateFilter;
  @JsonKey(ignore: true)
  _$$OrderListUpdateStateFilterEventImplCopyWith<
          _$OrderListUpdateStateFilterEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderListUpdateTimeFilterEventImplCopyWith<$Res> {
  factory _$$OrderListUpdateTimeFilterEventImplCopyWith(
          _$OrderListUpdateTimeFilterEventImpl value,
          $Res Function(_$OrderListUpdateTimeFilterEventImpl) then) =
      __$$OrderListUpdateTimeFilterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderListTimeFilter timeFilter});
}

/// @nodoc
class __$$OrderListUpdateTimeFilterEventImplCopyWithImpl<$Res>
    extends _$OrderListEventCopyWithImpl<$Res,
        _$OrderListUpdateTimeFilterEventImpl>
    implements _$$OrderListUpdateTimeFilterEventImplCopyWith<$Res> {
  __$$OrderListUpdateTimeFilterEventImplCopyWithImpl(
      _$OrderListUpdateTimeFilterEventImpl _value,
      $Res Function(_$OrderListUpdateTimeFilterEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeFilter = null,
  }) {
    return _then(_$OrderListUpdateTimeFilterEventImpl(
      null == timeFilter
          ? _value.timeFilter
          : timeFilter // ignore: cast_nullable_to_non_nullable
              as OrderListTimeFilter,
    ));
  }
}

/// @nodoc

class _$OrderListUpdateTimeFilterEventImpl
    implements OrderListUpdateTimeFilterEvent {
  _$OrderListUpdateTimeFilterEventImpl(this.timeFilter);

  @override
  final OrderListTimeFilter timeFilter;

  @override
  String toString() {
    return 'OrderListEvent.updateTimeFilter(timeFilter: $timeFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderListUpdateTimeFilterEventImpl &&
            (identical(other.timeFilter, timeFilter) ||
                other.timeFilter == timeFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderListUpdateTimeFilterEventImplCopyWith<
          _$OrderListUpdateTimeFilterEventImpl>
      get copyWith => __$$OrderListUpdateTimeFilterEventImplCopyWithImpl<
          _$OrderListUpdateTimeFilterEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<MyOrder> orders) ordersArrived,
    required TResult Function(OrderListWaiterFilter waiterFilter)
        updateWaiterFilter,
    required TResult Function(OrderListStateFilter stateFilter)
        updateStateFilter,
    required TResult Function(OrderListTimeFilter timeFilter) updateTimeFilter,
  }) {
    return updateTimeFilter(timeFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<MyOrder> orders)? ordersArrived,
    TResult? Function(OrderListWaiterFilter waiterFilter)? updateWaiterFilter,
    TResult? Function(OrderListStateFilter stateFilter)? updateStateFilter,
    TResult? Function(OrderListTimeFilter timeFilter)? updateTimeFilter,
  }) {
    return updateTimeFilter?.call(timeFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<MyOrder> orders)? ordersArrived,
    TResult Function(OrderListWaiterFilter waiterFilter)? updateWaiterFilter,
    TResult Function(OrderListStateFilter stateFilter)? updateStateFilter,
    TResult Function(OrderListTimeFilter timeFilter)? updateTimeFilter,
    required TResult orElse(),
  }) {
    if (updateTimeFilter != null) {
      return updateTimeFilter(timeFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderListLoadEvent value) load,
    required TResult Function(OrderListOrdersArrivedEvent value) ordersArrived,
    required TResult Function(OrderListUpdateWaiterFilterEvent value)
        updateWaiterFilter,
    required TResult Function(OrderListUpdateStateFilterEvent value)
        updateStateFilter,
    required TResult Function(OrderListUpdateTimeFilterEvent value)
        updateTimeFilter,
  }) {
    return updateTimeFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderListLoadEvent value)? load,
    TResult? Function(OrderListOrdersArrivedEvent value)? ordersArrived,
    TResult? Function(OrderListUpdateWaiterFilterEvent value)?
        updateWaiterFilter,
    TResult? Function(OrderListUpdateStateFilterEvent value)? updateStateFilter,
    TResult? Function(OrderListUpdateTimeFilterEvent value)? updateTimeFilter,
  }) {
    return updateTimeFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderListLoadEvent value)? load,
    TResult Function(OrderListOrdersArrivedEvent value)? ordersArrived,
    TResult Function(OrderListUpdateWaiterFilterEvent value)?
        updateWaiterFilter,
    TResult Function(OrderListUpdateStateFilterEvent value)? updateStateFilter,
    TResult Function(OrderListUpdateTimeFilterEvent value)? updateTimeFilter,
    required TResult orElse(),
  }) {
    if (updateTimeFilter != null) {
      return updateTimeFilter(this);
    }
    return orElse();
  }
}

abstract class OrderListUpdateTimeFilterEvent implements OrderListEvent {
  factory OrderListUpdateTimeFilterEvent(final OrderListTimeFilter timeFilter) =
      _$OrderListUpdateTimeFilterEventImpl;

  OrderListTimeFilter get timeFilter;
  @JsonKey(ignore: true)
  _$$OrderListUpdateTimeFilterEventImplCopyWith<
          _$OrderListUpdateTimeFilterEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
