// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderPageState {
  MyOrder get order => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderPageStateCopyWith<OrderPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPageStateCopyWith<$Res> {
  factory $OrderPageStateCopyWith(
          OrderPageState value, $Res Function(OrderPageState) then) =
      _$OrderPageStateCopyWithImpl<$Res, OrderPageState>;
  @useResult
  $Res call({MyOrder order});

  $MyOrderCopyWith<$Res> get order;
}

/// @nodoc
class _$OrderPageStateCopyWithImpl<$Res, $Val extends OrderPageState>
    implements $OrderPageStateCopyWith<$Res> {
  _$OrderPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as MyOrder,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MyOrderCopyWith<$Res> get order {
    return $MyOrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderPageStateImplCopyWith<$Res>
    implements $OrderPageStateCopyWith<$Res> {
  factory _$$OrderPageStateImplCopyWith(_$OrderPageStateImpl value,
          $Res Function(_$OrderPageStateImpl) then) =
      __$$OrderPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MyOrder order});

  @override
  $MyOrderCopyWith<$Res> get order;
}

/// @nodoc
class __$$OrderPageStateImplCopyWithImpl<$Res>
    extends _$OrderPageStateCopyWithImpl<$Res, _$OrderPageStateImpl>
    implements _$$OrderPageStateImplCopyWith<$Res> {
  __$$OrderPageStateImplCopyWithImpl(
      _$OrderPageStateImpl _value, $Res Function(_$OrderPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$OrderPageStateImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as MyOrder,
    ));
  }
}

/// @nodoc

class _$OrderPageStateImpl implements _OrderPageState {
  _$OrderPageStateImpl({required this.order});

  @override
  final MyOrder order;

  @override
  String toString() {
    return 'OrderPageState(order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPageStateImpl &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPageStateImplCopyWith<_$OrderPageStateImpl> get copyWith =>
      __$$OrderPageStateImplCopyWithImpl<_$OrderPageStateImpl>(
          this, _$identity);
}

abstract class _OrderPageState implements OrderPageState {
  factory _OrderPageState({required final MyOrder order}) =
      _$OrderPageStateImpl;

  @override
  MyOrder get order;
  @override
  @JsonKey(ignore: true)
  _$$OrderPageStateImplCopyWith<_$OrderPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
