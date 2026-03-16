import 'package:day_02_exercises/src/exercise_02/model/product.dart';
import 'package:day_02_exercises/src/exercise_02/model/user_ip.dart';
import 'package:day_02_exercises/src/exercise_02/providers/mixed_data_model.dart';
import 'package:day_02_exercises/src/exercise_02/providers/product_data_model.dart';
import 'package:day_02_exercises/src/exercise_02/providers/user_ip_data_model.dart';
import 'package:day_02_exercises/src/exercise_02/utils/product_manager.dart';
import 'package:day_02_exercises/src/exercise_02/utils/user_ip_manager.dart';
import 'package:day_02_exercises/src/exercise_02/widgets/mixed_scrollable_view.dart';
import 'package:day_02_exercises/src/exercise_02/widgets/product_grid.dart';
import 'package:day_02_exercises/src/exercise_02/widgets/user_ip_list_view.dart';
import 'package:flutter/material.dart';

class DynamicListGridDisplayPage extends StatefulWidget {
  const DynamicListGridDisplayPage({super.key});

  @override
  State<DynamicListGridDisplayPage> createState() =>
      _DynamicListGridDisplayPageState();
}

class _DynamicListGridDisplayPageState
    extends State<DynamicListGridDisplayPage> {
  int currentIndex = 0;
  List<UserIp> initialUserIps = [];
  List<Product> initialProducts = [];
  bool isLoading = true;

  void loadData() async {
    var results = await Future.wait([
      UserIpManager().loadUsers(100),
      ProductManager().loadProducts(50),
    ]);

    if (!mounted) return;

    var uIps = results[0] as List<UserIp>;
    var p = results[1] as List<Product>;

    setState(() {
      initialUserIps = uIps;
      initialProducts = p;
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) => setState(() {
            currentIndex = value;
          }),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: "User ListView",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_3x3),
              label: "Product GridView",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.miscellaneous_services),
              label: "Mixed",
            ),
          ],
        ),
        body: () {
          if (isLoading) return CircularProgressIndicator();

          switch (currentIndex) {
            case 0:
              return UserIpDataModelProvider(
                init: initialUserIps,
                child: UserIpListView(),
              );
            case 1:
              return ProductDataModelProvider(
                init: initialProducts,
                child: ProductGrid(),
              );

            default:
              return MixedDataModelProvider(child: MixedScrollableView());
          }
        }(),
      ),
    );
  }
}
