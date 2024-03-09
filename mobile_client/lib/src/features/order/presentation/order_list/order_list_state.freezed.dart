// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderListState {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderListStateCopyWith<OrderListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderListStateCopyWith<$Res> {
  factory $OrderListStateCopyWith(
          OrderListState value, $Res Function(OrderListState) then) =
      _$OrderListStateCopyWithImpl<$Res, OrderListState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$OrderListStateCopyWithImpl<$Res, $Val extends OrderListState>
    implements $OrderListStateCopyWith<$Res> {
  _$OrderListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderListStateImplCopyWith<$Res>
    implements $OrderListStateCopyWith<$Res> {
  factory _$$OrderListStateImplCopyWith(_$OrderListStateImpl value,
          $Res Function(_$OrderListStateImpl) then) =
      __$$OrderListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$OrderListStateImplCopyWithImpl<$Res>
    extends _$OrderListStateCopyWithImpl<$Res, _$OrderListStateImpl>
    implements _$$OrderListStateImplCopyWith<$Res> {
  __$$OrderListStateImplCopyWithImpl(
      _$OrderListStateImpl _value, $Res Function(_$OrderListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$OrderListStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OrderListStateImpl implements _OrderListState {
  _$OrderListStateImpl({this.isLoading = false});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'OrderListState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderListStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderListStateImplCopyWith<_$OrderListStateImpl> get copyWith =>
      __$$OrderListStateImplCopyWithImpl<_$OrderListStateImpl>(
          this, _$identity);
}

abstract class _OrderListState implements OrderListState {
  factory _OrderListState({final bool isLoading}) = _$OrderListStateImpl;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$OrderListStateImplCopyWith<_$OrderListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
