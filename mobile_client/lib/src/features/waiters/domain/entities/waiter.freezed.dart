// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'waiter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Waiter {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WaiterCopyWith<Waiter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaiterCopyWith<$Res> {
  factory $WaiterCopyWith(Waiter value, $Res Function(Waiter) then) =
      _$WaiterCopyWithImpl<$Res, Waiter>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$WaiterCopyWithImpl<$Res, $Val extends Waiter>
    implements $WaiterCopyWith<$Res> {
  _$WaiterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WaiterImplCopyWith<$Res> implements $WaiterCopyWith<$Res> {
  factory _$$WaiterImplCopyWith(
          _$WaiterImpl value, $Res Function(_$WaiterImpl) then) =
      __$$WaiterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$WaiterImplCopyWithImpl<$Res>
    extends _$WaiterCopyWithImpl<$Res, _$WaiterImpl>
    implements _$$WaiterImplCopyWith<$Res> {
  __$$WaiterImplCopyWithImpl(
      _$WaiterImpl _value, $Res Function(_$WaiterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$WaiterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WaiterImpl implements _Waiter {
  _$WaiterImpl({required this.id, required this.name});

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Waiter(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaiterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WaiterImplCopyWith<_$WaiterImpl> get copyWith =>
      __$$WaiterImplCopyWithImpl<_$WaiterImpl>(this, _$identity);
}

abstract class _Waiter implements Waiter {
  factory _Waiter({required final int id, required final String name}) =
      _$WaiterImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$WaiterImplCopyWith<_$WaiterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
