import 'package:day_01_exercises/src/exercise_03/log_dataclass.dart';
import 'package:day_01_exercises/src/exercise_03/log_location.dart';
import 'package:day_01_exercises/src/exercise_03/logs_data_model.dart';
import 'package:day_01_exercises/src/exercise_03/to_navigate_to.dart';
import 'package:flutter/material.dart';

class NavigatorButton extends StatelessWidget {
  const NavigatorButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      label: Text("Navigate Somewhere"),
      icon: Icon(Icons.navigate_next),
      onPressed: () {
        LogsDataModel.of(context).onUpdateSingle(
          Log(
            logLocation: LogLocation.build,
            eventDescription: "Navigating to Another Page",
          ),
        );
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ToNavigateTo(parentContext: context),
          ),
        );
      },
    );
  }
}
