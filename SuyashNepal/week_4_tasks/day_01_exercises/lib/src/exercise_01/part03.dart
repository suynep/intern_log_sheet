import 'package:day_01_exercises/src/exercise_01/part03_model_and_widgets/model.dart';
import 'package:flutter/material.dart';

class Part03 extends StatelessWidget {
  const Part03({super.key});

  final double _marginSize = 20;
  final double _paddingSize = 12;

  @override
  Widget build(BuildContext context) {
    const List<Map<String, Object>> userData = [
      {
        "name": "Maxim dirte Souqes",
        "gender": Gender.male,
        "age": 24,
        "image": "assets/placeholders/1000x2000.png",
      },
      {
        "name": "Pliques Waeshnds",
        "gender": Gender.female,
        "age": 24,
        "image": "assets/placeholders/1000x2000.png",
      },
    ];
    return Center(
      child: Container(
        margin: EdgeInsets.all(_marginSize),
        padding: EdgeInsets.all(_paddingSize),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
        ),

        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 700),
          child: ListView(
            children: userData
                .map(
                  (e) => UserCard(
                    name: e["name"] as String,
                    gender: e["gender"] as Gender,
                    age: e["age"] as int,
                    imagePath: e["image"] as String,
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  UserCard({
    super.key,
    required this.name,
    required this.gender,
    required this.age,
    required this.imagePath,
  });

  final String name;
  final int age;
  final Gender gender;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    final infoFieldTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
    );
    return Card(child: _cardBody(context, infoFieldTextStyle));
  }

  Column _cardBody(BuildContext context, TextStyle infoFieldTextStyle) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(child: _getNameTitleField(context)),
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 100),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: CircleAvatar(
                foregroundImage: AssetImage(imagePath),
                minRadius: 42,
              ),
            ),
          ),
        ),
        Spacer(flex: 2),
        Flexible(
          child: _getInfoRow(
            context,
            name: Text("Gender", style: infoFieldTextStyle),
            value: gender == Gender.male
                ? Icon(Icons.male, color: Theme.of(context).colorScheme.primary)
                : gender == Gender.other
                ? Icon(
                    Icons.circle,
                    color: Theme.of(context).colorScheme.primary,
                  )
                : Icon(
                    Icons.female,
                    color: Theme.of(context).colorScheme.primary,
                  ),
          ),
        ),
        Flexible(
          child: _getInfoRow(
            context,
            name: Text("Age ", style: infoFieldTextStyle),
            value: Text(age.toString(), style: infoFieldTextStyle),
          ),
        ),
      ],
    );
  }

  Widget _getNameTitleField(BuildContext context) {
    final nameTitleFieldTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
      fontSize: 32,
    );
    return Text(name, style: nameTitleFieldTextStyle);
  }

  Widget _getInfoRow(
    BuildContext context, {
    required Widget name,
    required Widget value,
    Icon? icon,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (icon != null) Flexible(child: icon),
        Flexible(child: name),
        Flexible(child: value),
      ],
    );
  }
}
