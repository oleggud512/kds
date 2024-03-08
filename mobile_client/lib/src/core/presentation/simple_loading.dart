import 'package:mobile_client/src/core/common/constants/sizes.dart';
import 'package:flutter/material.dart';

class SimpleLoading extends StatelessWidget {
  const SimpleLoading({super.key, this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircularProgressIndicator(),
          if (message != null) ...[
            h8gap,
            Text(message!)
          ]
        ]
      )
    );
  }
}