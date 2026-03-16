import 'package:flutter/material.dart';

class GestureInfo extends StatelessWidget {
  final String text;

  const GestureInfo({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      color: Colors.black87,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}