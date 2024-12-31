class Isogram {
  bool isIsogram(String wordOrPhrase) {
    bool isIsogram = true;
    wordOrPhrase = wordOrPhrase.toLowerCase();

    for (int i = 0; i < wordOrPhrase.length; i++) {
      if (wordOrPhrase[i].compareTo(" ") == 0 ||
          wordOrPhrase[i].compareTo("-") == 0) continue;

      if (wordOrPhrase[i].allMatches(wordOrPhrase).length > 1) {
        isIsogram = false;
        break;
      }
    }

    return isIsogram;
  }
}
