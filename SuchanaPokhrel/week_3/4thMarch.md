# Daily Intern Log: Day 1

### **Intern: Suchana Pokhrel**

## Focus: Flutter UI Widgets

### Tasks Completed

- Learned about flutter fundamentals
- Understood about different basic widgets like text,icons etc.
- Learned about single and multi layout widgets.

### Technical "Today I Learned" (TIL)

Code:
import 'package:flutter/material.dart';

class LayoutWidgets extends StatelessWidget {
  const LayoutWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.all(12),
            alignment: Alignment.center,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                decoration: BoxDecoration(color: Colors.amber),
                child: Text('Hello'),
              ),
            ),
          ),

          FittedBox(
            child: Container(
              decoration: BoxDecoration(color: Colors.amber),
              child: Text('Helloooooooooooooooooooooo'),
            ),
          ),
        ],
      ),
    );
  }
}


### Work Evidence

- Documentation Read:[https://docs.flutter.dev/ui/widgets]

### Blockers and Challenges

- None
### 💬 Mentor Feedback

(To be filled by Mentor):
