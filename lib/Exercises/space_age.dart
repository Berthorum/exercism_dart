class SpaceAge {
  double age({required String planet, required int seconds}) {
    late double age;
    late double planetOrbitalPeriodInSeconds;
    const int orbitalPeriodRef = 31557600;

    switch (planet) {
      case "Earth":
        planetOrbitalPeriodInSeconds = orbitalPeriodRef * 1.0;
        break;

      case "Mercury":
        planetOrbitalPeriodInSeconds = orbitalPeriodRef * 0.2408467;
        break;

      case "Venus":
        planetOrbitalPeriodInSeconds = orbitalPeriodRef * 0.61519726;
        break;

      case "Mars":
        planetOrbitalPeriodInSeconds = orbitalPeriodRef * 1.8808158;
        break;

      case "Jupiter":
        planetOrbitalPeriodInSeconds = orbitalPeriodRef * 11.862615;
        break;

      case "Saturn":
        planetOrbitalPeriodInSeconds = orbitalPeriodRef * 29.447498;
        break;

      case "Uranus":
        planetOrbitalPeriodInSeconds = orbitalPeriodRef * 84.016846;
        break;

      case "Neptune":
        planetOrbitalPeriodInSeconds = orbitalPeriodRef * 164.79132;
        break;
    }

    age = double.parse(
        (seconds / planetOrbitalPeriodInSeconds).toStringAsFixed(2));

    return age;
  }
}
