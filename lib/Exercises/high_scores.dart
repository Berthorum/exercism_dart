class HighScores {
  final List<int> scores;

  HighScores(this.scores);

  int latest() {
    return scores.last;
  }

  int personalBest() {
    List<int> ascendentScoreList = List.of(scores);
    ascendentScoreList = ascendingOrderList(ascendentScoreList);
    return ascendentScoreList.last;
  }

  List<int> personalTopThree() {
    List<int> ascendentScoreList = List.of(scores);
    ascendentScoreList = ascendingOrderList(ascendentScoreList);
    if (ascendentScoreList.length == 1) {
      return [ascendentScoreList.first];
    }

    if (ascendentScoreList.length == 2) {
      return [
        ascendentScoreList.last,
        ascendentScoreList[ascendentScoreList.length - 2],
      ];
    }

    return [
      ascendentScoreList.last,
      ascendentScoreList[ascendentScoreList.length - 2],
      ascendentScoreList[ascendentScoreList.length - 3]
    ];
  }

  List<int> ascendingOrderList(List<int> list) {
    int aux = 0;

    for (int i = 0; i < list.length; i++) {
      for (int j = i + 1; j < list.length; j++) {
        if (list[i] > list[j]) {
          aux = list[i];
          list[i] = list[j];
          list[j] = aux;
        }
      }
    }
    return list;
  }
}
