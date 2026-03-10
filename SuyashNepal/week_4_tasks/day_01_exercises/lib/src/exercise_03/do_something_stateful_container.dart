import 'package:day_01_exercises/src/exercise_03/log_dataclass.dart';
import 'package:day_01_exercises/src/exercise_03/log_location.dart';
import 'package:day_01_exercises/src/exercise_03/log_type.dart';
import 'package:day_01_exercises/src/exercise_03/logs_data_model.dart';
import 'package:flutter/material.dart';

class DoSomethingStatefulContainer extends StatefulWidget {
  const DoSomethingStatefulContainer({super.key});

  @override
  State<DoSomethingStatefulContainer> createState() =>
      _DoSomethingStatefulContainerState();
}

class _DoSomethingStatefulContainerState
    extends State<DoSomethingStatefulContainer> {
  List<Log> initialLogs = [];
  bool initialLogsKept = false;

  @override
  void initState() {
    super.initState();

    if (!initialLogsKept) {
      initialLogs.add(
        Log(
          logLocation: LogLocation.initState,
          eventDescription: "initState of DoSomethingStatefulContainerState",
        ),
      );
    }
  }

  @override
  void didUpdateWidget(DoSomethingStatefulContainer oldWidget) {
    super.didUpdateWidget(oldWidget);

    LogsDataModel.of(context).onUpdateSingle(
      Log(
        logLocation: LogLocation.didUpdateWidget,
        eventDescription:
            "didUpdateWidget of DoSomethingStatefulContainerState",
      ),
    );
  }

  @override
  void deactivate() {
    super.deactivate();
    LogsDataModel.of(context).onUpdateSingle(
      Log(
        logLocation: LogLocation.didUpdateWidget,
        logType: LogType.debug,
        eventDescription: "deactivate of DoSomethingStatefulContainerState",
      ),
    );
  }

  @override
  void dispose() {
    LogsDataModel.of(context).onUpdateSingle(
      Log(
        logLocation: LogLocation.didUpdateWidget,
        logType: LogType.debug,
        eventDescription: "dispose of DoSomethingStatefulContainerState",
      ),
    );
    super.dispose();
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
              "didUpdateDependencies of DoSomethingStatefulContainerState",
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
            onPressed: () => LogsDataModel.of(context).onUpdateSingle(
              Log(
                logLocation: LogLocation.build,
                eventDescription:
                    "Clicked `Do Something` Button in DoSomethingStatefulContainer",
              ),
            ),
            label: Text("Do Something"),
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
