class WordCount {
  Map<String, int> countWords(String sentence) {
    Map<String, int> countWordsMap = {};

    RegExp regex = RegExp(r"[^\w, ']");
    RegExp regexSpaces = RegExp(r'\s+');

    sentence = sentence
        .replaceAll(regex, "")
        .replaceAll(",", " ")
        .replaceAll(regexSpaces, " ")
        .toLowerCase()
        .trim();
    List<String> sentenceSplited = sentence.split(" ");

    List<String> removeApostrofes = [];
    for (String word in sentenceSplited) {
      if (word.startsWith("'")) {
        word = word.substring(1);
      }

      if (word.endsWith("'")) {
        word = word.substring(0, word.length - 1);
      }
      removeApostrofes.add(word);
    }
    sentenceSplited = List.of(removeApostrofes);
    int count = 0;

    for (String word in sentenceSplited) {
      if (!countWordsMap.containsKey(word)) {
        for (String item in sentenceSplited) {
          if (word.compareTo(item) == 0) {
            count++;
          }
        }
        countWordsMap.addEntries({word: count}.entries);
        count = 0;
      }
    }

    return countWordsMap;
  }
}
