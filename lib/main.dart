import 'package:flutter/material.dart';

import 'counter_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterView(),
      // Scaffold(
      //   body: Center(
      //     child: Text('Hello World!'),
      //   ),
      // ),
    );
  }
}
