// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'waiter_auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WaiterAuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(int? waiterId) setWaiter,
    required TResult Function(void Function() onSuccess) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(int? waiterId)? setWaiter,
    TResult? Function(void Function() onSuccess)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(int? waiterId)? setWaiter,
    TResult Function(void Function() onSuccess)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WaiterAuthLoadEvent value) load,
    required TResult Function(WaiterAuthSetWaiterEvent value) setWaiter,
    required TResult Function(WaiterAuthLoginEvent value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WaiterAuthLoadEvent value)? load,
    TResult? Function(WaiterAuthSetWaiterEvent value)? setWaiter,
    TResult? Function(WaiterAuthLoginEvent value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WaiterAuthLoadEvent value)? load,
    TResult Function(WaiterAuthSetWaiterEvent value)? setWaiter,
    TResult Function(WaiterAuthLoginEvent value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaiterAuthEventCopyWith<$Res> {
  factory $WaiterAuthEventCopyWith(
          WaiterAuthEvent value, $Res Function(WaiterAuthEvent) then) =
      _$WaiterAuthEventCopyWithImpl<$Res, WaiterAuthEvent>;
}

/// @nodoc
class _$WaiterAuthEventCopyWithImpl<$Res, $Val extends WaiterAuthEvent>
    implements $WaiterAuthEventCopyWith<$Res> {
  _$WaiterAuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WaiterAuthLoadEventImplCopyWith<$Res> {
  factory _$$WaiterAuthLoadEventImplCopyWith(_$WaiterAuthLoadEventImpl value,
          $Res Function(_$WaiterAuthLoadEventImpl) then) =
      __$$WaiterAuthLoadEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WaiterAuthLoadEventImplCopyWithImpl<$Res>
    extends _$WaiterAuthEventCopyWithImpl<$Res, _$WaiterAuthLoadEventImpl>
    implements _$$WaiterAuthLoadEventImplCopyWith<$Res> {
  __$$WaiterAuthLoadEventImplCopyWithImpl(_$WaiterAuthLoadEventImpl _value,
      $Res Function(_$WaiterAuthLoadEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WaiterAuthLoadEventImpl implements WaiterAuthLoadEvent {
  _$WaiterAuthLoadEventImpl();

  @override
  String toString() {
    return 'WaiterAuthEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaiterAuthLoadEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(int? waiterId) setWaiter,
    required TResult Function(void Function() onSuccess) login,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(int? waiterId)? setWaiter,
    TResult? Function(void Function() onSuccess)? login,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(int? waiterId)? setWaiter,
    TResult Function(void Function() onSuccess)? login,
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
    required TResult Function(WaiterAuthLoadEvent value) load,
    required TResult Function(WaiterAuthSetWaiterEvent value) setWaiter,
    required TResult Function(WaiterAuthLoginEvent value) login,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WaiterAuthLoadEvent value)? load,
    TResult? Function(WaiterAuthSetWaiterEvent value)? setWaiter,
    TResult? Function(WaiterAuthLoginEvent value)? login,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WaiterAuthLoadEvent value)? load,
    TResult Function(WaiterAuthSetWaiterEvent value)? setWaiter,
    TResult Function(WaiterAuthLoginEvent value)? login,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class WaiterAuthLoadEvent implements WaiterAuthEvent {
  factory WaiterAuthLoadEvent() = _$WaiterAuthLoadEventImpl;
}

/// @nodoc
abstract class _$$WaiterAuthSetWaiterEventImplCopyWith<$Res> {
  factory _$$WaiterAuthSetWaiterEventImplCopyWith(
          _$WaiterAuthSetWaiterEventImpl value,
          $Res Function(_$WaiterAuthSetWaiterEventImpl) then) =
      __$$WaiterAuthSetWaiterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? waiterId});
}

/// @nodoc
class __$$WaiterAuthSetWaiterEventImplCopyWithImpl<$Res>
    extends _$WaiterAuthEventCopyWithImpl<$Res, _$WaiterAuthSetWaiterEventImpl>
    implements _$$WaiterAuthSetWaiterEventImplCopyWith<$Res> {
  __$$WaiterAuthSetWaiterEventImplCopyWithImpl(
      _$WaiterAuthSetWaiterEventImpl _value,
      $Res Function(_$WaiterAuthSetWaiterEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waiterId = freezed,
  }) {
    return _then(_$WaiterAuthSetWaiterEventImpl(
      waiterId: freezed == waiterId
          ? _value.waiterId
          : waiterId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$WaiterAuthSetWaiterEventImpl implements WaiterAuthSetWaiterEvent {
  _$WaiterAuthSetWaiterEventImpl({required this.waiterId});

  @override
  final int? waiterId;

  @override
  String toString() {
    return 'WaiterAuthEvent.setWaiter(waiterId: $waiterId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaiterAuthSetWaiterEventImpl &&
            (identical(other.waiterId, waiterId) ||
                other.waiterId == waiterId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, waiterId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WaiterAuthSetWaiterEventImplCopyWith<_$WaiterAuthSetWaiterEventImpl>
      get copyWith => __$$WaiterAuthSetWaiterEventImplCopyWithImpl<
          _$WaiterAuthSetWaiterEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(int? waiterId) setWaiter,
    required TResult Function(void Function() onSuccess) login,
  }) {
    return setWaiter(waiterId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(int? waiterId)? setWaiter,
    TResult? Function(void Function() onSuccess)? login,
  }) {
    return setWaiter?.call(waiterId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(int? waiterId)? setWaiter,
    TResult Function(void Function() onSuccess)? login,
    required TResult orElse(),
  }) {
    if (setWaiter != null) {
      return setWaiter(waiterId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WaiterAuthLoadEvent value) load,
    required TResult Function(WaiterAuthSetWaiterEvent value) setWaiter,
    required TResult Function(WaiterAuthLoginEvent value) login,
  }) {
    return setWaiter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WaiterAuthLoadEvent value)? load,
    TResult? Function(WaiterAuthSetWaiterEvent value)? setWaiter,
    TResult? Function(WaiterAuthLoginEvent value)? login,
  }) {
    return setWaiter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WaiterAuthLoadEvent value)? load,
    TResult Function(WaiterAuthSetWaiterEvent value)? setWaiter,
    TResult Function(WaiterAuthLoginEvent value)? login,
    required TResult orElse(),
  }) {
    if (setWaiter != null) {
      return setWaiter(this);
    }
    return orElse();
  }
}

abstract class WaiterAuthSetWaiterEvent implements WaiterAuthEvent {
  factory WaiterAuthSetWaiterEvent({required final int? waiterId}) =
      _$WaiterAuthSetWaiterEventImpl;

  int? get waiterId;
  @JsonKey(ignore: true)
  _$$WaiterAuthSetWaiterEventImplCopyWith<_$WaiterAuthSetWaiterEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WaiterAuthLoginEventImplCopyWith<$Res> {
  factory _$$WaiterAuthLoginEventImplCopyWith(_$WaiterAuthLoginEventImpl value,
          $Res Function(_$WaiterAuthLoginEventImpl) then) =
      __$$WaiterAuthLoginEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({void Function() onSuccess});
}

/// @nodoc
class __$$WaiterAuthLoginEventImplCopyWithImpl<$Res>
    extends _$WaiterAuthEventCopyWithImpl<$Res, _$WaiterAuthLoginEventImpl>
    implements _$$WaiterAuthLoginEventImplCopyWith<$Res> {
  __$$WaiterAuthLoginEventImplCopyWithImpl(_$WaiterAuthLoginEventImpl _value,
      $Res Function(_$WaiterAuthLoginEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onSuccess = null,
  }) {
    return _then(_$WaiterAuthLoginEventImpl(
      onSuccess: null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as void Function(),
    ));
  }
}

/// @nodoc

class _$WaiterAuthLoginEventImpl implements WaiterAuthLoginEvent {
  _$WaiterAuthLoginEventImpl({required this.onSuccess});

  @override
  final void Function() onSuccess;

  @override
  String toString() {
    return 'WaiterAuthEvent.login(onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaiterAuthLoginEventImpl &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WaiterAuthLoginEventImplCopyWith<_$WaiterAuthLoginEventImpl>
      get copyWith =>
          __$$WaiterAuthLoginEventImplCopyWithImpl<_$WaiterAuthLoginEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(int? waiterId) setWaiter,
    required TResult Function(void Function() onSuccess) login,
  }) {
    return login(onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(int? waiterId)? setWaiter,
    TResult? Function(void Function() onSuccess)? login,
  }) {
    return login?.call(onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(int? waiterId)? setWaiter,
    TResult Function(void Function() onSuccess)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WaiterAuthLoadEvent value) load,
    required TResult Function(WaiterAuthSetWaiterEvent value) setWaiter,
    required TResult Function(WaiterAuthLoginEvent value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WaiterAuthLoadEvent value)? load,
    TResult? Function(WaiterAuthSetWaiterEvent value)? setWaiter,
    TResult? Function(WaiterAuthLoginEvent value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WaiterAuthLoadEvent value)? load,
    TResult Function(WaiterAuthSetWaiterEvent value)? setWaiter,
    TResult Function(WaiterAuthLoginEvent value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class WaiterAuthLoginEvent implements WaiterAuthEvent {
  factory WaiterAuthLoginEvent({required final void Function() onSuccess}) =
      _$WaiterAuthLoginEventImpl;

  void Function() get onSuccess;
  @JsonKey(ignore: true)
  _$$WaiterAuthLoginEventImplCopyWith<_$WaiterAuthLoginEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
