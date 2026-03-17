import 'package:flutter/material.dart';

class SidebarWidget extends StatelessWidget {
  const SidebarWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.blue.shade100,
      padding: const EdgeInsets.all(16),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: const [

          Text(
            "Menu",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20),

          Text("Dashboard"),
          SizedBox(height: 10),

          Text("Analytics"),
          SizedBox(height: 10),

          Text("Settings"),
        ],
      ),
    );
  }
}