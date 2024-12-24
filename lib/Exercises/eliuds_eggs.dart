class EggCounter {
  int count(int decimalNum) {
    int quocient = decimalNum;
    String binaryNum = "";
    int countEggs = 0;

    while (quocient != 0) {
      binaryNum += (quocient % 2).toString();
      quocient = (quocient / 2).truncate();
    }

    for (int i = 0; i < binaryNum.length; i++) {
      if (binaryNum[i] == "1") {
        countEggs++;
      }
    }

    return countEggs;
  }
}
