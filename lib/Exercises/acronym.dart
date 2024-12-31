class Acronym {
  String abbreviate(String phrase) {
    String acronym = "";

    List<String> words = phrase
        .toUpperCase()
        .replaceAll(RegExp(r"[^A-Z|a-z|0-9|']"), " ")
        .replaceAll(RegExp(r'\s+'), " ")
        .split(" ");

    for (int i = 0; i < words.length; i++) {
      acronym += words[i][0];
    }
    return acronym;
  }
}
