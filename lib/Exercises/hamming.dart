class Hamming {
  int distance(String strandOne, strandTwo) {
    int countDifferences = 0;

    strandOne = strandOne.trim();
    strandTwo = strandTwo.trim();

    final mustEqual = ArgumentError('strands must be of equal length');

    if (strandOne.length != strandTwo.length) {
      throw mustEqual;
    }

    for (int i = 0; i < strandOne.length; i++) {
      if (strandOne[i].compareTo(strandTwo[i]) != 0) {
        countDifferences++;
      }
    }

    return countDifferences;
  }
}
