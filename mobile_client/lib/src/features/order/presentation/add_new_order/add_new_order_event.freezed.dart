// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_new_order_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddNewOrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Dish dish, int? count, String? comment)
        dishSelected,
    required TResult Function(OrderItem item) deleteItem,
    required TResult Function(OrderItem item, int newCount) countChanged,
    required TResult Function(OrderItem item, String newComment) commentChanged,
    required TResult Function(void Function() onSuccess) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Dish dish, int? count, String? comment)? dishSelected,
    TResult? Function(OrderItem item)? deleteItem,
    TResult? Function(OrderItem item, int newCount)? countChanged,
    TResult? Function(OrderItem item, String newComment)? commentChanged,
    TResult? Function(void Function() onSuccess)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Dish dish, int? count, String? comment)? dishSelected,
    TResult Function(OrderItem item)? deleteItem,
    TResult Function(OrderItem item, int newCount)? countChanged,
    TResult Function(OrderItem item, String newComment)? commentChanged,
    TResult Function(void Function() onSuccess)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddNewOrderLoadEvent value) load,
    required TResult Function(AddNewOrderDishSelectedEvent value) dishSelected,
    required TResult Function(AddNewOrderDeleteItemEvent value) deleteItem,
    required TResult Function(AddNewOrderCountChangedEvent value) countChanged,
    required TResult Function(AddNewOrderCommentChangedEvent value)
        commentChanged,
    required TResult Function(AddNewOrderSubmitEvent value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddNewOrderLoadEvent value)? load,
    TResult? Function(AddNewOrderDishSelectedEvent value)? dishSelected,
    TResult? Function(AddNewOrderDeleteItemEvent value)? deleteItem,
    TResult? Function(AddNewOrderCountChangedEvent value)? countChanged,
    TResult? Function(AddNewOrderCommentChangedEvent value)? commentChanged,
    TResult? Function(AddNewOrderSubmitEvent value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddNewOrderLoadEvent value)? load,
    TResult Function(AddNewOrderDishSelectedEvent value)? dishSelected,
    TResult Function(AddNewOrderDeleteItemEvent value)? deleteItem,
    TResult Function(AddNewOrderCountChangedEvent value)? countChanged,
    TResult Function(AddNewOrderCommentChangedEvent value)? commentChanged,
    TResult Function(AddNewOrderSubmitEvent value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNewOrderEventCopyWith<$Res> {
  factory $AddNewOrderEventCopyWith(
          AddNewOrderEvent value, $Res Function(AddNewOrderEvent) then) =
      _$AddNewOrderEventCopyWithImpl<$Res, AddNewOrderEvent>;
}

/// @nodoc
class _$AddNewOrderEventCopyWithImpl<$Res, $Val extends AddNewOrderEvent>
    implements $AddNewOrderEventCopyWith<$Res> {
  _$AddNewOrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddNewOrderLoadEventImplCopyWith<$Res> {
  factory _$$AddNewOrderLoadEventImplCopyWith(_$AddNewOrderLoadEventImpl value,
          $Res Function(_$AddNewOrderLoadEventImpl) then) =
      __$$AddNewOrderLoadEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddNewOrderLoadEventImplCopyWithImpl<$Res>
    extends _$AddNewOrderEventCopyWithImpl<$Res, _$AddNewOrderLoadEventImpl>
    implements _$$AddNewOrderLoadEventImplCopyWith<$Res> {
  __$$AddNewOrderLoadEventImplCopyWithImpl(_$AddNewOrderLoadEventImpl _value,
      $Res Function(_$AddNewOrderLoadEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddNewOrderLoadEventImpl implements AddNewOrderLoadEvent {
  _$AddNewOrderLoadEventImpl();

  @override
  String toString() {
    return 'AddNewOrderEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewOrderLoadEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Dish dish, int? count, String? comment)
        dishSelected,
    required TResult Function(OrderItem item) deleteItem,
    required TResult Function(OrderItem item, int newCount) countChanged,
    required TResult Function(OrderItem item, String newComment) commentChanged,
    required TResult Function(void Function() onSuccess) submit,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Dish dish, int? count, String? comment)? dishSelected,
    TResult? Function(OrderItem item)? deleteItem,
    TResult? Function(OrderItem item, int newCount)? countChanged,
    TResult? Function(OrderItem item, String newComment)? commentChanged,
    TResult? Function(void Function() onSuccess)? submit,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Dish dish, int? count, String? comment)? dishSelected,
    TResult Function(OrderItem item)? deleteItem,
    TResult Function(OrderItem item, int newCount)? countChanged,
    TResult Function(OrderItem item, String newComment)? commentChanged,
    TResult Function(void Function() onSuccess)? submit,
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
    required TResult Function(AddNewOrderLoadEvent value) load,
    required TResult Function(AddNewOrderDishSelectedEvent value) dishSelected,
    required TResult Function(AddNewOrderDeleteItemEvent value) deleteItem,
    required TResult Function(AddNewOrderCountChangedEvent value) countChanged,
    required TResult Function(AddNewOrderCommentChangedEvent value)
        commentChanged,
    required TResult Function(AddNewOrderSubmitEvent value) submit,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddNewOrderLoadEvent value)? load,
    TResult? Function(AddNewOrderDishSelectedEvent value)? dishSelected,
    TResult? Function(AddNewOrderDeleteItemEvent value)? deleteItem,
    TResult? Function(AddNewOrderCountChangedEvent value)? countChanged,
    TResult? Function(AddNewOrderCommentChangedEvent value)? commentChanged,
    TResult? Function(AddNewOrderSubmitEvent value)? submit,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddNewOrderLoadEvent value)? load,
    TResult Function(AddNewOrderDishSelectedEvent value)? dishSelected,
    TResult Function(AddNewOrderDeleteItemEvent value)? deleteItem,
    TResult Function(AddNewOrderCountChangedEvent value)? countChanged,
    TResult Function(AddNewOrderCommentChangedEvent value)? commentChanged,
    TResult Function(AddNewOrderSubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class AddNewOrderLoadEvent implements AddNewOrderEvent {
  factory AddNewOrderLoadEvent() = _$AddNewOrderLoadEventImpl;
}

/// @nodoc
abstract class _$$AddNewOrderDishSelectedEventImplCopyWith<$Res> {
  factory _$$AddNewOrderDishSelectedEventImplCopyWith(
          _$AddNewOrderDishSelectedEventImpl value,
          $Res Function(_$AddNewOrderDishSelectedEventImpl) then) =
      __$$AddNewOrderDishSelectedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Dish dish, int? count, String? comment});

  $DishCopyWith<$Res> get dish;
}

/// @nodoc
class __$$AddNewOrderDishSelectedEventImplCopyWithImpl<$Res>
    extends _$AddNewOrderEventCopyWithImpl<$Res,
        _$AddNewOrderDishSelectedEventImpl>
    implements _$$AddNewOrderDishSelectedEventImplCopyWith<$Res> {
  __$$AddNewOrderDishSelectedEventImplCopyWithImpl(
      _$AddNewOrderDishSelectedEventImpl _value,
      $Res Function(_$AddNewOrderDishSelectedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dish = null,
    Object? count = freezed,
    Object? comment = freezed,
  }) {
    return _then(_$AddNewOrderDishSelectedEventImpl(
      dish: null == dish
          ? _value.dish
          : dish // ignore: cast_nullable_to_non_nullable
              as Dish,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DishCopyWith<$Res> get dish {
    return $DishCopyWith<$Res>(_value.dish, (value) {
      return _then(_value.copyWith(dish: value));
    });
  }
}

/// @nodoc

class _$AddNewOrderDishSelectedEventImpl
    implements AddNewOrderDishSelectedEvent {
  _$AddNewOrderDishSelectedEventImpl(
      {required this.dish, this.count, this.comment});

  @override
  final Dish dish;
  @override
  final int? count;
  @override
  final String? comment;

  @override
  String toString() {
    return 'AddNewOrderEvent.dishSelected(dish: $dish, count: $count, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewOrderDishSelectedEventImpl &&
            (identical(other.dish, dish) || other.dish == dish) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dish, count, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewOrderDishSelectedEventImplCopyWith<
          _$AddNewOrderDishSelectedEventImpl>
      get copyWith => __$$AddNewOrderDishSelectedEventImplCopyWithImpl<
          _$AddNewOrderDishSelectedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Dish dish, int? count, String? comment)
        dishSelected,
    required TResult Function(OrderItem item) deleteItem,
    required TResult Function(OrderItem item, int newCount) countChanged,
    required TResult Function(OrderItem item, String newComment) commentChanged,
    required TResult Function(void Function() onSuccess) submit,
  }) {
    return dishSelected(dish, count, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Dish dish, int? count, String? comment)? dishSelected,
    TResult? Function(OrderItem item)? deleteItem,
    TResult? Function(OrderItem item, int newCount)? countChanged,
    TResult? Function(OrderItem item, String newComment)? commentChanged,
    TResult? Function(void Function() onSuccess)? submit,
  }) {
    return dishSelected?.call(dish, count, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Dish dish, int? count, String? comment)? dishSelected,
    TResult Function(OrderItem item)? deleteItem,
    TResult Function(OrderItem item, int newCount)? countChanged,
    TResult Function(OrderItem item, String newComment)? commentChanged,
    TResult Function(void Function() onSuccess)? submit,
    required TResult orElse(),
  }) {
    if (dishSelected != null) {
      return dishSelected(dish, count, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddNewOrderLoadEvent value) load,
    required TResult Function(AddNewOrderDishSelectedEvent value) dishSelected,
    required TResult Function(AddNewOrderDeleteItemEvent value) deleteItem,
    required TResult Function(AddNewOrderCountChangedEvent value) countChanged,
    required TResult Function(AddNewOrderCommentChangedEvent value)
        commentChanged,
    required TResult Function(AddNewOrderSubmitEvent value) submit,
  }) {
    return dishSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddNewOrderLoadEvent value)? load,
    TResult? Function(AddNewOrderDishSelectedEvent value)? dishSelected,
    TResult? Function(AddNewOrderDeleteItemEvent value)? deleteItem,
    TResult? Function(AddNewOrderCountChangedEvent value)? countChanged,
    TResult? Function(AddNewOrderCommentChangedEvent value)? commentChanged,
    TResult? Function(AddNewOrderSubmitEvent value)? submit,
  }) {
    return dishSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddNewOrderLoadEvent value)? load,
    TResult Function(AddNewOrderDishSelectedEvent value)? dishSelected,
    TResult Function(AddNewOrderDeleteItemEvent value)? deleteItem,
    TResult Function(AddNewOrderCountChangedEvent value)? countChanged,
    TResult Function(AddNewOrderCommentChangedEvent value)? commentChanged,
    TResult Function(AddNewOrderSubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (dishSelected != null) {
      return dishSelected(this);
    }
    return orElse();
  }
}

