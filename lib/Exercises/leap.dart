class Leap {
  bool leapYear(int year) {
    if (year % 100 == 0) {
      if (year % 4 == 0 && year % 400 == 0) {
        return true;
      }
      return false;
    }

    if (year % 4 == 0) {
      return true;
    }

    return false;
  }
}
