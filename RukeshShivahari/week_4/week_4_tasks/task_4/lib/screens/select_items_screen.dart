import 'package:flutter/material.dart';
import '../widgets/confirm_items_dialog.dart';
import '../widgets/shipping_bottom_sheet.dart';
import '../models/order.dart';
import 'confirm_order_screen.dart';

class SelectItemsScreen extends StatefulWidget {
  const SelectItemsScreen({super.key});

  @override
  State<SelectItemsScreen> createState() => _SelectItemsScreenState();
}

class _SelectItemsScreenState extends State<SelectItemsScreen> {
  final List<String> items = ["Laptop", "Phone", "Headphones"];
  final Set<String> selectedItems = {};

  Future<void> _startCheckout() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (_) => ConfirmItemsDialog(items: selectedItems.toList()),
    );

    if (confirmed != true) return;

    final address = await showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      builder: (_) => const ShippingBottomSheet(),
    );

    if (address == null) return;

    final order = Order(items: selectedItems.toList(), shippingAddress: address);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ConfirmOrderScreen(order: order),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      child: Scaffold(
        appBar: AppBar(title: const Text("Step 1: Select Items")),
        body: Column(
          children: [
            const LinearProgressIndicator(value: 0.25),
           
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 369
                ),
                child: ListView(
                  children: items.map((item) {
                    return CheckboxListTile(
                      title: Text(item),
                      value: selectedItems.contains(item),
                      onChanged: (v) {
                        setState(() {
                          v!
                              ? selectedItems.add(item)
                              : selectedItems.remove(item);
                        });
                      },
                    );
                  }).toList(),
                ),
              ),
           
            ElevatedButton(
              onPressed: selectedItems.isEmpty ? null : _startCheckout,
              child: const Text("Next"),
            )
          ],
        ),
      ),
    );
  }
}