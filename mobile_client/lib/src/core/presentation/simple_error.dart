import 'package:mobile_client/src/core/common/constants/sizes.dart';
import 'package:mobile_client/src/core/common/extensions/string.dart';
import 'package:mobile_client/src/core/domain/exceptions.dart';
import 'package:flutter/material.dart';

class SimpleError extends StatelessWidget {
  const SimpleError({
    super.key, 
    required this.error,
    this.onRetry
  });

  final AppException error;
  final void Function()? onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(error.message),
          if (onRetry != null) ...[
            h8gap,
            FilledButton(
              onPressed: onRetry, 
              child: Text('Retry'.hardcoded)
            )
          ]
        ]
      )
    );
  }
}