import 'package:flutter/material.dart';
import 'package:calculator/screens/calculator_Screen.dart';
import 'package:get/get.dart';
import 'package:calculator/widgets/cal_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "calculatorApp",
      home: CalculatorScreen(),
    );
  }
}