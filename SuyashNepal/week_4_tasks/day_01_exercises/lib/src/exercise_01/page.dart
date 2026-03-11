import 'package:day_01_exercises/src/exercise_01/part01.dart';
import 'package:day_01_exercises/src/exercise_01/part02.dart';
import 'package:day_01_exercises/src/exercise_01/part03.dart';
import 'package:flutter/material.dart';

class Exercise01 extends StatefulWidget {
  const Exercise01({super.key});

  @override
  State<Exercise01> createState() => _Exercise01State();
}

class _Exercise01State extends State<Exercise01> {
  int currentBottomNavBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentBottomNavBarIndex,
        onTap: (value) => setState(() {
          currentBottomNavBarIndex = value;
        }),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: "Part 01"),
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: "Part 02"),
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: "Part 03"),
        ],
      ),
      body: () {
        if (currentBottomNavBarIndex == 0) {
          return Part01();
        } else if (currentBottomNavBarIndex == 1) {
          return Part02();
        } else if (currentBottomNavBarIndex == 2) {
          return Part03();
        }
      }(),
    );
  }
}
