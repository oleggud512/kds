import 'package:freezed_annotation/freezed_annotation.dart';

part 'waiter_auth_event.freezed.dart';

@freezed
class WaiterAuthEvent with _$WaiterAuthEvent {
  factory WaiterAuthEvent.load() = WaiterAuthLoadEvent;
  
  factory WaiterAuthEvent.setWaiter({
    required int? waiterId,
  }) = WaiterAuthSetWaiterEvent;

  factory WaiterAuthEvent.login({
    required void Function() onSuccess,
  }) = WaiterAuthLoginEvent;
}