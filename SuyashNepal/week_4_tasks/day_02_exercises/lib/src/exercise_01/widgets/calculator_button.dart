import 'package:flutter/material.dart';

class CalculatorButton extends StatefulWidget {
  CalculatorButton({
    super.key,
    required this.text,
    required this.callback,
    this.iconData,
    Color? textColor,
    Color? bgColor,
  }) : bgColor = bgColor ?? Colors.white70,
       textColor = textColor ?? Colors.black;

  String text;
  IconData? iconData;
  Color? textColor;
  Color? bgColor;
  final Function(String s) callback;

  @override
  State<CalculatorButton> createState() => _CalculatorButtonState();
}

class _CalculatorButtonState extends State<CalculatorButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(widget.bgColor),
      ),
      onPressed: () => {widget.callback(widget.text)},
      child: SizedBox(
        height: 90,
        width: widget.text != "0" ? 55 : 185,
        child: Center(
          child: widget.iconData == null
              ? Text(
                  widget.text,
                  style: TextStyle(color: widget.textColor, fontSize: 20),
                )
              : Icon(widget.iconData, color: widget.textColor, size: 20),
        ),
      ),
    );
  }
}
