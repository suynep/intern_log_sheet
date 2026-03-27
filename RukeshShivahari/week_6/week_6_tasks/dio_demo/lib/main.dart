import 'package:dio_demo/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

Widget myApp() {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('Dio Demo')),
      body: const HomeScreen(),
      backgroundColor: const Color.fromARGB(
        255,
        110,
        99,
        65,
      ),
    ),
  );
}
