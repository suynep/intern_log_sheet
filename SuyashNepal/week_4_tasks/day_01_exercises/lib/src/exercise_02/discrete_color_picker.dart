import 'package:day_01_exercises/src/exercise_02/form_data_model.dart';
import 'package:flutter/material.dart';

class DiscreteColorPicker extends StatefulWidget {
  DiscreteColorPicker({super.key});

  final List<(int, int, int)> rgbColors = [
    (255, 86, 86),
    (96, 255, 160),
    (104, 104, 255),
    (255, 250, 103),
    (242, 128, 255),
    (92, 209, 255),
  ];

  @override
  State<DiscreteColorPicker> createState() => _DiscreteColorPickerState();
}

class _DiscreteColorPickerState extends State<DiscreteColorPicker> {
  late final List<Color> colors;
  late Color defaultColor;
  late Color selectedColor;

  @override
  void initState() {
    super.initState();

    colors = widget.rgbColors
        .map((e) => Color.fromARGB(255, e.$1, e.$2, e.$3))
        .toList();
    colors.add(Color.fromARGB(255, 94, 255, 0));
    defaultColor = colors.last;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      initialValue: defaultColor,
      onChanged: (value) => setState(() {
        selectedColor = value as Color;
      }),
      items: [
        ...colors.map(
          (e) => DropdownMenuItem(
            value: e,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(color: e),
            ),
          ),
        ),
      ],
      onSaved: (newValue) =>
          FormDataModel.of(context)?.onUpdate(color: newValue as Color),
    );
  }
}
