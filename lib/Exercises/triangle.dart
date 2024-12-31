class Triangle {
  bool equilateral(double a, double b, double c) {
    if (isTriangleInequalityOrNotATriangle(a, b, c)) {
      return false;
    }

    if (a == b && b == c) return true;
    return false;
  }

  bool isosceles(double a, double b, double c) {
    if (isTriangleInequalityOrNotATriangle(a, b, c)) {
      return false;
    }

    if (a == b || b == c || c == a) return true;
    return false;
  }

  bool scalene(double a, double b, double c) {
    if (isTriangleInequalityOrNotATriangle(a, b, c)) {
      return false;
    }

    if (a != b && b != c && c != a) return true;
    return false;
  }

  bool isTriangleInequalityOrNotATriangle(double a, double b, double c) {
    if ((a > c + b || b > c + a || c > a + b) || (a == 0 && b == 0 && c == 0)) {
      return true;
    }

    return false;
  }
}
