import 'package:flutter/material.dart';
import '../models/circle_model.dart';
import '../widgets/canvas_widget.dart';
import '../widgets/gesture_info.dart';

class ExerciseOne extends StatefulWidget {
  const ExerciseOne({super.key});

  @override
  State<ExerciseOne> createState() => _ExerciseOneState();
}

class _ExerciseOneState extends State<ExerciseOne> {

  List<CircleModel> circles = [];
  String gestureText = "Tap to place circle";

  double scale = 1.0;

  int paletteIndex = 0;

  final palettes = [
    [Colors.red, Colors.orange, Colors.yellow],
    [Colors.blue, Colors.cyan, Colors.indigo],
    [Colors.green, Colors.teal, Colors.lime],
  ];

  void addCircle(Offset position) {
    final colors = palettes[paletteIndex];

    circles.add(
      CircleModel(
        position: position,
        color: colors[circles.length % colors.length],
      ),
    );

    setState(() {
      gestureText = "Tap → circle added";
    });
  }

  void clearCanvas() {
    setState(() {
      circles.clear();
      gestureText = "Long press → canvas cleared";
    });
  }

  void undo() {
    if (circles.isNotEmpty) {
      circles.removeLast();

      setState(() {
        gestureText = "Double press → remove/undo";
      });
    }
  }

  void changePalette() {
    paletteIndex = (paletteIndex + 1) % palettes.length;

    setState(() {
      gestureText = "Swipe → palette changed";
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Gesture Detection App")),
      
        body: Column(
          children: [
      
            GestureInfo(text: gestureText),
      
            Expanded(
              child: GestureDetector(
      
                onTapDown: (details) {
                  addCircle(details.localPosition);
                },
      
                onDoubleTap: undo,
      
                onLongPress: clearCanvas,
      
                onHorizontalDragEnd: (_) {
                  changePalette();
                },
      
                onScaleUpdate: (details) {
                  setState(() {
                    scale = details.scale;
                    gestureText = "Pinch → zoom";
                  });
                },
      
                child: Container(
                  color: Colors.grey[200],
                  child: CanvasWidget(
                    circles: circles,
                    scale: scale,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}