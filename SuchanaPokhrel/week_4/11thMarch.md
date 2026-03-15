# Daily Intern Log: Day 2

### **Intern: Suchana Pokhrel**

## Focus: Day 2 – Container Widgets & Layout System

### Tasks Completed

- Learned about container structure and its properties
- Understood about rows and columns
- Learned about stack and listview
- Learned about advanced containers

### Technical "Today I Learned" (TIL)

Code:
import 'package:all_flutter_task/product.dart';
import 'package:all_flutter_task/product_data.dart';
import 'package:flutter/material.dart';

class GridviewClass extends StatelessWidget {
  const GridviewClass({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProductData> displayProduct = ProductDisplay.displayData();
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Data', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 90, 71, 13),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 7,
          mainAxisSpacing: 7,
        ),
        itemBuilder: (context, index) => ListTile(
          title: Text(
            displayProduct[index].name,
            style: TextStyle(color: Colors.black),
          ),
          subtitle: Text(displayProduct[index].desc),
        ),
        itemCount: displayProduct.length,
      ),
    );
  }
}


### Work Evidence

- Documentation Read:[https://api.flutter.dev/flutter/widgets/Container-class.html]

### Blockers and Challenges

- None
### 💬 Mentor Feedback

(To be filled by Mentor):
