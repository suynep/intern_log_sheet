import 'dart:io';

import 'package:day_01_exercises/src/exercise_02/discrete_color_picker.dart';
import 'package:day_01_exercises/src/exercise_02/diverse_text_input_field.dart';
import 'package:day_01_exercises/src/exercise_02/form_data_model.dart';
import 'package:flutter/material.dart';

class DiverseFormWidget extends StatefulWidget {
  const DiverseFormWidget({super.key});

  @override
  State<DiverseFormWidget> createState() => _DiverseFormWidgetState();
}

class _DiverseFormWidgetState extends State<DiverseFormWidget> {
  GlobalKey<FormState> diverseFormKey = GlobalKey<FormState>();
  late final void Function(String?) _onSavedDummyInputOne;
  late final void Function(String?) _onSavedDummyInputTwo;
  late final String? Function(String?) _validator;

  @override
  void initState() {
    super.initState();
    stdout.write("[DEBUG] State of Form Initialized\n");
    _onSavedDummyInputOne = (String? newValue) {
      if (newValue != null) {
        FormDataModel.of(context)?.onUpdate(one: newValue, two: null);
      }
    };
    _onSavedDummyInputTwo = (String? newValue) {
      if (newValue != null) {
        FormDataModel.of(context)?.onUpdate(one: null, two: newValue);
      }
    };
    _validator = (String? value) {
      if (value == null || value.trim() == "") {
        return "Cannot be empty";
      } else if (value.toLowerCase().contains("gibberish")) {
        return "Cannot contain 'gibberish'";
      }
      return null;
    };
  }

  void _onSubmit() {
    if (diverseFormKey.currentState!.validate()) {
      diverseFormKey.currentState!.save();
    }
  }

  @override
  void dispose() {
    super.dispose();
    stdout.write(
      "[DEBUG] State of Form Disposed\n",
    ); // note how this gets called when you navigate to any other tab
  }


  @override
  void deactivate() {
    super.deactivate();
    stdout.write(
      "[DEBUG] State of Form Deactivated\n",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: diverseFormKey,
      child: Column(
        spacing: 12,
        children: [
          DiverseTextInputField(
            label: "Dummy Input One",
            onSaved: _onSavedDummyInputOne,
            validator: _validator,
          ),
          DiverseTextInputField(
            label: "Dummy Input Two",
            onSaved: _onSavedDummyInputTwo,
            validator: _validator,
          ),
          DiscreteColorPicker(),
          TextButton.icon(
            onPressed: _onSubmit,
            label: Text("Submit"),
            icon: Icon(Icons.check),
          ),
        ],
      ),
    );
  }
}
