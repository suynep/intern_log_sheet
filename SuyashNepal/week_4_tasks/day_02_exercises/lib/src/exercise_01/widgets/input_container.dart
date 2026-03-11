import 'package:day_02_exercises/src/exercise_01/widgets/calculator_button.dart';
import 'package:flutter/material.dart';

class InputContainer extends StatefulWidget {
  final Function(String s) callback;

  const InputContainer({super.key, required this.callback});

  @override
  State<InputContainer> createState() => _InputContainerState();
}

class _InputContainerState extends State<InputContainer> {
  String current = "";
  // super.key,
  // required this.text,
  // required this.callback,
  // this.iconData,
  // Color? textColor,
  // Color? bgColor,

  /// The inner `Record` is a composition of calculator button's (text, iconData, bgColor, textColor)
  List<List<(String, IconData?, Color?, Color?)>> buttonData = [
    [
      // text, icon, bg, textColor
      ("C", null, null, null),
      ("+/-", null, null, null),
      ("%", null, null, null),
      ("/", null, Colors.amber[700], Colors.white),
    ],
    [
      // text, icon, bg, textColor
      ("7", null, Colors.grey[900], Colors.white),
      ("8", null, Colors.grey[900], Colors.white),
      ("9", null, Colors.grey[900], Colors.white),
      ("*", Icons.close, Colors.amber[700], Colors.white),
    ],
    [
      // text, icon, bg, textColor
      ("4", null, Colors.grey[900], Colors.white),
      ("5", null, Colors.grey[900], Colors.white),
      ("6", null, Colors.grey[900], Colors.white),
      ("-", Icons.remove, Colors.amber[700], Colors.white),
    ],
    [
      // text, icon, bg, textColor
      ("1", null, Colors.grey[900], Colors.white),
      ("2", null, Colors.grey[900], Colors.white),
      ("3", null, Colors.grey[900], Colors.white),
      ("+", Icons.add, Colors.amber[700], Colors.white),
    ],
    [
      // text, icon, bg, textColor
      ("0", null, Colors.grey[900], Colors.white),
      (".", null, Colors.grey[900], Colors.white),
      ("=", null, Colors.amber[700], Colors.white),
    ],
  ];

  Widget _createGridBody() {
    return GridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: 15,
      mainAxisSpacing: 20,
      shrinkWrap: true,
      children: buttonData
          .expand((e) => e)
          .map(
            (e) => CalculatorButton(
              text: e.$1,
              callback: widget.callback,
              iconData: e.$2,
              textColor: e.$4,
              bgColor: e.$3,
            ),
          )
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.black, child: _createGridBody());
  }
}
