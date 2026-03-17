import 'package:flutter/material.dart';

class DiverseTextInputField extends StatefulWidget {
  const DiverseTextInputField({
    super.key,
    required this.label,
    required this.onSaved,
    required this.validator,
  });
  final String label;
  final void Function(String?) onSaved;
  final String? Function(String?) validator;

  @override
  State<DiverseTextInputField> createState() => _DiverseTextInputFieldState();
}

class _DiverseTextInputFieldState extends State<DiverseTextInputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text.rich(
          TextSpan(
            children: [
              TextSpan(text: "${widget.label} "),
              TextSpan(text: "(add anything)", style: TextStyle(fontSize: 11)),
            ],
          ),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        fillColor: Theme.of(context).colorScheme.secondaryContainer,
      ),
      onSaved: (newValue) => widget.onSaved(newValue),
      validator: (value) => widget.validator(value),
    );
  }
}
