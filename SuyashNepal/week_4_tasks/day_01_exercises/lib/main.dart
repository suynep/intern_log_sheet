import 'package:day_01_exercises/src/exercise_02/form_data_model_provider.dart';
import 'package:day_01_exercises/src/exercise_02/page.dart';
import 'package:flutter/material.dart';
import 'package:day_01_exercises/src/exercise_01/page.dart';

void main() {
  runApp(Day01ExercisesApp());
}

class Day01ExercisesApp extends StatelessWidget {
  const Day01ExercisesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        fontFamily: "Manrope",
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Day 01 Exercises"),
          bottom: TabBar(
            onTap: (value) => setState(() {
              currentIndex = value;
            }),
            tabs: [
              _getTabBarItem("Exercise 01", Icons.diamond),
              _getTabBarItem("Exercise 02", Icons.diamond),
              _getTabBarItem("Exercise 03", Icons.diamond),
              _getTabBarItem("Exercise 04", Icons.diamond),
            ],
          ),
        ),
        body: () {
          switch (currentIndex) {
            case 0:
              return Exercise01();
            case 1:
              return FormDataModelProvider(child: Exercise02());

            default:
              return Container();
          }
        }(),
      ),
    );
  }

  Tab _getTabBarItem(String label, IconData icon) =>
      Tab(text: label, icon: Icon(icon));
}
