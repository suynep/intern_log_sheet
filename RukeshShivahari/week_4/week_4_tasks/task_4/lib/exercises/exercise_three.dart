import 'package:flutter/material.dart';
import 'package:task_4/screens/select_items_screen.dart';

class ExerciseThree extends StatelessWidget {
  const ExerciseThree({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title: 'Checkout Wizard',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SelectItemsScreen(),
    );
  }
}