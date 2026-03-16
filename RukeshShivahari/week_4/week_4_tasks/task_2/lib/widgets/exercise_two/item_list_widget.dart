import 'package:flutter/material.dart';

class ItemListWidget extends StatefulWidget {
  const ItemListWidget({super.key});

  @override
  State<ItemListWidget> createState() =>
      _ItemListWidgetState();
}

class _ItemListWidgetState extends State<ItemListWidget> {
  bool isTapped = false;
  int _tappedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),

        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 50,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      selectedTileColor: Colors.blue,
                      selected: _tappedIndex == index,
                      leading: Icon(Icons.app_settings_alt),
                      onTap: () => setState(() {
                        _tappedIndex = index;
                      }),
                      title: Text(
                        "Item no ${index + 1}",

                        style: TextStyle(
                          color: _tappedIndex == index
                              ? Colors.red
                              : Colors.black,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.amber,
                      thickness: 2,
                    ),
                  ],
                );
              },
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                shrinkWrap: true,
                physics:
                    const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                crossAxisCount: 2,
                children: List.generate(5, (index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                        255,
                        236,
                        253,
                        176,
                      ),
                    ),
                    child: Text(
                      "Product number ${index + 1}",
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
