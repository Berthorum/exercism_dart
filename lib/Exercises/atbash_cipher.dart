class AtbashCipher {
  final Map<String, String> _cipher = {
    "a": "z",
    "b": "y",
    "c": "x",
    "d": "w",
    "e": "v",
    "f": "u",
    "g": "t",
    "h": "s",
    "i": "r",
    "j": "q",
    "k": "p",
    "l": "o",
    "m": "n",
    "n": "m",
    "o": "l",
    "p": "k",
    "q": "j",
    "r": "i",
    "s": "h",
    "t": "g",
    "u": "f",
    "v": "e",
    "w": "d",
    "x": "c",
    "y": "b",
    "z": "a",
    "0": "0",
    "1": "1",
    "2": "2",
    "3": "3",
    "4": "4",
    "5": "5",
    "6": "6",
    "7": "7",
    "8": "8",
    "9": "9",
  };

  String encode(String msg) {
    msg = msg
        .replaceAll(" ", "")
        .replaceAll(",", "")
        .replaceAll(".", "")
        .toLowerCase();
    String msgEncoded = "";

    for (int i = 0; i < msg.length; i++) {
      msgEncoded += _cipher[msg[i]] as String;
      if ((i + 1) % 5 == 0) {
        msgEncoded += " ";
      }
    }

    return msgEncoded.trim();
  }

  String decode(String msg) {
    msg = msg.replaceAll(" ", "").toLowerCase();
    String msgDecoded = "";

    for (int i = 0; i < msg.length; i++) {
      msgDecoded += _cipher[msg[i]] as String;
    }

    return msgDecoded;
  }
}
