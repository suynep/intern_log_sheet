import 'package:day_02_exercises/src/exercise_02/model/user_ip.dart';
import 'package:day_02_exercises/src/exercise_02/providers/user_ip_data_model.dart';
import 'package:day_02_exercises/src/exercise_02/widgets/user_ip_list_tile.dart';
import 'package:flutter/material.dart';

// - [ ] Build ListView.builder with 50+ items
// - [ ] Add item separators

/*
Frame Timeline Diagram
Frame N (current frame, user swipes):

User swipes Dismissible → onDismissed fires
 └─> Calls onUpdate(updatedList) in UserIpDataModelProvider
       └─> Calls setState()
             └─> Marks the provider as dirty, schedules rebuild for next frame
 └─> Dismissible finishes swipe animation
 └─> END OF CURRENT FRAME
      ^ 
      └─ Flutter sees Dismissible still in widget tree
         → Throws: "A dismissed Dismissible widget is still part of the tree"

Frame N+1 (next frame, rebuild occurs):

UserIpDataModelProvider rebuilds
 └─> Notifies dependents (UserIpListView)
       └─> UserIpListView rebuilds with updated list
             └─> Dismissed tile is no longer in the tree
 └─> WidgetsBinding.postFrameCallback executes
       └─> Snackbar is shown (context is stable, Dismissible gone)
*/

class UserIpListView extends StatelessWidget {
  const UserIpListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<UserIp> userIps = UserIpDataModel.of(context).userIps;
    var scaffoldMessenger = ScaffoldMessenger.of(context);
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 500),
      child: ListView.separated(
        itemCount: userIps.length,
        itemBuilder: (context, index) {
          var user = userIps[index];
          return Dismissible(
            key: ValueKey(user.ulid),
            onDismissed: (direction) {
              var removedUser = user;
              var removedIndex = userIps.indexOf(user);
              List<UserIp> allUserIps = List.from(
                UserIpDataModel.of(context).userIps,
              );
              allUserIps.removeWhere((e) => e == user);
              UserIpDataModel.of(context).onUpdate(allUserIps);
              WidgetsBinding.instance.addPostFrameCallback((_) {
                scaffoldMessenger.showSnackBar(
                  SnackBar(
                    content: Text("User ${user.fName} ${user.lName} deleted!"),
                    duration: Duration(milliseconds: 1200),
                    action: SnackBarAction(
                      onPressed: () {
                        var restoredUserIps = List<UserIp>.from(
                          UserIpDataModel.of(context).userIps,
                        )..insert(removedIndex, removedUser);
                        UserIpDataModel.of(context).onUpdate(restoredUserIps);
                      },
                      label: "UNDO",
                    ),
                  ),
                );
              });
            },
            child: UserIpListTile(userIp: user),
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 6),
      ),
    );
  }
}
