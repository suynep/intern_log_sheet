import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:path/path.dart';

import 'package:day_02_exercises/src/exercise_02/model/user_ip.dart';

class UserIpManager {
  static List<DateTime> loadTimeCache = [];

  /// load `n` users from the mock CSV
  // !TODO: make this async
  Future<List<UserIp>> loadUsers(int n, {String? path}) async {
    // path =
    //     path ?? join(Directory.current.path, "../../../../assets/mock_data/user_ip.json");

    String jsonString = await rootBundle.loadString(
      "assets/mock_data/user_ip.json",
    );
    Object allData = jsonDecode(jsonString);
    var users = <UserIp>[];

    int count = 0;

    if (allData is List) {
      while (count < min(n, allData.length)) {
        var userDatum = allData[count++];
        users.add(UserIp.fromJson(userDatum));
      }
    }

    if (users.isNotEmpty) {
      loadTimeCache.insert(0, DateTime.now());
    }

    return users;
  }
}
