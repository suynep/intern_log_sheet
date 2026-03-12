import 'package:flutter/material.dart';

class ColorBoxWidget extends StatelessWidget {
  final Color _color;
  final bool _isSelectedSameColor;
  final void Function() onPressed;

  ColorBoxWidget(
    color,
    isSelectedSameColor, {
    super.key,
    required this.onPressed,
  }) : _color = color,
       _isSelectedSameColor = isSelectedSameColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: _color,
          border: Border.all(
            color: (_isSelectedSameColor)
                ? const Color.fromARGB(255, 151, 130, 73)
                : Colors.transparent,
            width: 4,
          ),
        ),
        child: SizedBox(height: 20, width: 20),
      ),
    );
  }
}
