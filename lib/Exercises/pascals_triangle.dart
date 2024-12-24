class PascalsTriangle {
  List<List<int>> rows(int rowsNum) {
    if (rowsNum == 0) return [];
    List<List<int>> rows = [
      [1]
    ];

    for (int i = 1; i < rowsNum; i++) {
      rows.add(generateLine(rows[i - 1]));
    }

    return rows;
  }

  List<int> generateLine(List<int> previousList) {
    List<int> newLine = [];

    for (int i = 0; i < previousList.length + 1; i++) {
      if (i == 0 || i == previousList.length) {
        newLine.add(1);
      } else {
        newLine.add(previousList[i] + previousList[i - 1]);
      }
    }

    return newLine;
  }
}
