import 'package:flutter/material.dart';
import 'package:calculator_app/screens/home/home_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//import 'package:riverpod/riverpod.dart';

void main() => runApp(ProviderScope(child: CalculatorApp()));

class CalculatorApp extends ConsumerStatefulWidget {
  const CalculatorApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      ConsumerStatefulCalculator();
}

class ConsumerStatefulCalculator extends ConsumerState<CalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculor App",
      home: SafeArea(child: HomeScreen()),
    );
  }
}
