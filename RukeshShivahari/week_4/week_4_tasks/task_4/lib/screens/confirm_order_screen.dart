import 'package:flutter/material.dart';
import '../models/order.dart';
import 'success_screen.dart';

class ConfirmOrderScreen extends StatelessWidget {
  final Order order;

  const ConfirmOrderScreen({super.key, required this.order});

  void _placeOrder(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const SuccessScreen()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      child: Scaffold(
        appBar: AppBar(title: const Text("Step 4: Confirm Order")),
        body: Column(
          children: [
            const LinearProgressIndicator(value: 0.75),
            const SizedBox(height: 20),

            const Text("Items:"),
            ...order.items.map((e) => Text(e)),

            const SizedBox(height: 20),
            Text("Shipping: ${order.shippingAddress}"),

            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => _placeOrder(context),
              child: const Text("Place Order"),
            )
          ],
        ),
      ),
    );
  }
}