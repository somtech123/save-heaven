import 'package:flutter/material.dart';

class SafeHeaven extends StatelessWidget {
  const SafeHeaven({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Save Heaven',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
