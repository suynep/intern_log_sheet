import 'package:day_02_exercises/src/exercise_01/page.dart';
import 'package:day_02_exercises/src/exercise_02/page.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Day02Exercises());
}

class Day02Exercises extends StatefulWidget {
  const Day02Exercises({super.key});

  @override
  State<Day02Exercises> createState() => _Day02ExercisesState();
}

class _Day02ExercisesState extends State<Day02Exercises> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Day 02 Exercises"),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.calculate), child: Text("Calculator")),
                Tab(icon: Icon(Icons.list), child: Text("List & Grid Views")),
              ],
              onTap: (value) => setState(() => currentIndex = value),
            ),
          ),
          body: () {
            switch (currentIndex) {
              case 0:
                return CalcApp();
              case 1:
                return DynamicListGridDisplayPage();
            }
          }(),
        ),
      ),
    );
  }
}
