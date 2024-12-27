class CollatzConjecture {
  int steps(int number) {
    if (number <= 0) throw ArgumentError("Only positive integers are allowed");

    int steps = 0;
    int resultSteps = number;

    while (resultSteps != 1) {
      if (resultSteps % 2 == 0) {
        resultSteps = resultSteps ~/ 2;
      } else {
        resultSteps = (resultSteps * 3) + 1;
      }

      steps++;
    }
    return steps;
  }
}
