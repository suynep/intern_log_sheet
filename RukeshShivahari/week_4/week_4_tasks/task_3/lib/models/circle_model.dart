import 'package:flutter/material.dart';

class CircleModel {
  Offset position;
  Color color;
  double radius;

  CircleModel({
    required this.position,
    required this.color,
    this.radius = 30,
  });
}