// Implement a custom InvalidNucleotideException exception

class InvalidNucleotideException extends FormatException {
  @override
  String get message => "error";
}

class NucleotideCount extends InvalidNucleotideException {
  Map<String, int> count(String dnaSequence) {
    Map<String, int> nucleotideCount = {
      "A": 0,
      "C": 0,
      "G": 0,
      "T": 0,
    };

    for (int i = 0; i < dnaSequence.length; i++) {
      if (nucleotideCount[dnaSequence[i]] == null) {
        throw InvalidNucleotideException();
      }

      nucleotideCount.addEntries(
          {dnaSequence[i]: (nucleotideCount[dnaSequence[i]]!) + 1}.entries);
    }

    return nucleotideCount;
  }
}
