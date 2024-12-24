class SquareRoot {
  int squareRoot(int radicand) {
    int root = 0;

    if (radicand == 1) return 1;

    for (int i = 1; i < radicand; i++) {
      if (i * i == radicand) {
        root = i;
        break;
      }
    }
    return root;
  }
}