abstract class AddNewOrderDishSelectedEvent implements AddNewOrderEvent {
  factory AddNewOrderDishSelectedEvent(
      {required final Dish dish,
      final int? count,
      final String? comment}) = _$AddNewOrderDishSelectedEventImpl;

  Dish get dish;
  int? get count;
  String? get comment;
  @JsonKey(ignore: true)
  _$$AddNewOrderDishSelectedEventImplCopyWith<
          _$AddNewOrderDishSelectedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNewOrderDeleteItemEventImplCopyWith<$Res> {
  factory _$$AddNewOrderDeleteItemEventImplCopyWith(
          _$AddNewOrderDeleteItemEventImpl value,
          $Res Function(_$AddNewOrderDeleteItemEventImpl) then) =
      __$$AddNewOrderDeleteItemEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderItem item});

  $OrderItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$AddNewOrderDeleteItemEventImplCopyWithImpl<$Res>
    extends _$AddNewOrderEventCopyWithImpl<$Res,
        _$AddNewOrderDeleteItemEventImpl>
    implements _$$AddNewOrderDeleteItemEventImplCopyWith<$Res> {
  __$$AddNewOrderDeleteItemEventImplCopyWithImpl(
      _$AddNewOrderDeleteItemEventImpl _value,
      $Res Function(_$AddNewOrderDeleteItemEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$AddNewOrderDeleteItemEventImpl(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as OrderItem,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderItemCopyWith<$Res> get item {
    return $OrderItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$AddNewOrderDeleteItemEventImpl implements AddNewOrderDeleteItemEvent {
  _$AddNewOrderDeleteItemEventImpl(this.item);

  @override
  final OrderItem item;

  @override
  String toString() {
    return 'AddNewOrderEvent.deleteItem(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewOrderDeleteItemEventImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewOrderDeleteItemEventImplCopyWith<_$AddNewOrderDeleteItemEventImpl>
      get copyWith => __$$AddNewOrderDeleteItemEventImplCopyWithImpl<
          _$AddNewOrderDeleteItemEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Dish dish, int? count, String? comment)
        dishSelected,
    required TResult Function(OrderItem item) deleteItem,
    required TResult Function(OrderItem item, int newCount) countChanged,
    required TResult Function(OrderItem item, String newComment) commentChanged,
    required TResult Function(void Function() onSuccess) submit,
  }) {
    return deleteItem(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Dish dish, int? count, String? comment)? dishSelected,
    TResult? Function(OrderItem item)? deleteItem,
    TResult? Function(OrderItem item, int newCount)? countChanged,
    TResult? Function(OrderItem item, String newComment)? commentChanged,
    TResult? Function(void Function() onSuccess)? submit,
  }) {
    return deleteItem?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Dish dish, int? count, String? comment)? dishSelected,
    TResult Function(OrderItem item)? deleteItem,
    TResult Function(OrderItem item, int newCount)? countChanged,
    TResult Function(OrderItem item, String newComment)? commentChanged,
    TResult Function(void Function() onSuccess)? submit,
    required TResult orElse(),
  }) {
    if (deleteItem != null) {
      return deleteItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddNewOrderLoadEvent value) load,
    required TResult Function(AddNewOrderDishSelectedEvent value) dishSelected,
    required TResult Function(AddNewOrderDeleteItemEvent value) deleteItem,
    required TResult Function(AddNewOrderCountChangedEvent value) countChanged,
    required TResult Function(AddNewOrderCommentChangedEvent value)
        commentChanged,
    required TResult Function(AddNewOrderSubmitEvent value) submit,
  }) {
    return deleteItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddNewOrderLoadEvent value)? load,
    TResult? Function(AddNewOrderDishSelectedEvent value)? dishSelected,
    TResult? Function(AddNewOrderDeleteItemEvent value)? deleteItem,
    TResult? Function(AddNewOrderCountChangedEvent value)? countChanged,
    TResult? Function(AddNewOrderCommentChangedEvent value)? commentChanged,
    TResult? Function(AddNewOrderSubmitEvent value)? submit,
  }) {
    return deleteItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddNewOrderLoadEvent value)? load,
    TResult Function(AddNewOrderDishSelectedEvent value)? dishSelected,
    TResult Function(AddNewOrderDeleteItemEvent value)? deleteItem,
    TResult Function(AddNewOrderCountChangedEvent value)? countChanged,
    TResult Function(AddNewOrderCommentChangedEvent value)? commentChanged,
    TResult Function(AddNewOrderSubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (deleteItem != null) {
      return deleteItem(this);
    }
    return orElse();
  }
}

