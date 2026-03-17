import 'package:day_01_exercises/src/exercise_01/part01_model_and_widgets/model.dart';
import 'package:day_01_exercises/src/exercise_01/part01_model_and_widgets/music_genre_card.dart';
import 'package:flutter/material.dart';

class Part01 extends StatelessWidget {
  const Part01({super.key});

  final double _marginSize = 20;

  @override
  Widget build(BuildContext context) {
    const List<Map<String, Object>> musicData = [
      {
        "title": "Clouds across the Sky",
        "musicGenre": MusicGenre.jazz,
        "subtitle": "Joyce Trio",
      },
      {
        "title": "Loving on a Lonely Street",
        "musicGenre": MusicGenre.jazz,
        "subtitle": "The Ebbing Tides",
      },
      {
        "title": "falkor",
        "musicGenre": MusicGenre.progRock,
        "subtitle": "Covet",
      },
      {
        "title": "Handmade Cities",
        "musicGenre": MusicGenre.progRock,
        "subtitle": "Plini",
      },
      {
        "title": "Flowerchild",
        "musicGenre": MusicGenre.rnb,
        "subtitle": "Jay Squared",
      },
      {
        "title": "Passenger Princess",
        "musicGenre": MusicGenre.hiphop,
        "subtitle": "Amine",
      },
      {
        "title": "Immigrant Song",
        "musicGenre": MusicGenre.classicRock,
        "subtitle": "Led Zeppelin",
      },
      {
        "title": "Kevin's Heart",
        "musicGenre": MusicGenre.hiphop,
        "subtitle": "J. Cole",
      },
      {
        "title": "dodger blue",
        "musicGenre": MusicGenre.hiphop,
        "subtitle": "Kendrick Lamar",
      },
      {
        "title": "doomed",
        "musicGenre": MusicGenre.rnb,
        "subtitle": "Souly Had",
      },
    ];
    return Center(
      child: Container(
        margin: EdgeInsets.all(_marginSize),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
        ),

        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 700),
          child: ListView(
            children: musicData
                .map(
                  (musicDataElement) => MusicGenreCard(
                    title: musicDataElement["title"] as String,
                    musicGenre: musicDataElement["musicGenre"] as MusicGenre,
                    subtitle: musicDataElement["subtitle"] as String,
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
