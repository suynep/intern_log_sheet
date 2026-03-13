# Daily Intern Log: Day 1

### **Intern: Suchana Pokhrel**

## Focus: StatelessWidget vs StatefulWidget (In-Depth)

### Tasks Completed

- Learned about widgets and their tree structure
- Understood about stateless widget and its implementation
- Learned about stateful widget and its lifecycle.
- Learned about widget rebuild and setState call.

### Technical "Today I Learned" (TIL)

Code:
import 'package:all_flutter_task/practice_question/exercise1/models/data_model.dart';
import 'package:all_flutter_task/practice_question/exercise1/models/product_details.dart';
import 'product_card.dart';
import 'user_card_details.dart';
import 'package:flutter/material.dart';

class Day1Fundamentals extends StatelessWidget {
  const Day1Fundamentals({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProductCardModel> productCard =
        ProductDetails.productCardModel();
    final List<UserCardModel> userCard = ProductDetails.userCardModel();
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text('Stateless Counter', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 10, 47, 77),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductCardWidget(
              imageUrl: productCard[0].imageUrl,
              productName: productCard[0].name,
              productDesc: productCard[0].imageDesc,
            ),

            ProductCardWidget(
              imageUrl: productCard[1].imageUrl,
              productName: productCard[1].name,
              productDesc: productCard[1].imageDesc,
            ),

            UserCardWidget(
              userName: userCard[0].userName,
              userLevel: userCard[0].level,
              userProgram: userCard[0].program,
            ),
          ],
        ),
      ),
    );
  }
}


### Work Evidence

- Documentation Read:[https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html]

### Blockers and Challenges

- None
### 💬 Mentor Feedback

(To be filled by Mentor):
