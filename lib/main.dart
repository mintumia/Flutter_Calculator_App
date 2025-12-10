import 'package:flutter/material.dart';
import 'package:calculator_app/screens/home/home_screen.dart';


void main() => runApp(CalculatorApp());

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "hllll",
      home: SafeArea(child: HomeScreen()),
    );
  }
}
