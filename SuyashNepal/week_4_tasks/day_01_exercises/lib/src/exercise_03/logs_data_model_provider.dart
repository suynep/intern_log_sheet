import 'package:day_01_exercises/src/exercise_03/log_dataclass.dart';
import 'package:day_01_exercises/src/exercise_03/logs_data_model.dart';
import 'package:flutter/material.dart';

class LogsDataModelProvider extends StatefulWidget {
  const LogsDataModelProvider({super.key, required this.child});
  final Widget child;

  @override
  State<LogsDataModelProvider> createState() => _LogsDataModelProviderState();
}

class _LogsDataModelProviderState extends State<LogsDataModelProvider> {
  List<Log> defaultLogs = [];

  /// Updates the entire log data of `LogsDataModel` InheritedWidget Covariant with a new one.
  void update(List<Log> logs) {
    setState(() {
      defaultLogs = List.from(logs);
    });
  }

  /// Appends to the entire log data of `LogsDataModel` InheritedWidget Covariant with the provided `Log`.
  void updateSingle(Log log) {
    setState(() {
      defaultLogs = List.from(defaultLogs)..insert(0, log);
    });
  }

  @override
  Widget build(BuildContext context) {
    return LogsDataModel(
      logs: defaultLogs,
      onUpdate: update,
      onUpdateSingle: updateSingle,
      child: widget.child,
    );
  }
}
