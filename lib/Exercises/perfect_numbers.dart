// define the Classification enum
enum Classification { perfect, abundant, deficient }

class PerfectNumbers {
  Classification classify(int number) {
    if(number <= 0) throw ArgumentError("Invalid input");

    int sumOfFactors = 0;

    for (int i = 1; i < number; i++) {
      if (number % i == 0) {
        sumOfFactors += i;
      }
    }

    if (sumOfFactors == number) return Classification.perfect;

    if (sumOfFactors > number) return Classification.abundant;

    return Classification.deficient;
  }
}
