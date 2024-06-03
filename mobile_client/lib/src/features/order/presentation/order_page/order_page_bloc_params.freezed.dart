// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_page_bloc_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderPageBlocParams {
  MyOrder get order => throw _privateConstructorUsedError;
  bool get listen => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderPageBlocParamsCopyWith<OrderPageBlocParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPageBlocParamsCopyWith<$Res> {
  factory $OrderPageBlocParamsCopyWith(
          OrderPageBlocParams value, $Res Function(OrderPageBlocParams) then) =
      _$OrderPageBlocParamsCopyWithImpl<$Res, OrderPageBlocParams>;
  @useResult
  $Res call({MyOrder order, bool listen});

  $MyOrderCopyWith<$Res> get order;
}

/// @nodoc
class _$OrderPageBlocParamsCopyWithImpl<$Res, $Val extends OrderPageBlocParams>
    implements $OrderPageBlocParamsCopyWith<$Res> {
  _$OrderPageBlocParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? listen = null,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as MyOrder,
      listen: null == listen
          ? _value.listen
          : listen // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$OrderPageBlocParamsImplCopyWith<$Res>
    implements $OrderPageBlocParamsCopyWith<$Res> {
  factory _$$OrderPageBlocParamsImplCopyWith(_$OrderPageBlocParamsImpl value,
          $Res Function(_$OrderPageBlocParamsImpl) then) =
      __$$OrderPageBlocParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MyOrder order, bool listen});

  @override
  $MyOrderCopyWith<$Res> get order;
}

/// @nodoc
class __$$OrderPageBlocParamsImplCopyWithImpl<$Res>
    extends _$OrderPageBlocParamsCopyWithImpl<$Res, _$OrderPageBlocParamsImpl>
    implements _$$OrderPageBlocParamsImplCopyWith<$Res> {
  __$$OrderPageBlocParamsImplCopyWithImpl(_$OrderPageBlocParamsImpl _value,
      $Res Function(_$OrderPageBlocParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? listen = null,
  }) {
    return _then(_$OrderPageBlocParamsImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as MyOrder,
      listen: null == listen
          ? _value.listen
          : listen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OrderPageBlocParamsImpl implements _OrderPageBlocParams {
  _$OrderPageBlocParamsImpl({required this.order, this.listen = false});

  @override
  final MyOrder order;
  @override
  @JsonKey()
  final bool listen;

  @override
  String toString() {
    return 'OrderPageBlocParams(order: $order, listen: $listen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPageBlocParamsImpl &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.listen, listen) || other.listen == listen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order, listen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPageBlocParamsImplCopyWith<_$OrderPageBlocParamsImpl> get copyWith =>
      __$$OrderPageBlocParamsImplCopyWithImpl<_$OrderPageBlocParamsImpl>(
          this, _$identity);
}

abstract class _OrderPageBlocParams implements OrderPageBlocParams {
  factory _OrderPageBlocParams(
      {required final MyOrder order,
      final bool listen}) = _$OrderPageBlocParamsImpl;

  @override
  MyOrder get order;
  @override
  bool get listen;
  @override
  @JsonKey(ignore: true)
  _$$OrderPageBlocParamsImplCopyWith<_$OrderPageBlocParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
