class Bob {
  String response(String sentence) {
    String response = "Whatever.";

    sentence = sentence.trim();

    if (sentence.endsWith("?") &&
        sentence.contains(RegExp(r'[A-Z]')) &&
        sentence.compareTo(sentence.toUpperCase()) == 0) {
      return response = "Calm down, I know what I'm doing!";
    }

    if (sentence.endsWith("?")) {
      return response = "Sure.";
    }

    if (sentence.isEmpty || !sentence.contains(RegExp(r'\w'))) {
      return response = "Fine. Be that way!";
    }

    if (sentence.contains(RegExp(r'[A-Z]')) &&
        sentence.compareTo(sentence.toUpperCase()) == 0) {
      return response = "Whoa, chill out!";
    }

    return response;
  }
}
