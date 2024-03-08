import 'package:freezed_annotation/freezed_annotation.dart';

part 'waiter.freezed.dart';
part 'waiter.g.dart';

@freezed
class Waiter with _$Waiter {
  factory Waiter({
    required int id,
    required String name,
  }) = _Waiter;

  factory Waiter.fromJson(Map<String, dynamic> json) => _$WaiterFromJson(json);
}