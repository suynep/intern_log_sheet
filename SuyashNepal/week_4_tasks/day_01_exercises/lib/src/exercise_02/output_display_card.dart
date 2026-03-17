import 'package:day_01_exercises/src/exercise_02/form_data_model.dart';
import 'package:flutter/material.dart';

class OutputDisplayCard extends StatelessWidget {
  const OutputDisplayCard({super.key});

  @override
  Widget build(BuildContext context) {
    var inputOne = FormDataModel.of(context)?.dummyInputOne;
    var inputTwo = FormDataModel.of(context)?.dummyInputTwo;
    var selectedColor = FormDataModel.of(context)?.color;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Outputs:"),
            if (inputOne != null) Text(inputOne),
            if (inputTwo != null) Text(inputTwo),
            if (selectedColor != null)
              Row(
                children: [
                  Text("Selected: "),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(color: selectedColor),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
