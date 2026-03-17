import 'package:day_02_exercises/src/exercise_02/model/product.dart';
import 'package:flutter/material.dart';

class ProductBox extends StatelessWidget {
  const ProductBox({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 300, maxHeight: 300),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(product.name),
              Text(product.description),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(child: Chip(label: Text(product.category))),
                  Flexible(
                    child: Chip(label: Text(product.price.toStringAsFixed(2))),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