abstract class AddNewOrderDeleteItemEvent implements AddNewOrderEvent {
  factory AddNewOrderDeleteItemEvent(final OrderItem item) =
      _$AddNewOrderDeleteItemEventImpl;

  OrderItem get item;
  @JsonKey(ignore: true)
  _$$AddNewOrderDeleteItemEventImplCopyWith<_$AddNewOrderDeleteItemEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNewOrderCountChangedEventImplCopyWith<$Res> {
  factory _$$AddNewOrderCountChangedEventImplCopyWith(
          _$AddNewOrderCountChangedEventImpl value,
          $Res Function(_$AddNewOrderCountChangedEventImpl) then) =
      __$$AddNewOrderCountChangedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderItem item, int newCount});

  $OrderItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$AddNewOrderCountChangedEventImplCopyWithImpl<$Res>
    extends _$AddNewOrderEventCopyWithImpl<$Res,
        _$AddNewOrderCountChangedEventImpl>
    implements _$$AddNewOrderCountChangedEventImplCopyWith<$Res> {
  __$$AddNewOrderCountChangedEventImplCopyWithImpl(
      _$AddNewOrderCountChangedEventImpl _value,
      $Res Function(_$AddNewOrderCountChangedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? newCount = null,
  }) {
    return _then(_$AddNewOrderCountChangedEventImpl(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as OrderItem,
      null == newCount
          ? _value.newCount
          : newCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderItemCopyWith<$Res> get item {
    return $OrderItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$AddNewOrderCountChangedEventImpl
    implements AddNewOrderCountChangedEvent {
  _$AddNewOrderCountChangedEventImpl(this.item, this.newCount);

  @override
  final OrderItem item;
  @override
  final int newCount;

  @override
  String toString() {
    return 'AddNewOrderEvent.countChanged(item: $item, newCount: $newCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewOrderCountChangedEventImpl &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.newCount, newCount) ||
                other.newCount == newCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item, newCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewOrderCountChangedEventImplCopyWith<
          _$AddNewOrderCountChangedEventImpl>
      get copyWith => __$$AddNewOrderCountChangedEventImplCopyWithImpl<
          _$AddNewOrderCountChangedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Dish dish, int? count, String? comment)
        dishSelected,
    required TResult Function(OrderItem item) deleteItem,
    required TResult Function(OrderItem item, int newCount) countChanged,
    required TResult Function(OrderItem item, String newComment) commentChanged,
    required TResult Function(void Function() onSuccess) submit,
  }) {
    return countChanged(item, newCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Dish dish, int? count, String? comment)? dishSelected,
    TResult? Function(OrderItem item)? deleteItem,
    TResult? Function(OrderItem item, int newCount)? countChanged,
    TResult? Function(OrderItem item, String newComment)? commentChanged,
    TResult? Function(void Function() onSuccess)? submit,
  }) {
    return countChanged?.call(item, newCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Dish dish, int? count, String? comment)? dishSelected,
    TResult Function(OrderItem item)? deleteItem,
    TResult Function(OrderItem item, int newCount)? countChanged,
    TResult Function(OrderItem item, String newComment)? commentChanged,
    TResult Function(void Function() onSuccess)? submit,
    required TResult orElse(),
  }) {
    if (countChanged != null) {
      return countChanged(item, newCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddNewOrderLoadEvent value) load,
    required TResult Function(AddNewOrderDishSelectedEvent value) dishSelected,
    required TResult Function(AddNewOrderDeleteItemEvent value) deleteItem,
    required TResult Function(AddNewOrderCountChangedEvent value) countChanged,
    required TResult Function(AddNewOrderCommentChangedEvent value)
        commentChanged,
    required TResult Function(AddNewOrderSubmitEvent value) submit,
  }) {
    return countChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddNewOrderLoadEvent value)? load,
    TResult? Function(AddNewOrderDishSelectedEvent value)? dishSelected,
    TResult? Function(AddNewOrderDeleteItemEvent value)? deleteItem,
    TResult? Function(AddNewOrderCountChangedEvent value)? countChanged,
    TResult? Function(AddNewOrderCommentChangedEvent value)? commentChanged,
    TResult? Function(AddNewOrderSubmitEvent value)? submit,
  }) {
    return countChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddNewOrderLoadEvent value)? load,
    TResult Function(AddNewOrderDishSelectedEvent value)? dishSelected,
    TResult Function(AddNewOrderDeleteItemEvent value)? deleteItem,
    TResult Function(AddNewOrderCountChangedEvent value)? countChanged,
    TResult Function(AddNewOrderCommentChangedEvent value)? commentChanged,
    TResult Function(AddNewOrderSubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (countChanged != null) {
      return countChanged(this);
    }
    return orElse();
  }
}

