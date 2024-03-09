// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'waiter_auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WaiterAuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Waiter> get waiters => throw _privateConstructorUsedError;
  int? get currentWaiterId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WaiterAuthStateCopyWith<WaiterAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaiterAuthStateCopyWith<$Res> {
  factory $WaiterAuthStateCopyWith(
          WaiterAuthState value, $Res Function(WaiterAuthState) then) =
      _$WaiterAuthStateCopyWithImpl<$Res, WaiterAuthState>;
  @useResult
  $Res call({bool isLoading, List<Waiter> waiters, int? currentWaiterId});
}

/// @nodoc
class _$WaiterAuthStateCopyWithImpl<$Res, $Val extends WaiterAuthState>
    implements $WaiterAuthStateCopyWith<$Res> {
  _$WaiterAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? waiters = null,
    Object? currentWaiterId = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      waiters: null == waiters
          ? _value.waiters
          : waiters // ignore: cast_nullable_to_non_nullable
              as List<Waiter>,
      currentWaiterId: freezed == currentWaiterId
          ? _value.currentWaiterId
          : currentWaiterId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WaiterAuthStateImplCopyWith<$Res>
    implements $WaiterAuthStateCopyWith<$Res> {
  factory _$$WaiterAuthStateImplCopyWith(_$WaiterAuthStateImpl value,
          $Res Function(_$WaiterAuthStateImpl) then) =
      __$$WaiterAuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<Waiter> waiters, int? currentWaiterId});
}

/// @nodoc
class __$$WaiterAuthStateImplCopyWithImpl<$Res>
    extends _$WaiterAuthStateCopyWithImpl<$Res, _$WaiterAuthStateImpl>
    implements _$$WaiterAuthStateImplCopyWith<$Res> {
  __$$WaiterAuthStateImplCopyWithImpl(
      _$WaiterAuthStateImpl _value, $Res Function(_$WaiterAuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? waiters = null,
    Object? currentWaiterId = freezed,
  }) {
    return _then(_$WaiterAuthStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      waiters: null == waiters
          ? _value._waiters
          : waiters // ignore: cast_nullable_to_non_nullable
              as List<Waiter>,
      currentWaiterId: freezed == currentWaiterId
          ? _value.currentWaiterId
          : currentWaiterId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$WaiterAuthStateImpl implements _WaiterAuthState {
  _$WaiterAuthStateImpl(
      {this.isLoading = false,
      final List<Waiter> waiters = const [],
      this.currentWaiterId})
      : _waiters = waiters;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Waiter> _waiters;
  @override
  @JsonKey()
  List<Waiter> get waiters {
    if (_waiters is EqualUnmodifiableListView) return _waiters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waiters);
  }

  @override
  final int? currentWaiterId;

  @override
  String toString() {
    return 'WaiterAuthState(isLoading: $isLoading, waiters: $waiters, currentWaiterId: $currentWaiterId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaiterAuthStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._waiters, _waiters) &&
            (identical(other.currentWaiterId, currentWaiterId) ||
                other.currentWaiterId == currentWaiterId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_waiters), currentWaiterId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WaiterAuthStateImplCopyWith<_$WaiterAuthStateImpl> get copyWith =>
      __$$WaiterAuthStateImplCopyWithImpl<_$WaiterAuthStateImpl>(
          this, _$identity);
}

abstract class _WaiterAuthState implements WaiterAuthState {
  factory _WaiterAuthState(
      {final bool isLoading,
      final List<Waiter> waiters,
      final int? currentWaiterId}) = _$WaiterAuthStateImpl;

  @override
  bool get isLoading;
  @override
  List<Waiter> get waiters;
  @override
  int? get currentWaiterId;
  @override
  @JsonKey(ignore: true)
  _$$WaiterAuthStateImplCopyWith<_$WaiterAuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
