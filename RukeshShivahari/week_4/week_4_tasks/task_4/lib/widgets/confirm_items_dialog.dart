import 'package:flutter/material.dart';

class ConfirmItemsDialog extends StatelessWidget {
  final List<String> items;

  const ConfirmItemsDialog({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Confirm Items"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: items.map((e) => Text(e)).toList(),
      ),
      actions: [
        ElevatedButton(
          onPressed: () => Navigator.pop(context, true),
          child: const Text("Confirm"),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: const Text("Cancel"),
        ),
      ],
    );
  }
}