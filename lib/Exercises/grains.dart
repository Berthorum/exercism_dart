BigInt square(final int n) {
  if (n > 64 || n <= 0) {
    throw ArgumentError("square must be between 1 and 64");
  }
  if (n == 1) {
    return BigInt.from(1);
  }

  return (square(n - 1) * BigInt.from(2));
}

BigInt total() {
  BigInt total = BigInt.from(0);

  for (int i = 1; i <= 64; i++) {
    total += square(i);
  }
  return total;
}
