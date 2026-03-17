import 'package:flutter/material.dart';

class CustomStateWidget extends StatefulWidget {
  final int _parentCounter;
  final void Function() onIncrease;
  final void Function() onDecrease;

  const CustomStateWidget({
    super.key,
    required this.onDecrease,
    required this.onIncrease,
    parentCounter,
  }) : _parentCounter = parentCounter;

  @override
  State<CustomStateWidget> createState() =>
      _CustomStateWidgetState();
}

class _CustomStateWidgetState
    extends State<CustomStateWidget> {
  @override
  void initState() {
    super.initState();
    debugPrint("Logs : Child Init State Execute");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint("Logs : In child, dependencies changed");
  }

  @override
  void didUpdateWidget(
    covariant CustomStateWidget oldWidget,
  ) {
    super.didUpdateWidget(oldWidget);

    debugPrint(
      "In child, old widget : $oldWidget \t sand new widget:$widget",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Counter Value is : ${widget._parentCounter}",
          ),

          ElevatedButton(
            onPressed: widget.onIncrease,
            child: Text("+"),
          ),
          ElevatedButton(
            onPressed: widget.onDecrease,
            child: Text("-"),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    debugPrint("Logs : In child, dispose executed");
  }

  @override
  void deactivate() {
    super.deactivate();

    debugPrint("Logs : In child, deactivated");
  }
}
