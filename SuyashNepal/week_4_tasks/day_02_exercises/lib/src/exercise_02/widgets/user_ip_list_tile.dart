import 'package:day_02_exercises/src/exercise_02/model/user_ip.dart';
import 'package:day_02_exercises/src/exercise_02/providers/user_ip_data_model.dart';
import 'package:flutter/material.dart';

enum SubtitleFieldType {
  email,
  ulid,
  ipv4,
  gender;

  String getFieldLabel() {
    switch (this) {
      case email:
        return "Email";
      case ulid:
        return "ID";
      case ipv4:
        return "IPv4";
      case gender:
        return "Gender";
    }
  }
}

class UserIpListTile extends StatelessWidget {
  const UserIpListTile({super.key, required this.userIp});

  final UserIp userIp;

  Widget _getSubtitleField(SubtitleFieldType type, String value) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // START: anon func
        // get a relevant icon
        () {
          switch (type) {
            case SubtitleFieldType.email:
              return Icon(Icons.email);
            case SubtitleFieldType.ulid:
              return Icon(Icons.person);
            case SubtitleFieldType.ipv4:
              return Icon(Icons.wifi);
            case SubtitleFieldType.gender:
              return Icon(Icons.circle);
          }
        }(),
        SizedBox(width: 12),
        // END: anon func
        SizedBox(width: 300, child: Text(value, overflow: TextOverflow.ellipsis)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("${userIp.fName} ${userIp.lName}"),
        subtitle: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _getSubtitleField(SubtitleFieldType.email, userIp.email),
            _getSubtitleField(SubtitleFieldType.gender, userIp.gender),
            _getSubtitleField(SubtitleFieldType.ipv4, userIp.ipv4),
            _getSubtitleField(SubtitleFieldType.ulid, userIp.ulid),
          ],
        ),
      ),
    );
  }
}
