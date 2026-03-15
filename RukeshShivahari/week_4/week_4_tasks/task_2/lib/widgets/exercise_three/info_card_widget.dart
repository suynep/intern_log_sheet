import 'package:flutter/material.dart';

class InfoCardWidget extends StatelessWidget {

  final String title;

  const InfoCardWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(16),
      height: 150,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.orange.shade200,
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

           Flexible(
             child: Text(
               "Exercise Three Responsive layout Exercise Three Responsive Layout"
               "Exercise Three Responsive layout Exercise Three Responsive Layout "
               "Exercise Three Responsive layout Exercise Three Responsive Layout",
               maxLines: 5,
              //  overflow: TextOverflow.fade,
             ),
           ),
        ],
      ),
    );
  }
}