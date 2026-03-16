  
  import 'package:flutter/material.dart';

class MortgageResultWidget extends StatelessWidget {
final double  monthlyPayment;
  const MortgageResultWidget(this.monthlyPayment,{super.key});
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(24),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: [
            Colors.purple.shade200,
            Colors.deepPurple.shade400,
          ],
        ),
      ),

      child: Column(
        children: [

          const Text(
            "Monthly Payment",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 18,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            "\$${monthlyPayment.toStringAsFixed(2)}",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),


        ],
      ),
    );
  }


}
 