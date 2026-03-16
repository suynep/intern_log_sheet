import 'package:day_02_exercises/src/exercise_02/model/product.dart';
import 'package:flutter/material.dart';

class ProductDataModel extends InheritedWidget {
  final List<Product> products;
  final void Function(Product) onUpdateSingle;
  final void Function(List<Product>) onUpdate;

  const ProductDataModel({
    super.key,
    required this.products,
    required this.onUpdateSingle,
    required this.onUpdate,
    required super.child,
  });

  static ProductDataModel of(BuildContext context) {
    var result = context.dependOnInheritedWidgetOfExactType<ProductDataModel>();
    assert(result != null, "No ProductDataModel found in the context.");
    return result!;
  }

  @override
  bool updateShouldNotify(ProductDataModel oldWidget) {
    return products != oldWidget.products;
  }
}

class ProductDataModelProvider extends StatefulWidget {
  const ProductDataModelProvider({super.key, required this.child, this.init});

  final Widget child;
  final List<Product>? init;

  @override
  State<ProductDataModelProvider> createState() =>
      _ProductDataModelProviderState();
}

class _ProductDataModelProviderState extends State<ProductDataModelProvider> {
  late List<Product> products;

  @override
  void initState() {
    super.initState();
    products = widget.init ?? [];
  }

  /// callback for entire list replacement
  void update(List<Product> newProducts) {
    setState(() {
      /* NOTE: Something I learned from trial/error:
       * We use `List.from` constructor to create a NEW list in memory, 
       * instead of pointing to the old, stale one. 
       * This helps in the InheritedWidget-covariant's `updateShouldNotify` method, 
       * where the equality (==) comparison is between Collection objects 
       * (which, obviously, should point to different references in-memory to return a `true`)
      */
      products = List.from(newProducts);
    });
  }

  /// callback for single addition
  void updateSingle(Product newProduct) {
    setState(() {
      products = List.from(products)..add(newProduct);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ProductDataModel(
      products: products,
      onUpdateSingle: updateSingle,
      onUpdate: update,
      child: widget.child,
    );
  }
}
