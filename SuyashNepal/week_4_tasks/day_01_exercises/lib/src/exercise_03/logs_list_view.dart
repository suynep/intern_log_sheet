import 'package:day_01_exercises/src/exercise_03/log_list_tile.dart';
import 'package:day_01_exercises/src/exercise_03/logs_data_model.dart';
import 'package:flutter/material.dart';

class LogsListView extends StatelessWidget {
  const LogsListView({super.key});

  @override
  Widget build(BuildContext context) {
    final logsData = LogsDataModel.of(context).logs;
    return Container(
      width: 800,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
      ),
      child: ListView.separated(
        itemCount: logsData.length,
        itemBuilder: (context, index) {
          return LogListTile(log: logsData[index]);
        },
        separatorBuilder: (context, index) => SizedBox(height: 10),
      ),
    );
  }
}
