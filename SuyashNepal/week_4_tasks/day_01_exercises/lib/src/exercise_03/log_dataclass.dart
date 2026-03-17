import 'package:day_01_exercises/src/exercise_03/log_location.dart';
import 'package:day_01_exercises/src/exercise_03/log_type.dart';

/// A data class for logged events
class Log {
  const Log({
    required this.logLocation,
    required this.eventDescription,
    LogType? logType,
  }) : logType = logType ?? LogType.info;
  final LogLocation logLocation;
  final LogType logType;

  /// It's a good practice to mention the widget in which the event occurred
  final String eventDescription;

  @override
  String toString() {
    return "${logType.name.toUpperCase()}: ${logLocation.name} ";
  }
}
