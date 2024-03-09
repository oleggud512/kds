import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mobile_client/src/core/common/constants/sizes.dart';
import 'package:mobile_client/src/core/common/extensions/string.dart';

@RoutePage()
class WaiterAuthPage extends StatefulWidget {
  const WaiterAuthPage({
    super.key,
    required this.onWaiterSelected,
  });

  final void Function() onWaiterSelected;

  @override
  State<WaiterAuthPage> createState() => _WaiterAuthPageState();
}

class _WaiterAuthPageState extends State<WaiterAuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Who are you?".hardcoded)
      ),
      body: Padding(
        padding: const EdgeInsets.all(p24),
        child: Column(
          children: [
            FilledButton(
              onPressed: true 
                ? () {
                  
                } 
                : null,
              child: Text("Proceed".hardcoded)
            )
          ],
        )
      )
    );
  }
}