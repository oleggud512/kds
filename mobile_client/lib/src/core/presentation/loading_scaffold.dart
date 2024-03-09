import 'package:flutter/material.dart';
import 'package:mobile_client/src/core/presentation/simple_loading.dart';

class LoadingScaffold extends StatelessWidget {
  const LoadingScaffold({
    super.key,
    this.title = "",
    this.message = "",
  });

  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SimpleLoading(
        message: message,
      )
    );
  }
}