abstract class AddNewOrderCountChangedEvent implements AddNewOrderEvent {
  factory AddNewOrderCountChangedEvent(
          final OrderItem item, final int newCount) =
      _$AddNewOrderCountChangedEventImpl;

  OrderItem get item;
  int get newCount;
  @JsonKey(ignore: true)
  _$$AddNewOrderCountChangedEventImplCopyWith<
          _$AddNewOrderCountChangedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNewOrderCommentChangedEventImplCopyWith<$Res> {
  factory _$$AddNewOrderCommentChangedEventImplCopyWith(
          _$AddNewOrderCommentChangedEventImpl value,
          $Res Function(_$AddNewOrderCommentChangedEventImpl) then) =
      __$$AddNewOrderCommentChangedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderItem item, String newComment});

  $OrderItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$AddNewOrderCommentChangedEventImplCopyWithImpl<$Res>
    extends _$AddNewOrderEventCopyWithImpl<$Res,
        _$AddNewOrderCommentChangedEventImpl>
    implements _$$AddNewOrderCommentChangedEventImplCopyWith<$Res> {
  __$$AddNewOrderCommentChangedEventImplCopyWithImpl(
      _$AddNewOrderCommentChangedEventImpl _value,
      $Res Function(_$AddNewOrderCommentChangedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? newComment = null,
  }) {
    return _then(_$AddNewOrderCommentChangedEventImpl(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as OrderItem,
      null == newComment
          ? _value.newComment
          : newComment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderItemCopyWith<$Res> get item {
    return $OrderItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$AddNewOrderCommentChangedEventImpl
    implements AddNewOrderCommentChangedEvent {
  _$AddNewOrderCommentChangedEventImpl(this.item, this.newComment);

  @override
  final OrderItem item;
  @override
  final String newComment;

  @override
  String toString() {
    return 'AddNewOrderEvent.commentChanged(item: $item, newComment: $newComment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewOrderCommentChangedEventImpl &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.newComment, newComment) ||
                other.newComment == newComment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item, newComment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewOrderCommentChangedEventImplCopyWith<
          _$AddNewOrderCommentChangedEventImpl>
      get copyWith => __$$AddNewOrderCommentChangedEventImplCopyWithImpl<
          _$AddNewOrderCommentChangedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Dish dish, int? count, String? comment)
        dishSelected,
    required TResult Function(OrderItem item) deleteItem,
    required TResult Function(OrderItem item, int newCount) countChanged,
    required TResult Function(OrderItem item, String newComment) commentChanged,
    required TResult Function(void Function() onSuccess) submit,
  }) {
    return commentChanged(item, newComment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Dish dish, int? count, String? comment)? dishSelected,
    TResult? Function(OrderItem item)? deleteItem,
    TResult? Function(OrderItem item, int newCount)? countChanged,
    TResult? Function(OrderItem item, String newComment)? commentChanged,
    TResult? Function(void Function() onSuccess)? submit,
  }) {
    return commentChanged?.call(item, newComment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Dish dish, int? count, String? comment)? dishSelected,
    TResult Function(OrderItem item)? deleteItem,
    TResult Function(OrderItem item, int newCount)? countChanged,
    TResult Function(OrderItem item, String newComment)? commentChanged,
    TResult Function(void Function() onSuccess)? submit,
    required TResult orElse(),
  }) {
    if (commentChanged != null) {
      return commentChanged(item, newComment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddNewOrderLoadEvent value) load,
    required TResult Function(AddNewOrderDishSelectedEvent value) dishSelected,
    required TResult Function(AddNewOrderDeleteItemEvent value) deleteItem,
    required TResult Function(AddNewOrderCountChangedEvent value) countChanged,
    required TResult Function(AddNewOrderCommentChangedEvent value)
        commentChanged,
    required TResult Function(AddNewOrderSubmitEvent value) submit,
  }) {
    return commentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddNewOrderLoadEvent value)? load,
    TResult? Function(AddNewOrderDishSelectedEvent value)? dishSelected,
    TResult? Function(AddNewOrderDeleteItemEvent value)? deleteItem,
    TResult? Function(AddNewOrderCountChangedEvent value)? countChanged,
    TResult? Function(AddNewOrderCommentChangedEvent value)? commentChanged,
    TResult? Function(AddNewOrderSubmitEvent value)? submit,
  }) {
    return commentChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddNewOrderLoadEvent value)? load,
    TResult Function(AddNewOrderDishSelectedEvent value)? dishSelected,
    TResult Function(AddNewOrderDeleteItemEvent value)? deleteItem,
    TResult Function(AddNewOrderCountChangedEvent value)? countChanged,
    TResult Function(AddNewOrderCommentChangedEvent value)? commentChanged,
    TResult Function(AddNewOrderSubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (commentChanged != null) {
      return commentChanged(this);
    }
    return orElse();
  }
}

