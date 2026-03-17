import 'package:flutter/material.dart';

class ShippingBottomSheet extends StatefulWidget {
  const ShippingBottomSheet({super.key});

  @override
  State<ShippingBottomSheet> createState() => _ShippingBottomSheetState();
}

class _ShippingBottomSheetState extends State<ShippingBottomSheet> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 16,
        right: 16,
        top: 16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Step 3: Enter Shipping",
            style: TextStyle(fontSize: 18),
          ),
          TextField(
            controller: controller,
            decoration: const InputDecoration(labelText: "Address"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, controller.text);
            },
            child: const Text("Continue"),
          ),
        ],
      ),
    );
  }
}