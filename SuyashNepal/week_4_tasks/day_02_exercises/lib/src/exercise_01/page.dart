import 'package:day_02_exercises/src/exercise_01/calculator.dart';
import 'package:flutter/material.dart';

/// a simple calculator application in flutter, using the provider package

class CalcApp extends StatelessWidget {
  const CalcApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Calculator(),
      ),
    );
  }
}
