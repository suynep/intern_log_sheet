enum MusicGenre {
  jazz,
  pop,
  rnb,
  hiphop,
  classicRock,
  progRock;

  const MusicGenre();

  String get actualName {
    switch (this) {
      case jazz:
        return "Jazz";
      case pop:
        return "Pop";
      case rnb:
        return "R&B";
      case hiphop:
        return "Hip Hop";
      case classicRock:
        return "Classic Rock";
      case progRock:
        return "Progressive Rock";
    }
  }
}
