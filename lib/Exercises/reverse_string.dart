String reverse(String word) {
  String reverseWord = "";

  if (word.isEmpty) return reverseWord;

  for (int i = word.length - 1; i >= 0; i--) {
    reverseWord += word[i];
  }

  return reverseWord;
}
