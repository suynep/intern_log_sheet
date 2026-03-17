import 'package:day_01_exercises/src/exercise_03/log_dataclass.dart';
import 'package:flutter/material.dart';

class LogsDataModel extends InheritedWidget {
  const LogsDataModel({
    super.key,
    required this.logs,
    required super.child,
    required this.onUpdate,
    required this.onUpdateSingle,
  });

  /// Every log that has occurred til now
  final List<Log> logs;
  final void Function(List<Log>) onUpdate;
  final void Function(Log) onUpdateSingle;

  static LogsDataModel of(BuildContext context) {
    var result = context.dependOnInheritedWidgetOfExactType<LogsDataModel>();
    assert(
      result != null,
      "No LogsModel InheritedWidget found in the context.",
    );
    return result!;
  }

  @override
  bool updateShouldNotify(LogsDataModel oldWidget) {
    return logs!= oldWidget.logs;
  }
}
