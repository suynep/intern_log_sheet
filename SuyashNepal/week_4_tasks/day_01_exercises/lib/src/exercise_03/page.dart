import 'package:day_01_exercises/src/exercise_03/do_something_stateful_container.dart';
import 'package:day_01_exercises/src/exercise_03/error_show_container.dart';
import 'package:day_01_exercises/src/exercise_03/logs_data_model_provider.dart';
import 'package:day_01_exercises/src/exercise_03/logs_list_view.dart';
import 'package:day_01_exercises/src/exercise_03/navigator_button.dart';
import 'package:flutter/material.dart';

class Exercise03 extends StatelessWidget {
  const Exercise03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
        ),

        child: LogsDataModelProvider(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    DoSomethingStatefulContainer(),
                    ErrorShowStatefulContainer(),
                    NavigatorButton(),
                  ],
                ),
                Flexible(child: LogsListView()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
