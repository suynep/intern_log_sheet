import 'package:day_01_exercises/src/exercise_03/log_dataclass.dart';
import 'package:day_01_exercises/src/exercise_03/log_location.dart';
import 'package:day_01_exercises/src/exercise_03/logs_data_model.dart';
import 'package:flutter/material.dart';

class ToNavigateTo extends StatelessWidget {
  const ToNavigateTo({super.key, required this.parentContext});

  final BuildContext parentContext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("You Navigated!"),
        leading: IconButton(
          onPressed: () {
            LogsDataModel.of(parentContext).onUpdateSingle(
              Log(
                logLocation: LogLocation.build,
                eventDescription: "Navigating Back from Another Page",
              ),
            );
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(child: Container(child: Text("Hello!"))),
    );
  }
}
