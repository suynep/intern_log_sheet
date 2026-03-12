import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final double price;
  final String imageUrl;
  final void Function() onAddToCart;

  const ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Image.network(
              imageUrl,
              height: 100,
              errorBuilder: (context, error, stackTrace) =>
                  Icon(Icons.image),
            ),
            const SizedBox(height: 10),
            Text(
              name,
              style: const TextStyle(fontSize: 18),
            ),
            Text("Rs.${price.toStringAsFixed(2)}"),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: onAddToCart,
              child: const Text("Add to Cart"),
            ),
          ],
        ),
      ),
    );
  }
}
