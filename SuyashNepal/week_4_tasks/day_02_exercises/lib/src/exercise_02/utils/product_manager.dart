import 'dart:convert';
// import 'dart:io';
import 'dart:math';
import 'package:flutter/services.dart';
// import 'package:path/path.dart';

import 'package:day_02_exercises/src/exercise_02/model/product.dart';

class ProductManager {
  static List<DateTime> loadTimeCache = [];

  /// load `n` products from the mock CSV
  // !TODO: make this async
  Future<List<Product>> loadProducts(int n, {String? path}) async {
    // path =
    //     path ??
    //     join(
    //       Directory.current.path,
    //       "../../../../assets/mock_data/product.json",
    //     );

    String jsonString = await rootBundle.loadString("assets/mock_data/products.json");

    Object allData = jsonDecode(jsonString);
    var products = <Product>[];

    int count = 0;

    if (allData is List) {
      while (count < min(n, allData.length)) {
        var productDatum = allData[count++];
        products.add(Product.fromJson(productDatum));
      }
    }

    if (products.isNotEmpty) {
      loadTimeCache.insert(0, DateTime.now());
    }

    return products;
  }
}
