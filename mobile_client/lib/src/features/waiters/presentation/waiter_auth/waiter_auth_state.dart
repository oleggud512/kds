import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_client/src/features/waiters/domain/entities/waiter.dart';

part 'waiter_auth_state.freezed.dart';

@freezed
class WaiterAuthState with _$WaiterAuthState {
  factory WaiterAuthState({
    @Default(false) bool isLoading,
    @Default([]) List<Waiter> waiters,
    int? currentWaiterId,
  }) = _WaiterAuthState;
}