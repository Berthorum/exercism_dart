class Proverb {
  String recite(List<String> inputs) {
    String result = "";

    if (inputs.isEmpty) return "";

    if (inputs.length != 1) {
      for (int i = 0; i < inputs.length - 1; i++) {
        result += "For want of a ${inputs[i]} the ${inputs[i + 1]} was lost.\n";
      }
    }

    result += "And all for the want of a ${inputs[0]}.";

    return result;
  }
}
