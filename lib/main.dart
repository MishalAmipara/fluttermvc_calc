import 'package:flutter/material.dart';

import 'views/screens/calculator.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CalculatorScreen(),);
  }
}
