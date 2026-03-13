# Daily Intern Log: Day 3

### **Intern: Suchana Pokhrel**

## Focus: Gestures, Forms & Input Handling

### Tasks Completed

- Learned about gestures and all their properties
- Understood about dismisible widgets
- Learned about forn handling and input

### Technical "Today I Learned" (TIL)

Code:
import 'package:all_flutter_task/practice_question/exercise2/resuables/custom_align_text_field.dart';
import 'package:all_flutter_task/practice_question/exercise2/resuables/custom_button_click.dart';
import 'package:all_flutter_task/practice_question/exercise2/resuables/custom_input_field.dart';
import 'package:flutter/material.dart';

class InputFields extends StatefulWidget {
  const InputFields({super.key});

  @override
  State<InputFields> createState() => _InputFieldsState();
}

class _InputFieldsState extends State<InputFields> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  List<bool> isChecked = [false, false, false];

  //to store the value which will be updated once setstate is called.
  String currentName = '';
  String currentEmail = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
  }

  void openDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Column(
          children: [
            Text('Name: ${nameController.text}'),
            Text('Email: ${emailController.text}'),
          ],
        ),
      ),
    );
  }

  void resetButton() {
    nameController.clear();
    emailController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 22, 54, 80),
        title: Text('Interactive Form', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            //name
            CustomAlignTextField(text: 'Full Name:'),
            SizedBox(height: 10),
            CustomInputField(
              labelText: 'Name',
              hintText: 'Enter full name',
              controller: nameController,
            ),
            SizedBox(height: 10),
            //email
            CustomAlignTextField(text: 'Email Address:'),
            SizedBox(height: 10),
            CustomInputField(
              labelText: 'Email',
              hintText: 'Enter Email Address',
              controller: emailController,
            ),
            SizedBox(height: 10),

            Row(
              children: [
                Checkbox(
                  value: isChecked[0],
                  onChanged: (value) => setState(() {
                    isChecked[0] = value!;
                  }),
                ),
                Text('Dart'),

                Checkbox(
                  value: isChecked[1],
                  onChanged: (value) => setState(() {
                    isChecked[1] = value!;
                  }),
                ),
                Text('Python'),

                Checkbox(
                  value: isChecked[2],
                  onChanged: (value) => setState(() {
                    isChecked[2] = value!;
                  }),
                ),
                Text('Java'),
              ],
            ),
            //button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButtonClick(
                  text: 'Submit',
                  color: Colors.blue,
                  onPressed: openDialog,
                ),
                CustomButtonClick(
                  text: 'Reset',
                  color: Color.fromARGB(255, 96, 117, 134),
                  onPressed: resetButton,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

### Work Evidence

- Documentation Read:[https://api.flutter.dev/flutter/material/TextField-class.html]

### Blockers and Challenges

- None
### 💬 Mentor Feedback

(To be filled by Mentor):
