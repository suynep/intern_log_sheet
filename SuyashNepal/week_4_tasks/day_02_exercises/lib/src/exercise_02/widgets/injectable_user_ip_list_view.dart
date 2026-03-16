import 'package:day_02_exercises/src/exercise_02/model/user_ip.dart';
import 'package:day_02_exercises/src/exercise_02/providers/mixed_data_model.dart';
import 'package:day_02_exercises/src/exercise_02/widgets/user_ip_list_tile.dart';
import 'package:flutter/material.dart';

class InjectableUserIpListView extends StatelessWidget {
  const InjectableUserIpListView({
    super.key,
    required this.userIps,
    required this.clusterIndex,
  });

  final List<UserIp> userIps;
  final int clusterIndex;

  @override
  Widget build(BuildContext context) {
    var allData = MixedDataModel.of(context).mixedData;
    var scaffoldMessenger = ScaffoldMessenger.of(context);
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 500),
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: userIps.length,
        itemBuilder: (context, index) {
          var user = userIps[index];
          return Dismissible(
            key: ValueKey(user.ulid),
            onDismissed: (_) {
              var updatedInnerList = List<UserIp>.from(userIps)..remove(user);
              var updatedFullList = List<List<Object>>.from(allData)
                ..removeAt(clusterIndex)
                ..insert(clusterIndex, updatedInnerList);

              print("");
              print("INDEX: $clusterIndex, UPDATEDVALUE: $updatedInnerList");

              MixedDataModel.of(context).onUpdate(updatedFullList);

              WidgetsBinding.instance.addPostFrameCallback((_) {
                scaffoldMessenger.showSnackBar(
                  SnackBar(
                    content: Text("Deleted ${user.fName} ${user.lName}"),
                  ),
                );
              });
            },
            child: UserIpListTile(userIp: userIps[index]),
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 6),
      ),
    );
  }
}
