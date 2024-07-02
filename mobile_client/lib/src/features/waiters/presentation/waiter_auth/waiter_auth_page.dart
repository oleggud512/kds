import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_client/src/core/common/constants/sizes.dart';
import 'package:mobile_client/src/core/common/extensions/string.dart';
import 'package:mobile_client/src/core/di/inject.dart';
import 'package:mobile_client/src/core/presentation/loading_scaffold.dart';
import 'package:mobile_client/src/features/waiters/presentation/waiter_auth/waiter_auth_bloc.dart';
import 'package:mobile_client/src/features/waiters/presentation/waiter_auth/waiter_auth_event.dart';
import 'package:mobile_client/src/features/waiters/presentation/waiter_auth/waiter_auth_state.dart';

@RoutePage()
class WaiterAuthPage extends StatelessWidget {
  const WaiterAuthPage({
    super.key,
    required this.onWaiterSelected,
  });

  final void Function() onWaiterSelected;

  void setWaiter(BuildContext context, int? waiterId) {
    context
        .read<WaiterAuthBloc>()
        .add(WaiterAuthSetWaiterEvent(waiterId: waiterId));
  }

  void submit(BuildContext context) {
    context
        .read<WaiterAuthBloc>()
        .add(WaiterAuthLoginEvent(onSuccess: onWaiterSelected));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => inject<WaiterAuthBloc>()..add(WaiterAuthLoadEvent()),
      child: BlocBuilder<WaiterAuthBloc, WaiterAuthState>(
          builder: (context, state) {
        if (state.isLoading) {
          return const LoadingScaffold(message: "Завантаження офіціантів...");
        }
        return Scaffold(
            appBar: AppBar(title: Text("Хто ви?".hardcoded)),
            body: Padding(
                padding: const EdgeInsets.all(p16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    DropdownButtonFormField<int?>(
                        isExpanded: true,
                        value: state.currentWaiterId,
                        items: [
                          DropdownMenuItem(
                              value: null,
                              child: Text("Офіціанта не вибрано".hardcoded)),
                          ...state.waiters.map((waiter) => DropdownMenuItem(
                                value: waiter.id,
                                child: Text(waiter.name),
                              ))
                        ],
                        onChanged: (newV) {
                          setWaiter(context, newV);
                        }),
                    h16gap,
                    FilledButton(
                        onPressed: state.currentWaiterId != null
                            ? () => submit(context)
                            : null,
                        child: Text("Продовжити".hardcoded))
                  ],
                )));
      }),
    );
  }
}
