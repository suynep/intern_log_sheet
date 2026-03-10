import 'package:day_01_exercises/src/exercise_03/log_dataclass.dart';
import 'package:day_01_exercises/src/exercise_03/log_type.dart';
import 'package:flutter/material.dart';

class LogListTile extends StatelessWidget {
  const LogListTile({super.key, required this.log});

  final Log log;

  IconData _getAssociatedLogIcon() {
    switch (log.logType) {
      case LogType.info:
        return Icons.info;
      case LogType.error:
        return Icons.error;
      case LogType.debug:
        return Icons.circle;
    }
  }

  Color _getAssociatedColor() {
    switch (log.logType) {
      case LogType.info:
        return Colors.green.shade400;
      case LogType.error:
        return Colors.red.shade500;
      case LogType.debug:
        return Colors.blue.shade500;
    }
  }

  @override
  Widget build(BuildContext context) {
    final eventDescriptionTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
    );
    return ListTile(
      leading: SizedBox(
        width: 250,
        child: Row(
          children: [
            Icon(_getAssociatedLogIcon(), color: _getAssociatedColor()),
            Spacer(),
            Text(
              log.toString(),
              style: TextStyle(color: _getAssociatedColor()),
            ),
          ],
        ),
      ),

      title: Text(log.eventDescription, style: eventDescriptionTextStyle),
    );
  }
}
