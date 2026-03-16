import 'package:day_02_exercises/src/exercise_02/model/product.dart';
import 'package:day_02_exercises/src/exercise_02/model/user_ip.dart';
import 'package:day_02_exercises/src/exercise_02/providers/mixed_data_model.dart';
import 'package:day_02_exercises/src/exercise_02/widgets/injectable_product_grid.dart';
import 'package:day_02_exercises/src/exercise_02/widgets/injectable_user_ip_list_view.dart';
import 'package:flutter/material.dart';

class MixedScrollableView extends StatefulWidget {
  const MixedScrollableView({super.key});

  @override
  State<MixedScrollableView> createState() => _MixedScrollableViewState();
}

class _MixedScrollableViewState extends State<MixedScrollableView> {
  @override
  Widget build(BuildContext context) {
    List<List<Object>> mixedDataList = MixedDataModel.of(context).mixedData;
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 900) {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: mixedDataList
                    .asMap()
                    .entries
                    .map(
                      (entry) => GridOrListWidget(
                        widgetData: entry.value,
                        clusterIndex: entry.key,
                      ),
                    )
                    .toList(),
              ),
            );
          } else {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: mixedDataList
                    .asMap()
                    .entries
                    .map(
                      (entry) => GridOrListWidget(
                        widgetData: entry.value,
                        clusterIndex: entry.key,
                      ),
                    )
                    .toList(),
              ),
            );
          }
        },
      ),
    );
  }
}

class GridOrListWidget extends StatelessWidget {
  const GridOrListWidget({
    super.key,
    required this.widgetData,
    required this.clusterIndex,
  });

  final List<Object> widgetData;
  final int clusterIndex;

  @override
  Widget build(BuildContext context) {
    if (widgetData is List<Product>) {
      return InjectableProductGrid(products: widgetData as List<Product>);
    } else if (widgetData is List<UserIp>) {
      return InjectableUserIpListView(
        userIps: widgetData as List<UserIp>,
        clusterIndex: clusterIndex,
      );
    } else {
      print("Returning Container... ${widgetData.runtimeType}");
      return Container(); // fallback
    }
  }
}
