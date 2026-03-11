import 'package:day_01_exercises/src/exercise_01/part02_model_and_widgets/product_display_card.dart';
import 'package:flutter/material.dart';

class Part02 extends StatelessWidget {
  const Part02({super.key});

  final double _marginSize = 20;
  final double _paddingSize = 12;

  @override
  Widget build(BuildContext context) {
    const List<Map<String, Object>> productData = [
      {"name": "Socks", "quantity": 12, "price": 125.0},
      {"name": "Socks", "quantity": 12, "price": 125.0},
      {"name": "Socks", "quantity": 12, "price": 125.0},
      {"name": "Socks", "quantity": 12, "price": 125.0},
    ];
    return Center(
      child: Container(
        margin: EdgeInsets.all(_marginSize),
        padding: EdgeInsets.all(_paddingSize),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
        ),

        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 700),
          child: ListView(
            children: productData
                .map(
                  (productDataElement) => ProductDisplayCard(
                    productName: productDataElement["name"] as String,
                    productPrice: productDataElement["price"] as double,
                    productStockQuantity: productDataElement["quantity"] as int,
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
