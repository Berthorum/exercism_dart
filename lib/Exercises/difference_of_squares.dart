import 'dart:math';

class DifferenceOfSquares {
  int squareOfSum(int n) {
    int result = 0;

    for (int i = 1; i <= n; i++) {
      result += i;
    }

    return pow(result, 2) as int;
  }

  int sumOfSquares(int n) {
    int result = 0;

    for (int i = 0; i <= n; i++) {
      result += pow(i, 2) as int;
    }
    return result;
  }

  int differenceOfSquares(int n) {
    return squareOfSum(n) - sumOfSquares(n);
  }
}
