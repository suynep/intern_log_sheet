import 'dart:io';

import 'package:day_02_exercises/src/exercise_01/calc_display.dart';
import 'package:day_02_exercises/src/exercise_01/widgets/input_container.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() {
    return _CalculatorState();
  }
}

class _CalculatorState extends State<Calculator> {
  String toDisplay = "";
  double operandOne = 0;
  double operandTwo = 0;
  String operator_ = "";

  void _changePressedKey(String key) {
    setState(() {
      if (key == "+" || key == "-" || key == "*" || key == "/") {
        try {
          operandOne = double.parse(toDisplay);
          toDisplay = "";
          operator_ = key;
        } on FormatException {
          stderr.write("No Operand for division");
        }
      } else if (key == "+/-") {
        if (toDisplay.isNotEmpty && toDisplay[0] == "-") {
          toDisplay = toDisplay.replaceAll(RegExp(r"-"), "");
        } else if (toDisplay.isNotEmpty) {
          toDisplay = "-$toDisplay"; // negative repr
        }
      } else if (key == "C") {
        toDisplay = "";
      } else if (key == "=") {
        try {
          operandTwo = double.parse(toDisplay);
          switch (operator_) {
            case "+":
              double result = operandOne + operandTwo;
              toDisplay = result.toString();
              break;
            case "-":
              double result = operandOne - operandTwo;
              toDisplay = result.toString();
              break;
            case "*":
              double result = operandOne * operandTwo;
              toDisplay = result.toString();
              break;
            case "/":
              if (operandTwo == 0) {
                toDisplay = "NaN";
                break;
              }
              double result = operandOne / operandTwo;
              toDisplay = result.toString();
              break;
          }
        } on FormatException {
          stderr.write("No Operand present");
        }
      } else {
        toDisplay += key;
      }
      stdout.write("[DEBUG] $key pressed!\n");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(child: CalcDisplay(displayText: toDisplay)),
        SizedBox(height: 20),
        Expanded(
          flex: 2,
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 400),
            child: InputContainer(callback: _changePressedKey),
          ),
        ),
      ],
    );
  }
}
