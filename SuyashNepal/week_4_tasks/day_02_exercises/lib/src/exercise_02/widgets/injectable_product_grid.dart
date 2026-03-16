import 'package:day_02_exercises/src/exercise_02/model/product.dart';
import 'package:day_02_exercises/src/exercise_02/widgets/product_box.dart';
import 'package:flutter/material.dart';

class InjectableProductGrid extends StatelessWidget {
  const InjectableProductGrid({super.key, required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 500),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: products.length,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => ProductBox(product: products[index]),
      ),
    );
  }
}
