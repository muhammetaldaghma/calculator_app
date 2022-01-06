
import 'package:calculator_app/calculatorhesaplama.dart';
import 'package:flutter/material.dart';

import 'calculator_app.dart';

void main() {
  MyApp app = MyApp();
  runApp(app);
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorApp(),
    );
  }
}

