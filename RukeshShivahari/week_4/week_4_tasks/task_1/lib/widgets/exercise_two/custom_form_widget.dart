import 'package:flutter/material.dart';
import 'package:flutter_tasks/widgets/exercise_two/color_chip_widget.dart';

class CustomFormWidget extends StatefulWidget {
  const CustomFormWidget({super.key});
  @override
  State<CustomFormWidget> createState() {
    return _CustomFormWidget();
  }
}

enum ColorOption { red, blue, green, black }

class _CustomFormWidget extends State<CustomFormWidget> {
  //Username and Email TextEditing Controllers
  final TextEditingController _usernameController =
      TextEditingController();
  final TextEditingController _emailController =
      TextEditingController();

  bool _isCheckedTerms = false;
  bool _isShowColorOption = false;

  Color _selectedColor = Colors.white;
  String _username = "";
  String _email = "";

  void _submitForm() {
    setState(() {
      _username = _usernameController.text;
      _email = _emailController.text;
    });
  }

  void resetForm() {
    setState(() {
      _usernameController.clear();
      _emailController.clear();

      _username = '';
      _email = '';

      _isCheckedTerms = false;
      _isShowColorOption = false;
      _selectedColor = Colors.white;
    });
  }

  Color _getCorrespondingColor(ColorOption color) {
    Color col = switch (color) {
      ColorOption.red => Colors.red,
      ColorOption.blue => Colors.blue,
      ColorOption.green => Colors.green,
      ColorOption.black => Colors.black,
      // null => Colors.white,
    };
    return col;
  }

  ColorOption? _getCorrespondingColorName(Color color) {
    ColorOption? colorName = switch (color) {
      Colors.red => ColorOption.red,
      Colors.blue => ColorOption.blue,
      Colors.green => ColorOption.green,
      Colors.black => ColorOption.black,
      _ => null,
    };
    return colorName;
  }

  @override
  void initState() {
    super.initState();
    _usernameController.text = "Unknown";
    _emailController.text = "Unknown@unknown.com";
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _usernameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 40,
            children: [
              const Text(
                "Custom Form",
                style: TextStyle(fontSize: 32),
              ),

              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: "Username",
                  border: UnderlineInputBorder(),
                ),
              ),

              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: UnderlineInputBorder(),
                ),
              ),

              CheckboxListTile(
                title: const Text(
                  "Accept the terms & conditions",
                ),
                value: _isCheckedTerms,
                onChanged: (bool? isCheckedTerms) =>
                    setState(() {
                      _isCheckedTerms = isCheckedTerms!;
                    }),
              ),

              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,

                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text("Pick your color"),
                  SizedBox(width: 20, height: 20),

                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () => setState(() {
                          _isShowColorOption =
                              !_isShowColorOption;
                        }),
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(
                                _selectedColor,
                              ),
                        ),
                        child: Text(
                          "Choose Color",
                          style: TextStyle(
                            fontSize: 20,
                            color: const Color.fromARGB(
                              255,
                              212,
                              209,
                              186,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 10),

                      Visibility(
                        visible: _isShowColorOption,
                        maintainSize: true,
                        maintainAnimation: true,
                        maintainState: true,
                        child: SizedBox(
                          height: 100,
                          width: 300,
                          child: Wrap(
                            spacing: 10,

                            alignment: WrapAlignment.center,
                            children: [
                              ...ColorOption.values.map(
                                (val) => ColorBoxWidget(
                                  _getCorrespondingColor(
                                    val,
                                  ),

                                  _selectedColor ==
                                      _getCorrespondingColor(
                                        val,
                                      ),

                                  onPressed: () => setState(
                                    () {
                                      _selectedColor =
                                          _getCorrespondingColor(
                                            val,
                                          );
                                    },
                                  ),
                                ),
                              ),

                              // ColorBoxWidget(
                              //   _getCorrespondingColor(
                              //     ColorOption.blue,
                              //   ),
                              //   onPressed: () => setState(() {
                              //     _selectedColor =
                              //         _getCorrespondingColor(
                              //           ColorOption.blue,
                              //         );
                              //   }),
                              // ),
                              // ColorBoxWidget(
                              //   _getCorrespondingColor(
                              //     ColorOption.red,
                              //   ),
                              //   onPressed: () => setState(() {
                              //     _selectedColor =
                              //         _getCorrespondingColor(
                              //           ColorOption.red,
                              //         );
                              //   }),
                              // ),
                              // ColorBoxWidget(
                              //   _getCorrespondingColor(
                              //     ColorOption.green,
                              //   ),
                              //   onPressed: () => setState(() {
                              //     _selectedColor =
                              //         _getCorrespondingColor(
                              //           ColorOption.green,
                              //         );
                              //   }),
                              // ),
                              // ColorBoxWidget(
                              //   _getCorrespondingColor(
                              //     ColorOption.black,
                              //   ),
                              //   onPressed: () => setState(() {
                              //     _selectedColor =
                              //         _getCorrespondingColor(
                              //           ColorOption.black,
                              //         );
                              //   }),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () => _submitForm(),
                    child: Text("Submit"),
                  ),

                  OutlinedButton(
                    onPressed: () => resetForm(),
                    child: Text("Reset Form"),
                  ),
                ],
              ),

              const Divider(),
              const Text(
                "Details you have entered",
                style: TextStyle(fontSize: 20),
              ),

              Text("Name: $_username "),
              Text("Email: $_email"),

              Row(
                children: [
                  Text(
                    "Selected Color: ${_getCorrespondingColorName(_selectedColor)?.name.toUpperCase() ?? "Nothing"}",
                  ),
                ],
              ),
              Text(
                "Accepted Terms and Conditions: ${_isCheckedTerms ? "Agreed" : "Unchecked"}",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
