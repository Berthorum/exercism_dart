class RnaTranscription {
  String toRna(String dna) {
    String rnaComplement = "";

    Map<String, String> mapDnaToRna = {"G": "C", "C": "G", "T": "A", "A": "U"};

    for (int i = 0; i < dna.length; i++) {
      rnaComplement += mapDnaToRna[dna[i]] as String;
    }

    return rnaComplement;
  }
}
