import 'package:day_02_exercises/src/exercise_02/model/user_ip.dart';
import 'package:flutter/material.dart';

class UserIpDataModel extends InheritedWidget {
  final List<UserIp> userIps;
  final void Function(UserIp) onUpdateSingle;
  final void Function(List<UserIp>) onUpdate;

  const UserIpDataModel({
    super.key,
    required this.userIps,
    required this.onUpdateSingle,
    required this.onUpdate,
    required super.child,
  });

  static UserIpDataModel of(BuildContext context) {
    var result = context.dependOnInheritedWidgetOfExactType<UserIpDataModel>();
    assert(result != null, "No UserIpDataModel found in the context.");
    return result!;
  }

  @override
  bool updateShouldNotify(UserIpDataModel oldWidget) {
    return userIps != oldWidget.userIps;
  }
}

class UserIpDataModelProvider extends StatefulWidget {
  const UserIpDataModelProvider({super.key, required this.child, this.init});

  final Widget child;
  final List<UserIp>? init;

  @override
  State<UserIpDataModelProvider> createState() =>
      _UserIpDataModelProviderState();
}

class _UserIpDataModelProviderState extends State<UserIpDataModelProvider> {
  late List<UserIp> userIps;

  @override
  void initState() {
    super.initState();
    userIps = widget.init ?? [];
  }

  /// callback for entire list replacement
  void update(List<UserIp> newUserIps) {
    setState(() {
      /* NOTE: Something I learned from trial/error:
       * We use `List.from` constructor to create a NEW list in memory, 
       * instead of pointing to the old, stale one. 
       * This helps in the InheritedWidget-covariant's `updateShouldNotify` method, 
       * where the equality (==) comparison is between Collection objects 
       * (which, obviously, should point to different references in-memory to return a `true`)
      */
      userIps = List.from(newUserIps);
    });
  }

  /// callback for single addition
  void updateSingle(UserIp newUserIp) {
    setState(() {
      userIps = List.from(userIps)..add(newUserIp);
    });
  }

  @override
  Widget build(BuildContext context) {
    return UserIpDataModel(
      userIps: userIps,
      onUpdateSingle: updateSingle,
      onUpdate: update,
      child: widget.child,
    );
  }
}
