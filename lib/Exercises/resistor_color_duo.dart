class ResistorColorDuo {
  int value(List<String> colors) {
    if (colors.isEmpty) return -1;

    Map<String, int> mapResistorColors = {
      "black": 0,
      "brown": 1,
      "red": 2,
      "orange": 3,
      "yellow": 4,
      "green": 5,
      "blue": 6,
      "violet": 7,
      "grey": 8,
      "white": 9
    };

    return int.parse((mapResistorColors[colors[0]].toString()) +
        mapResistorColors[colors[1]].toString());
  }
}
