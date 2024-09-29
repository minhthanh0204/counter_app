import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 0;
  @override
  void initState() {
    counter = 9;
    super.initState();
  }

  void IncrementCounter() {
    setState(() {
      counter++;
    });
  }

  void RestCounter() {
    setState(() {
      counter = 0;
    });
  }

  void decreaseCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Counter View',
            )),
        body: Center(
          child: Column(
            children: [
              Text(
                'Counter: $counter ',
                style: theme.textTheme.titleLarge,
              ),
              FilledButton(
                  onPressed: () {
                    IncrementCounter();
                  },
                  child: const Text('Increment')),
              FilledButton(
                  onPressed: () {
                    RestCounter();
                  },
                  child: const Text('Reset')),
              FilledButton(
                  onPressed: () {
                    decreaseCounter();
                  },
                  child: const Text('Decrease')),
              Text(
                'Hoàng Minh Thành - 2221050565',
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ));
  }
}
