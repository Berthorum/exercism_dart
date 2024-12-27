class BeerSong {
  List<String> recite(int numBottles, int timesToRecite) {
    List<String> result = [];
    int totalBottles = numBottles;

    for (int i = 1; i <= timesToRecite; i++) {
      if (totalBottles > 1) {
        result.addAll([
          "$totalBottles bottles of beer on the wall, $totalBottles bottles of beer.",
          "Take one down and pass it around, ${totalBottles - 1 == 1 ? "1 bottle" : "${totalBottles - 1} bottles"} of beer on the wall.",
        ]);
      } else if (totalBottles == 1) {
        result.addAll([
          "1 bottle of beer on the wall, 1 bottle of beer.",
          "Take it down and pass it around, no more bottles of beer on the wall.",
        ]);
      } else {
        result.addAll([
          "No more bottles of beer on the wall, no more bottles of beer.",
          "Go to the store and buy some more, 99 bottles of beer on the wall."
        ]);
      }
      if (i != timesToRecite) result.add("");

      totalBottles--;
    }
    return result;
  }
}
