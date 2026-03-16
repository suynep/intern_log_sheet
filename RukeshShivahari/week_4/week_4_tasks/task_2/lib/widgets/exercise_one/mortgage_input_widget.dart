import 'dart:math';

import 'package:flutter/material.dart';

class MortgageInputWidget extends StatefulWidget {

  final void Function(double) onPressCalculateMortgage;
  const MortgageInputWidget(this.onPressCalculateMortgage,{super.key});

  @override
  State<MortgageInputWidget> createState() => _MortgageInputWidgetState();
}

class _MortgageInputWidgetState extends State<MortgageInputWidget> {
  
    final loanController = TextEditingController();
  final rateController = TextEditingController();
  final termController = TextEditingController();


  void calculateMortgage() {

    double loan = double.tryParse(loanController.text) ?? 0;
    double rate = double.tryParse(rateController.text) ?? 0;
    double years = double.tryParse(termController.text) ?? 0;

    double monthlyRate = rate / 100 / 12;
    double months = years * 12;

    if (loan == 0 || monthlyRate == 0 || months == 0) return;

    double payment = loan *
        (monthlyRate * pow((1 + monthlyRate), months)) /
        (pow((1 + monthlyRate), months) - 1);

  widget.onPressCalculateMortgage(payment);
  }

  @override
  Widget build(BuildContext context) {
  
    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.blue.shade50,
          ],
        ),
      ),

      child: Column(
        children: [

          buildInputRow(
            icon: Icons.attach_money,
            label: "Loan Amount",
            controller: loanController,
          ),

          const SizedBox(height: 16),

          buildInputRow(
            icon: Icons.percent,
            label: "Interest Rate %",
            controller: rateController,
          ),

          const SizedBox(height: 16),

          buildInputRow(
            icon: Icons.calendar_today,
            label: "Loan Term (Years)",
            controller: termController,
          ),

          const SizedBox(height: 20),

          Container(
            width: double.infinity,
            height: 50,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: const LinearGradient(
                colors: [
                  Colors.green,
                  Colors.teal
                ],
              ),
            ),

            child: Material(
              color: Colors.transparent,

              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: calculateMortgage,

                child: const Center(
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  



  }
}


  Widget buildInputRow({
    required IconData icon,
    required String label,
    required TextEditingController controller,
  }) {
    return Row(
      children: [

        Icon(icon),

        const SizedBox(width: 12),

        Expanded(
          child: TextField(
            controller: controller,
            keyboardType: TextInputType.number,

            decoration: InputDecoration(
              labelText: label,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
      ],
    );
  }