abstract class AddNewOrderCommentChangedEvent implements AddNewOrderEvent {
  factory AddNewOrderCommentChangedEvent(
          final OrderItem item, final String newComment) =
      _$AddNewOrderCommentChangedEventImpl;

  OrderItem get item;
  String get newComment;
  @JsonKey(ignore: true)
  _$$AddNewOrderCommentChangedEventImplCopyWith<
          _$AddNewOrderCommentChangedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNewOrderSubmitEventImplCopyWith<$Res> {
  factory _$$AddNewOrderSubmitEventImplCopyWith(
          _$AddNewOrderSubmitEventImpl value,
          $Res Function(_$AddNewOrderSubmitEventImpl) then) =
      __$$AddNewOrderSubmitEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({void Function() onSuccess});
}

/// @nodoc
class __$$AddNewOrderSubmitEventImplCopyWithImpl<$Res>
    extends _$AddNewOrderEventCopyWithImpl<$Res, _$AddNewOrderSubmitEventImpl>
    implements _$$AddNewOrderSubmitEventImplCopyWith<$Res> {
  __$$AddNewOrderSubmitEventImplCopyWithImpl(
      _$AddNewOrderSubmitEventImpl _value,
      $Res Function(_$AddNewOrderSubmitEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onSuccess = null,
  }) {
    return _then(_$AddNewOrderSubmitEventImpl(
      onSuccess: null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as void Function(),
    ));
  }
}

/// @nodoc

class _$AddNewOrderSubmitEventImpl implements AddNewOrderSubmitEvent {
  _$AddNewOrderSubmitEventImpl({required this.onSuccess});

