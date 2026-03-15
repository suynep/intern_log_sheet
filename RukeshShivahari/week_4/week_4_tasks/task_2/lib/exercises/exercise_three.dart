import 'package:flutter/material.dart';
import 'package:task_2/widgets/exercise_three/info_card_widget.dart';
import 'package:task_2/widgets/exercise_three/sidebar_widget.dart';

class ExerciseThree extends StatelessWidget {
  const ExerciseThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercise Three Responsive Layout"),
      ),

      body: LayoutBuilder(
        builder: (context, constraints) {

          /// NARROW SCREEN (PHONE)
          if (constraints.maxWidth < 600) {
            return SingleChildScrollView(
              child: Column(
                children: const [
                  SidebarWidget(),
                  InfoCardWidget(title: "Card 1"),
                  InfoCardWidget(title: "Card 2"),
                  InfoCardWidget(title: "Card 3"),
                  InfoCardWidget(title: "Card 4"),
                  InfoCardWidget(title: "Card 5"),

                ],
              ),
            );
          }

          /// WIDE SCREEN (TABLET / DESKTOP)
          else {
            return Row(
              children: [

                /// SIDEBAR
                const Flexible(
                  flex: 2,
                  child: SidebarWidget(),
                ),

                /// MAIN CONTENT
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(16),

                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      // childAspectRatio: 0.7,
                      children: const [
                        InfoCardWidget(title: "Card 1"),
                        InfoCardWidget(title: "Card 2"),
                        InfoCardWidget(title: "Card 3"),
                        InfoCardWidget(title: "Card 4"),
                        InfoCardWidget(title: "Card 5"),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}