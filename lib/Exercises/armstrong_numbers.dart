class ArmstrongNumbers {
  bool isArmstrongNumber(String number) {
    bool isArmstrongNumber = false;
    BigInt digitsSum = BigInt.from(0);
    int exponent = number.length;

    for (int i = 0; i < exponent; i++) {
      digitsSum += BigInt.from(int.parse(number[i]) as num).pow(exponent);
    }

    if (digitsSum == BigInt.parse(number)) isArmstrongNumber = true;
    return isArmstrongNumber;
  }
}
