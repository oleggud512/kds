import 'package:mobile_client/src/core/common/extensions/string.dart';
import 'package:mobile_client/src/core/presentation/dialog_widget.dart';
import 'package:flutter/material.dart';

class ConfirmDialog extends StatelessWidget with DialogWidget<bool> {
  const ConfirmDialog({
    super.key,
    this.message = ''
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(message),
      actions: [
        TextButton(
          child: Text('Ні'.hardcoded),
          onPressed: () {
            Navigator.pop(context, false);
          },
        ),
        FilledButton(
          child: Text('Так'.hardcoded),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
      ]
    );
  }
}