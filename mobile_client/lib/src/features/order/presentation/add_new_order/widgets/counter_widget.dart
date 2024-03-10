import 'package:flutter/material.dart';
import 'package:mobile_client/src/core/common/constants/sizes.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({
    this.value = 1,
    required this.onChanged,
    super.key
  });

  final int value;
  final void Function(int newValue) onChanged;

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  late int count;

  @override
  void initState() { 
    super.initState();
    count = widget.value;
  }

  void increase() {
    setState(() {
      count++;
    });
    widget.onChanged(count);
  }

  void decrease() {
    if (count == 1) return;
    setState(() {
      count--;
    });
    widget.onChanged(count);
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.remove),
          onPressed: decrease
        ),
        w8gap,
        Text(count.toString(), style: Theme.of(context).textTheme.bodyLarge),
        w8gap,
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: increase
        ),
      ]
    );
  }
}