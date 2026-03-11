import 'package:day_01_exercises/src/exercise_02/diverse_form_widget.dart';
import 'package:day_01_exercises/src/exercise_02/output_display_card.dart';
import 'package:flutter/material.dart';

class Exercise02 extends StatelessWidget {
  Exercise02({super.key});

  final formContainerBorderRadius = BorderRadius.circular(12);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: formContainerBorderRadius,
          color: Theme.of(context).colorScheme.primaryContainer,
        ),

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: DiverseFormWidget(),
            ),
            OutputDisplayCard(),
          ],
        ),
      ),
    );
  }
}
