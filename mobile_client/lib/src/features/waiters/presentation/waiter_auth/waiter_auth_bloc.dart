import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_client/src/core/common/logger.dart';
import 'package:mobile_client/src/core/socket/notification_handler.dart';
import 'package:mobile_client/src/features/waiters/app/use_cases/get_waiters_use_case.dart';
import 'package:mobile_client/src/features/waiters/app/use_cases/set_waiter_use_case.dart';
import 'package:mobile_client/src/features/waiters/presentation/waiter_auth/waiter_auth_event.dart';
import 'package:mobile_client/src/features/waiters/presentation/waiter_auth/waiter_auth_state.dart';

@Injectable()
class WaiterAuthBloc extends Bloc<WaiterAuthEvent, WaiterAuthState> {
  final SetWaiterUseCase setWaiter;
  final GetWaitersUseCase getWaiters;
  final NotificationHandler notificationHandler;

  WaiterAuthBloc(this.setWaiter, this.getWaiters, this.notificationHandler) : super(WaiterAuthState(isLoading: true)) {

    on<WaiterAuthLoadEvent>(_load);
    on<WaiterAuthSetWaiterEvent>(_setWaiter);
    on<WaiterAuthLoginEvent>(_submit);
  }

  Future<void> _load(
    WaiterAuthLoadEvent event, 
    Emitter<WaiterAuthState> emit,
  ) async {
    glogger.i("no");
    final waiters = await getWaiters();
    glogger.i("yes");
    waiters.fold(
      (left) {
        emit(state.copyWith(isLoading: false));
      }, 
      (right) {
        emit(state.copyWith(waiters: right, isLoading: false));
      }
    );
  }

  void _setWaiter(
    WaiterAuthSetWaiterEvent event,
    Emitter<WaiterAuthState> emit
  ) {
    emit(state.copyWith(currentWaiterId: event.waiterId));
  }

  Future<void> _submit(
    WaiterAuthLoginEvent event, 
    Emitter<WaiterAuthState> emit
  ) async {
    if (state.currentWaiterId == null) return;

    await setWaiter(state.currentWaiterId!);
    notificationHandler.reinit();
    event.onSuccess();
  }
}