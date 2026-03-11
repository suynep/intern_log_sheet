import 'package:day_01_exercises/src/exercise_03/log_dataclass.dart';
import 'package:day_01_exercises/src/exercise_03/log_location.dart';
import 'package:day_01_exercises/src/exercise_03/log_type.dart';
import 'package:day_01_exercises/src/exercise_03/logs_data_model.dart';
import 'package:flutter/material.dart';

class ErrorShowStatefulContainer extends StatefulWidget {
  const ErrorShowStatefulContainer({super.key});

  @override
  State<ErrorShowStatefulContainer> createState() =>
      _ErrorShowStatefulContainerState();
}

class _ErrorShowStatefulContainerState
    extends State<ErrorShowStatefulContainer> {
  List<Log> initialLogs = [];
  bool initialLogsKept = false;

  @override
  void initState() {
    super.initState();

    if (!initialLogsKept) {
      initialLogs.add(
        Log(
          logLocation: LogLocation.initState,
          eventDescription: "initState of ErrorShowStatefulContainer",
        ),
      );
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!initialLogsKept) {
      initialLogsKept = true;

      initialLogs.add(
        Log(
          logLocation: LogLocation.didUpdateDependencies,
          eventDescription:
              "didUpdateDependencies of ErrorShowStatefulContainerState",
        ),
      );

      WidgetsBinding.instance.addPostFrameCallback((_) {
        for (var log in initialLogs) {
          LogsDataModel.of(context).onUpdateSingle(log);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton.icon(
            onPressed: () => setState(() {
              LogsDataModel.of(context).onUpdateSingle(
                Log(
                  logLocation: LogLocation.build,
                  logType: LogType.error,
                  eventDescription:
                      "Clicked `Error Show` Button in ErrorShowStatefulContainer",
                ),
              );
            }),
            label: Text("Log Error"),
            icon: Icon(Icons.error),
          ),
        ],
      ),
    );
  }
}
