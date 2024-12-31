class NthPrime {
  bool isPrimeNumber(int number) {
    int count = 0;
    bool isPrime = true;

    for (int i = 1; i <= number; i++) {
      if (number % i == 0) {
        count++;
      }

      if (count > 2) {
        isPrime = false;
        break;
      }
    }
    return isPrime;
  }

  int prime(int nthPrime) {
    if (nthPrime == 0) {
      throw ArgumentError("There is no zeroth prime");
    }
    
    int numberTest = 2;
    int count = 0;

    while (true) {
      if (isPrimeNumber(numberTest)) {
        count++;
      }

      if (count == nthPrime) {
        break;
      }

      numberTest++;
    }

    return numberTest;
  }
}
