class Strain {
  List<dynamic> keep(List<dynamic> collection, Function fn) {
    List<dynamic> result = [];

    for (dynamic element in collection) {
      if (fn(element)) {
        result.add(element);
      }
    }

    return result;
  }

  List<dynamic> discard(List<dynamic> collection, Function fn) {
    List<dynamic> result = [];

    for (dynamic element in collection) {
      if (!fn(element)) {
        result.add(element);
      }
    }

    return result;
  }
}
