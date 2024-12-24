class Raindrops {
  String convert(int num) {
    String rainDropSound = "";

    if (num % 3 == 0) rainDropSound += "Pling";
    if (num % 5 == 0) rainDropSound += "Plang";
    if (num % 7 == 0) rainDropSound += "Plong";

    if (rainDropSound.isEmpty) rainDropSound = num.toString();

    return rainDropSound;
  }
}
