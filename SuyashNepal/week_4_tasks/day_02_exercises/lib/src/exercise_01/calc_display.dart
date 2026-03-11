import 'package:flutter/material.dart';

class CalcDisplay extends StatefulWidget {
  String displayText;

  CalcDisplay({super.key, required this.displayText});

  @override
  State<CalcDisplay> createState() => _CalcDisplayState();
}

class _CalcDisplayState extends State<CalcDisplay> {
  final displayStyle = TextStyle(fontSize: 48, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Container(
        color: Colors.black12,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            width: 600,
            child: Text(widget.displayText, style: displayStyle),
          ),
        ),
      ),
    );
  }
}
