import 'package:flutter/material.dart';

class FormDataModel extends InheritedWidget {
  const FormDataModel({
    super.key,
    required this.dummyInputOne,
    required this.dummyInputTwo,
    required this.color,
    required this.checkBoxValues,
    required this.onUpdate,
    required super.child,
  });

  final String dummyInputOne;
  final String dummyInputTwo;
  final Color color;
  final List<String> checkBoxValues;

  final void Function({
    String? one,
    String? two,
    Color? color,
    List<String>? checkBoxValues,
  })
  onUpdate;

  static FormDataModel? of(BuildContext context) {
    final FormDataModel? result = context
        .dependOnInheritedWidgetOfExactType<FormDataModel>();
    assert(result != null, "No FormDataModel found in context!");
    return result!;
  }

  @override
  bool updateShouldNotify(FormDataModel oldWidget) {
    return dummyInputOne != oldWidget.dummyInputOne ||
        dummyInputTwo != oldWidget.dummyInputTwo ||
        checkBoxValues != oldWidget.checkBoxValues ||
        color != oldWidget.color;
  }
}
