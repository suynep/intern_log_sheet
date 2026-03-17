import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String description;
  final void Function() onPressed;
  const CustomCard({
    super.key,
    required this.title,
    required this.description,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 25),
            ),

            const SizedBox(height: 15),

            Text(description),
            const SizedBox(height: 5),

            OutlinedButton(
              onPressed: onPressed,
              child: Text("Click"),
            ),
          ],
        ),
      ),
    );
  }
}
