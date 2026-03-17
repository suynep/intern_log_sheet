import 'package:flutter/material.dart';
import 'package:task_5/screens/gallery_image_screen.dart';

class ExerciseTwo extends StatelessWidget {
  const ExerciseTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exercise 5 Responsive Gallery",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const GalleryScreen(),
    );
  }
}