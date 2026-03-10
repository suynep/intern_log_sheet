import 'package:flutter/material.dart';
import 'package:day_01_exercises/src/exercise_01/part01_model_and_widgets/model.dart';

class MusicGenreCard extends StatelessWidget {
  final String title;
  final MusicGenre musicGenre;
  final String subtitle;
  final double _containerRadiusBig = 24;
  final double _containerRadiusSmall = 6;

  const MusicGenreCard({
    super.key,
    required this.title,
    required this.musicGenre,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(_containerRadiusBig),
          topRight: Radius.circular(_containerRadiusSmall),
          bottomRight: Radius.circular(_containerRadiusBig),
          bottomLeft: Radius.circular(_containerRadiusSmall),
        ),
      ),
      child: _cardBody(context),
    );
  }

  Widget _cardBody(BuildContext context) {
    final titleStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
      fontSize: 32,
    );
    final subTitleStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
      fontSize: 24,
    );
    final double genreFieldSize = 14;
    final genreLabelStyle = TextStyle(
      color: Theme.of(context).colorScheme.secondary,
      fontSize: genreFieldSize,
    );
    final genreIconColor = Theme.of(context).colorScheme.secondary;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(flex: 2, child: Text(title, style: titleStyle)),
        Flexible(child: Text(subtitle, style: subTitleStyle)),
        Spacer(),
        Flexible(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.music_note,
                color: genreIconColor,
                size: genreFieldSize,
              ),
              Text(musicGenre.actualName, style: genreLabelStyle),
            ],
          ),
        ),
      ],
    );
  }
}
