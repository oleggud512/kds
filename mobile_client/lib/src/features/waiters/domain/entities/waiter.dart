import 'package:freezed_annotation/freezed_annotation.dart';

part 'waiter.freezed.dart';

@freezed
class Waiter with _$Waiter {
  factory Waiter({
    required int id,
    required String name,
  }) = _Waiter;
}