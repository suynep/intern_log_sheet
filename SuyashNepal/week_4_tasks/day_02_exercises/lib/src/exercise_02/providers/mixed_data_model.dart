import 'dart:math';

import 'package:day_02_exercises/src/exercise_02/model/product.dart';
import 'package:day_02_exercises/src/exercise_02/model/user_ip.dart';
import 'package:day_02_exercises/src/exercise_02/utils/product_manager.dart';
import 'package:day_02_exercises/src/exercise_02/utils/user_ip_manager.dart';
import 'package:flutter/material.dart';

/// This InheritedWidget handles clusters of `Product` or `UserIp` in a safe manner.
/// Some operations might be redundant, I need to double check.
class MixedDataModel extends InheritedWidget {
  final List<List<Object>> mixedData;
  final void Function(List<Object>) onUpdateSingle;
  final void Function(List<List<Object>>) onUpdate;

  const MixedDataModel({
    super.key,
    required this.mixedData,
    required this.onUpdateSingle,
    required this.onUpdate,
    required super.child,
  });

  static MixedDataModel of(BuildContext context) {
    var result = context.dependOnInheritedWidgetOfExactType<MixedDataModel>();
    assert(result != null, "No MixedDataModel found in the context.");
    return result!;
  }

  @override
  bool updateShouldNotify(MixedDataModel oldWidget) {
    return mixedData != oldWidget.mixedData;
  }
}

class MixedDataModelProvider extends StatefulWidget {
  const MixedDataModelProvider({super.key, required this.child});

  final Widget child;

  @override
  State<MixedDataModelProvider> createState() => _MixedDataModelProviderState();
}

/// We initiate the Mixed Data (Product clusters and UserIp clusters) here.
class _MixedDataModelProviderState extends State<MixedDataModelProvider> {
  List<List<Object>> mixedData = [];
  List<UserIp> userIps = [];
  List<Product> products = [];
  static const int userIpClusterMinLength = 7;
  static const int userIpClusterMaxLength = 20;
  static const int productClusterMinLength = 7;
  static const int productClusterMaxLength = 20;
  static const int mixedDataLength = 50;

  bool isLoading = true;

  void loadData() async {
    var results = await Future.wait([
      UserIpManager().loadUsers(100),
      ProductManager().loadProducts(50),
    ]);

    var uIps = results[0] as List<UserIp>;
    var p = results[1] as List<Product>;

    if (!mounted) return;

    setState(() {
      userIps = uIps;
      products = p;
      int count = 0;

      while (count < mixedDataLength) {
        bool addUserData = Random().nextBool();
        if (addUserData) {
          int rangeCount =
              Random().nextInt(
                userIpClusterMaxLength - userIpClusterMinLength,
              ) +
              userIpClusterMinLength;
          int rangeStart = Random().nextInt(
            userIps.length - rangeCount,
          ); // in order to safely access elements (within data pool array bounds)
          mixedData.add(
            userIps.getRange(rangeStart, rangeStart + rangeCount).toList(),
          );
          count += rangeCount;
        } else {
          int rangeCount =
              Random().nextInt(
                productClusterMaxLength - productClusterMinLength,
              ) +
              productClusterMinLength;
          int rangeStart = Random().nextInt(
            products.length - rangeCount,
          ); // in order to safely access elements (within data pool array bounds)
          mixedData.add(
            products.getRange(rangeStart, rangeStart + rangeCount).toList(),
          );
          count += rangeCount;
        }

        isLoading = false;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  /// callback for entire list replacement
  void update(List<List<Object>> newMixedList) {
    setState(() {
      /* NOTE: Something I learned from trial/error:
       * We use `List.from` constructor to create a NEW list in memory, 
       * instead of pointing to the old, stale one. 
       * This helps in the InheritedWidget-covariant's `updateShouldNotify` method, 
       * where the equality (==) comparison is between Collection objects 
       * (which, obviously, should point to different references in-memory to return a `true`)
      */
      mixedData = List<List<Object>>.from(
        newMixedList.map((e) {
          if (e.isNotEmpty && e is List<UserIp>) {
            return List<UserIp>.from(e);
          } else if (e.isNotEmpty && e is List<Product>) {
            return List<Product>.from(e);
          } else {
            return List<Object>.from(e);
          }
        }).toList(),
      );
    });
  }

  /// callback for single addition
  void updateSingle(List<Object> newMixed) {
    setState(() {
      mixedData = List<List<Object>>.from(
        mixedData.map((e) {
          return List<Object>.from(e);
        }).toList(),
      )..add(newMixed);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) return CircularProgressIndicator();

    return MixedDataModel(
      mixedData: mixedData,
      onUpdateSingle: updateSingle,
      onUpdate: update,
      child: widget.child,
    );
  }
}
