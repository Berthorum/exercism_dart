class SumOfMultiples {
  int sum(List<int> magicalItemsValue, lvCompleted) {
    int energyPoints = 0;

    if (magicalItemsValue.isEmpty) return energyPoints;

    List<int> multiplesOfMagicalItemsValue = [];

    for (int magicalItemValue in magicalItemsValue) {
      if (magicalItemValue == 0) continue;
      for (int i = magicalItemValue; i < lvCompleted; i++) {
        if (i % magicalItemValue == 0) {
          multiplesOfMagicalItemsValue.add(i);
        }
      }
    }

    multiplesOfMagicalItemsValue =
        List.of(multiplesOfMagicalItemsValue.toSet().toList());

    for (int element in multiplesOfMagicalItemsValue) {
      energyPoints += element;
    }

    return energyPoints;
  }
}
