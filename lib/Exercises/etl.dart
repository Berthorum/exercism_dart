class Etl {
  Map<String, int> transform(Map<String, List<String>> legacy) {
    Map<String, int> lettersMapTransformed = {};

    legacy.forEach((key, value) {
      for (String letter in value) {
        final entry = <String, int>{letter.toLowerCase(): int.parse(key)};
        lettersMapTransformed.addEntries(entry.entries);
      }
    });

    return lettersMapTransformed;
  }
}
