class Anagram {
  List<String> findAnagrams(String word, List<String> anagramsCandidates) {
    List<String> anagrams = [];
    word = word.toLowerCase();

    String wordTargetSorted = wordSorted(word);

    for (String anagramCandidate in anagramsCandidates) {
      if (word.compareTo(anagramCandidate.toLowerCase()) == 0) continue;

      if (wordTargetSorted
              .compareTo(wordSorted(anagramCandidate.toLowerCase())) ==
          0) {
        anagrams.add(anagramCandidate);
      }
    }

    return anagrams;
  }

  String wordSorted(String word) {
    List<String> wordLetters = [];
    String wordSorted = "";

    for (int i = 0; i < word.length; i++) {
      wordLetters.add(word[i]);
    }

    wordLetters.sort();

    for (String letter in wordLetters) {
      wordSorted += letter;
    }

    return wordSorted;
  }
}
