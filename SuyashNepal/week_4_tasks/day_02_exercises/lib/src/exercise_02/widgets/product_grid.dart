import 'package:day_02_exercises/src/exercise_02/model/product.dart';
import 'package:day_02_exercises/src/exercise_02/providers/product_data_model.dart';
import 'package:day_02_exercises/src/exercise_02/widgets/product_box.dart';
import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> products = ProductDataModel.of(context).products;
    return GridView.builder(
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemBuilder: (context, index) => ProductBox(product: products[index]),
    );
  }
}
