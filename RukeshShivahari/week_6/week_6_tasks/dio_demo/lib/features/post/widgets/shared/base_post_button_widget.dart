import 'package:flutter/material.dart';

class BasePostButtonWidget extends StatefulWidget {
  final String name;
  final Future Function() handlePostAction;
  const BasePostButtonWidget({
    super.key,
    required this.name,
    required this.handlePostAction,
  });

  @override
  State<BasePostButtonWidget> createState() =>
      _BasePostButtonWidgetState();
}

class _BasePostButtonWidgetState
    extends State<BasePostButtonWidget> {
  bool isLoading = false;

  void onPressButton() async {
    if (isLoading) return;

    setState(() => isLoading = true);

    try {
      await widget.handlePostAction();

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height - 50,
            left: 20,
            right: 20,
          ),
          duration: Durations.medium2,
          content: Text(
            'Successfully completed the ${widget.name.toLowerCase()}',
          ),
        ),
      );
    } finally {
      if (mounted) {
        setState(() => isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressButton(),
      child: isLoading
          ? const CircularProgressIndicator(
              color: Colors.white,
            )
          : Text(widget.name),
    );
  }
}
