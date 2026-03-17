import 'package:flutter/material.dart';
import '../models/circle_model.dart';

class CanvasWidget extends StatelessWidget {
  final List<CircleModel> circles;
  final double scale;

  const CanvasWidget({
    super.key,
    required this.circles,
    required this.scale,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scale,
      child: Stack(
        children: circles.map((circle) {
          return Positioned(
            left: circle.position.dx - 20,
            top: circle.position.dy - 20,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: circle.color,
                shape: BoxShape.circle,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}