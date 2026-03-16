import 'package:flutter/material.dart';
import '../models/circle_model.dart';

class GestureCanvas extends StatefulWidget {

  final List<CircleModel> circles;
  final double scale;

  final Function(Offset) onTap;
  final VoidCallback onDoubleTap;
  final VoidCallback onLongPress;
  final VoidCallback onSwipe;
  final Function(double) onScale;
  final Function(int, Offset) onDrag;

  const GestureCanvas({
    super.key,
    required this.circles,
    required this.scale,
    required this.onTap,
    required this.onDoubleTap,
    required this.onLongPress,
    required this.onSwipe,
    required this.onScale,
    required this.onDrag,
  });

  @override
  State<GestureCanvas> createState() => _GestureCanvasState();
}

class _GestureCanvasState extends State<GestureCanvas> {

  int? draggingIndex;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(

      onTapDown: (details) {
        widget.onTap(details.localPosition);
      },

      onTap:()=>debugPrint("CAll"),

      onDoubleTap: widget.onDoubleTap,

      onLongPress: widget.onLongPress,

      onHorizontalDragEnd: (_) {
        widget.onSwipe();
      },

      // onScaleUpdate: (details) {
      //   widget.onScale(details.scale);
      // },

      onPanUpdate: (details) {
        if (draggingIndex != null) {
          widget.onDrag(
            draggingIndex!,
            details.localPosition,
          );
        }
      },

      child: Transform.scale(
        scale: widget.scale,

        child: Stack(
          children: [

            ...widget.circles.asMap().entries.map((entry) {

              int index = entry.key;
              CircleModel circle = entry.value;

              return Positioned(
                left: circle.position.dx - circle.radius,
                top: circle.position.dy - circle.radius,

                child: GestureDetector(

                  onPanStart: (_) {
                    draggingIndex = index;
                  },

                  onPanEnd: (_) {
                    draggingIndex = null;
                  },

                  child: Container(
                    width: circle.radius * 2,
                    height: circle.radius * 2,

                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: circle.color,
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}