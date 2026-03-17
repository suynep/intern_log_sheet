import 'package:flutter/material.dart';
import 'package:flutter_tasks/widgets/exercise_one/custom_card.dart';
import 'package:flutter_tasks/widgets/exercise_one/product_card.dart';
import 'package:flutter_tasks/widgets/exercise_one/user_info_card.dart';

class ExerciseOne extends StatelessWidget {
  const ExerciseOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Custom Card
        CustomCard(
          title: "Custom Card",
          description: "This is just a custom card",
          onPressed: () =>
              debugPrint("Pressed custom card"),
        ),

        //Product Card
        ProductCard(
          name: "Laptop",
          price: 100000,
          imageUrl:
              "https://www.neostore.com.np/assets/uploads/w8002-ezgif.com-png-to-jpg-converter311.jpg",
          onAddToCart: () {
            debugPrint("Product added to cart");
          },
        ),

        UserInfoCard(
          name: "Unknown Known",
          email: "unknown@known.com",
          avatarUrl: "https://i.pravatar.cc/150?img=3",
          onViewProfile: () {
            debugPrint("User profile clicked");
          },
        ),
      ],
    );
  }
}
