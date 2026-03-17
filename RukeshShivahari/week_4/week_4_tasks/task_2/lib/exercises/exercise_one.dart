import 'dart:math';
import 'package:flutter/material.dart';
import 'package:task_2/widgets/exercise_one/mortgage_input_widget.dart';
import 'package:task_2/widgets/exercise_one/mortgage_result_widget.dart';

class ExerciseOne extends StatelessWidget {
  const ExerciseOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MortgageScreen(),
    );
  }
}

class MortgageScreen extends StatefulWidget {
  const MortgageScreen({super.key});

  @override
  State<MortgageScreen> createState() => _MortgageScreenState();
}

class _MortgageScreenState extends State<MortgageScreen> {

  final loanController = TextEditingController();
  final rateController = TextEditingController();
  final termController = TextEditingController();

  double monthlyPayment = 0;
  void onPressCalculateMortgage(double value) {

    setState(() {
     monthlyPayment =  value;
      
    });
  }


  @override
  Widget build(BuildContext context) {
debugPrint("Changes $monthlyPayment");
    final width = MediaQuery.of(context).size.width;
    final isTablet = width > 600;

    return Scaffold(
      backgroundColor: Colors.grey[200],

      appBar: AppBar(
        title: const Text("Mortgage Calculator"),
        centerTitle: true,
      ),

      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: const LinearGradient(
                        colors: [
                          Colors.blue,
                          Colors.indigo
                        ],
                      ),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [

                        Text(
                          "Home Mortgage",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 8),

                        Text(
                          "Estimate your monthly loan payment",
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    left: 10,
                    top: -10,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),

                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: const Text(
                        "NEW",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),

              const SizedBox(height: 20),

              /// RESPONSIVE LAYOUT
              isTablet
                  ? Row(
                      children: [
                        Expanded(child: MortgageInputWidget(onPressCalculateMortgage)),
                        const SizedBox(width: 20),
                        Expanded(child:MortgageResultWidget(monthlyPayment)),
                      ],
                    )
                  : Column(
                      children: [
                        MortgageInputWidget(onPressCalculateMortgage),
                        const SizedBox(height: 20),
                        MortgageResultWidget(monthlyPayment),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}



