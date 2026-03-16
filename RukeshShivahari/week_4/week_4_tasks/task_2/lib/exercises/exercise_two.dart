import 'package:flutter/material.dart';
import 'package:task_2/widgets/exercise_two/item_list_widget.dart';

class ExerciseTwo extends StatelessWidget {
  const ExerciseTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ItemListWidget() 
    );
  }
}