  @override
  final void Function() onSuccess;

  @override
  String toString() {
    return 'AddNewOrderEvent.submit(onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewOrderSubmitEventImpl &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewOrderSubmitEventImplCopyWith<_$AddNewOrderSubmitEventImpl>
      get copyWith => __$$AddNewOrderSubmitEventImplCopyWithImpl<
          _$AddNewOrderSubmitEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Dish dish, int? count, String? comment)
        dishSelected,
    required TResult Function(OrderItem item) deleteItem,
    required TResult Function(OrderItem item, int newCount) countChanged,
    required TResult Function(OrderItem item, String newComment) commentChanged,
    required TResult Function(void Function() onSuccess) submit,
  }) {
    return submit(onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Dish dish, int? count, String? comment)? dishSelected,
    TResult? Function(OrderItem item)? deleteItem,
    TResult? Function(OrderItem item, int newCount)? countChanged,
    TResult? Function(OrderItem item, String newComment)? commentChanged,
    TResult? Function(void Function() onSuccess)? submit,
  }) {
    return submit?.call(onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Dish dish, int? count, String? comment)? dishSelected,
    TResult Function(OrderItem item)? deleteItem,
    TResult Function(OrderItem item, int newCount)? countChanged,
    TResult Function(OrderItem item, String newComment)? commentChanged,
    TResult Function(void Function() onSuccess)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddNewOrderLoadEvent value) load,
    required TResult Function(AddNewOrderDishSelectedEvent value) dishSelected,
    required TResult Function(AddNewOrderDeleteItemEvent value) deleteItem,
    required TResult Function(AddNewOrderCountChangedEvent value) countChanged,
    required TResult Function(AddNewOrderCommentChangedEvent value)
        commentChanged,
    required TResult Function(AddNewOrderSubmitEvent value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddNewOrderLoadEvent value)? load,
    TResult? Function(AddNewOrderDishSelectedEvent value)? dishSelected,
    TResult? Function(AddNewOrderDeleteItemEvent value)? deleteItem,
    TResult? Function(AddNewOrderCountChangedEvent value)? countChanged,
    TResult? Function(AddNewOrderCommentChangedEvent value)? commentChanged,
    TResult? Function(AddNewOrderSubmitEvent value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddNewOrderLoadEvent value)? load,
    TResult Function(AddNewOrderDishSelectedEvent value)? dishSelected,
    TResult Function(AddNewOrderDeleteItemEvent value)? deleteItem,
    TResult Function(AddNewOrderCountChangedEvent value)? countChanged,
    TResult Function(AddNewOrderCommentChangedEvent value)? commentChanged,
    TResult Function(AddNewOrderSubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class AddNewOrderSubmitEvent implements AddNewOrderEvent {
  factory AddNewOrderSubmitEvent({required final void Function() onSuccess}) =
      _$AddNewOrderSubmitEventImpl;

  void Function() get onSuccess;
  @JsonKey(ignore: true)
  _$$AddNewOrderSubmitEventImplCopyWith<_$AddNewOrderSubmitEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
