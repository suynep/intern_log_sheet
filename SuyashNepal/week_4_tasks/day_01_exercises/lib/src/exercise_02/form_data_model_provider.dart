import 'package:day_01_exercises/src/exercise_02/form_data_model.dart';
import 'package:flutter/material.dart';

class FormDataModelProvider extends StatefulWidget {
  const FormDataModelProvider({super.key, required this.child});
  final Widget child;

  @override
  State<FormDataModelProvider> createState() => _FormDataModelProviderState();
}

class _FormDataModelProviderState extends State<FormDataModelProvider> {
  String dummyInputOne = '';
  String dummyInputTwo = '';
  Color defaultDummyColor = Color.fromARGB(255, 94, 255, 0);
  List<String> defaultDummyCheckBoxValues = [];

  void update({
    String? one,
    String? two,
    Color? color,
    List<String>? checkBoxValues,
  }) {
    setState(() {
      if (one != null) {
        dummyInputOne = one;
      }
      if (two != null) {
        dummyInputTwo = two;
      }
      if (color != null) {
        defaultDummyColor = color;
      }
      if (checkBoxValues != null) {
        defaultDummyCheckBoxValues = checkBoxValues;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return FormDataModel(
      dummyInputOne: dummyInputOne,
      dummyInputTwo: dummyInputTwo,
      color: defaultDummyColor,
      checkBoxValues: defaultDummyCheckBoxValues,
      onUpdate: update,
      child: widget.child,
    );
  }
}
