import 'package:auto_route/auto_route.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:mobile_client/src/core/common/constants/sizes.dart';
import 'package:mobile_client/src/core/common/extensions/string.dart';
import 'package:mobile_client/src/core/di/inject.dart';
import 'package:mobile_client/src/core/domain/exceptions.dart';
import 'package:mobile_client/src/core/presentation/confirm_dialog.dart';
import 'package:mobile_client/src/core/socket/notification_handler.dart';
import 'package:mobile_client/src/features/waiters/app/use_cases/get_current_waiter_use_case.dart';
import 'package:mobile_client/src/features/waiters/domain/entities/waiter.dart';
import 'package:mobile_client/src/features/waiters/domain/services/waiter_auth_service.dart';

class LogoutButton extends StatefulWidget {
  const LogoutButton({super.key});

  @override
  State<LogoutButton> createState() => _LogoutButtonState();
}

class _LogoutButtonState extends State<LogoutButton> {

  late final Future<Either<AppException, Waiter>> waiterFuture;

  @override
  void initState() {
    waiterFuture = inject<GetCurrentWaiterUseCase>()();
    super.initState();
  }

  static const icon = Icon(Icons.logout);

  void onPressed() async {
    final isSureLogout = await ConfirmDialog(
      message: 'Ви впевнені, що хочете вийти?'.hardcoded
    ).show(context);
    inject<NotificationHandler>().dispose();
    await inject<WaiterAuthService>().clearWaiterId();
    if (isSureLogout == true && mounted) {
      context.router.reevaluateGuards();
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: waiterFuture,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return buildButton("");
        }
        
        return snapshot.data!.fold(
          (left) => buildButton(""), 
          (right) => buildButton(right.name)
        );
      }
    );
  }

  Widget buildButton(String label) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        children: [
          if (label.isNotEmpty) ...[
            Text(label),
            w8gap,
          ],
          icon,
        ],
      ),
    );
  }
}