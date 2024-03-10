// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_new_order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddNewOrderState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Dish> get dishes => throw _privateConstructorUsedError;
  List<OrderItem> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddNewOrderStateCopyWith<AddNewOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNewOrderStateCopyWith<$Res> {
  factory $AddNewOrderStateCopyWith(
          AddNewOrderState value, $Res Function(AddNewOrderState) then) =
      _$AddNewOrderStateCopyWithImpl<$Res, AddNewOrderState>;
  @useResult
  $Res call({bool isLoading, List<Dish> dishes, List<OrderItem> items});
}

/// @nodoc
class _$AddNewOrderStateCopyWithImpl<$Res, $Val extends AddNewOrderState>
    implements $AddNewOrderStateCopyWith<$Res> {
  _$AddNewOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? dishes = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      dishes: null == dishes
          ? _value.dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<Dish>,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditOrderStateImplCopyWith<$Res>
    implements $AddNewOrderStateCopyWith<$Res> {
  factory _$$EditOrderStateImplCopyWith(_$EditOrderStateImpl value,
          $Res Function(_$EditOrderStateImpl) then) =
      __$$EditOrderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<Dish> dishes, List<OrderItem> items});
}

/// @nodoc
class __$$EditOrderStateImplCopyWithImpl<$Res>
    extends _$AddNewOrderStateCopyWithImpl<$Res, _$EditOrderStateImpl>
    implements _$$EditOrderStateImplCopyWith<$Res> {
  __$$EditOrderStateImplCopyWithImpl(
      _$EditOrderStateImpl _value, $Res Function(_$EditOrderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? dishes = null,
    Object? items = null,
  }) {
    return _then(_$EditOrderStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      dishes: null == dishes
          ? _value._dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<Dish>,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
    ));
  }
}

/// @nodoc

class _$EditOrderStateImpl extends _EditOrderState {
  _$EditOrderStateImpl(
      {this.isLoading = false,
      final List<Dish> dishes = const [],
      final List<OrderItem> items = const []})
      : _dishes = dishes,
        _items = items,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  final List<Dish> _dishes;
  @override
  @JsonKey()
  List<Dish> get dishes {
    if (_dishes is EqualUnmodifiableListView) return _dishes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dishes);
  }

  final List<OrderItem> _items;
  @override
  @JsonKey()
  List<OrderItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'AddNewOrderState(isLoading: $isLoading, dishes: $dishes, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditOrderStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._dishes, _dishes) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_dishes),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditOrderStateImplCopyWith<_$EditOrderStateImpl> get copyWith =>
      __$$EditOrderStateImplCopyWithImpl<_$EditOrderStateImpl>(
          this, _$identity);
}

abstract class _EditOrderState extends AddNewOrderState {
  factory _EditOrderState(
      {final bool isLoading,
      final List<Dish> dishes,
      final List<OrderItem> items}) = _$EditOrderStateImpl;
  _EditOrderState._() : super._();

  @override
  bool get isLoading;
  @override
  List<Dish> get dishes;
  @override
  List<OrderItem> get items;
  @override
  @JsonKey(ignore: true)
  _$$EditOrderStateImplCopyWith<_$EditOrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
