import 'package:flutter/material.dart';
import 'package:flutter_tasks/exercises/exercise_one.dart';
import 'package:flutter_tasks/exercises/exercise_three.dart';
import 'package:flutter_tasks/exercises/exercise_two_and_four.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(
          255,
          199,
          197,
          141,
        ),
        // body: ExerciseOne()
        // body: ExerciseTwoAndFour(),
        body: ExerciseThree(),
      ),
    ),
  );
}
