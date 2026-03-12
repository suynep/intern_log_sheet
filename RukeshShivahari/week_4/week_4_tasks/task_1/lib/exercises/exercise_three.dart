import 'package:flutter/material.dart';
import 'package:flutter_tasks/widgets/exercise_three/custom_state_widget.dart';

class ExerciseThree extends StatefulWidget {
  const ExerciseThree({super.key});

  @override
  State<ExerciseThree> createState() =>
      _ExerciseThreeState();
}

class _ExerciseThreeState extends State<ExerciseThree> {
  int _counter = 0;
  bool _isCustomStateWidgetChildVisible = true;

  void _increaseCounterByOne() {
    setState(() {
      _counter++;
    });
  }

  void _decreaseCounterByOne() {
    if (_counter > 0) setState(() => _counter--);
  }

  @override
  void initState() {
    super.initState();
    debugPrint("Logs : Parent State Initiated");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint(
      "Logs : In Parent, Parent dependencies changed",
    );
  }

  @override
  void didUpdateWidget(covariant ExerciseThree oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint("Logs :In Parent, Parent widget updated");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Colors.green),
      child: Column(
        children: [
          TextButton(
            onPressed: () => setState(
              () => _isCustomStateWidgetChildVisible =
                  !_isCustomStateWidgetChildVisible,
            ),
            child: Text("Show Child Widget"),
          ),
          _isCustomStateWidgetChildVisible
              ? CustomStateWidget(
                  onIncrease: _increaseCounterByOne,
                  onDecrease: _decreaseCounterByOne,
                  parentCounter: _counter,
                )
              : Text("Child is destroyed"),
          Switch(
            value: _isCustomStateWidgetChildVisible,
            onChanged: (bool? isChanged) => setState(() {
              _isCustomStateWidgetChildVisible =
                  !_isCustomStateWidgetChildVisible;
            }),
          ),
        ],
      ),
    );
  }
}
