enum Classification { equal, unequal, sublist, superlist }

class Sublist {
  Classification sublist(List<int> listOne, List<int> listTwo) {
    Classification option = Classification.unequal;
    String listOneString = "";
    String listTwoString = "";

    for (int element in listOne) {
      listOneString += element.toString();
    }

    for (int element in listTwo) {
      listTwoString += element.toString();
    }

    if (listOne.isEmpty && listTwo.isNotEmpty) {
      option = Classification.sublist;
    }

    if (listTwo.isEmpty && listOne.isNotEmpty) {
      option = Classification.superlist;
    }

    if (listOne.isEmpty && listTwo.isEmpty) {
      option = Classification.equal;
    }

    if (listOne.length > listTwo.length && listTwo.isNotEmpty) {
      if (listOneString.contains(listTwoString) &&
          listOneString.length != listTwoString.length) {
        option = Classification.superlist;
      }
    }

    if (listOne.length < listTwo.length && listOne.isNotEmpty) {
      if (listTwoString.contains(listOneString) &&
          listTwoString.length != listOneString.length) {
        option = Classification.sublist;
      }
    }

    if (listOne.length == listTwo.length) {
      if (listOneString.compareTo(listTwoString) == 0) {
        option = Classification.equal;
      }
    }

    return option;
  }
}
