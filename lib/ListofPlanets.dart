class Planet {
  String PlanetName;
  String PlanetInfo;
  String PlanetUrl;
  double PlanetLocation;
  double PlanetArrowDown;

  Planet({
    required this.PlanetName,
    required this.PlanetInfo,
    required this.PlanetUrl,
    required this.PlanetLocation,
    required this.PlanetArrowDown,
  });
}

List<Planet> ListofPlanets = [
  Planet(
      PlanetName: "Mercury",
      PlanetInfo: "Small and Very Close Planet",
      PlanetUrl: "assets/images/1.png",
      PlanetLocation: 11.1,
      PlanetArrowDown: 0.246),
  Planet(
      PlanetName: "Venus",
      PlanetInfo: "Beautiful and Our Neighpour Planet",
      PlanetUrl: "assets/images/2.png",
      PlanetLocation: 22.2,
      PlanetArrowDown: 8.438),
  Planet(
      PlanetName: "Earth",
      PlanetInfo: "Our Lovely Planet",
      PlanetUrl: "assets/images/3.png",
      PlanetLocation: 33.3,
      PlanetArrowDown: 1.764),
  Planet(
      PlanetName: "Mars",
      PlanetInfo: "Red and Nice planet",
      PlanetUrl: "assets/images/4.png",
      PlanetLocation: 44.4,
      PlanetArrowDown: 2.438),
  Planet(
      PlanetName: "Jupiter",
      PlanetInfo: "Very Huge planet",
      PlanetUrl: "assets/images/5.png",
      PlanetLocation: 55.5,
      PlanetArrowDown: 6.254),
  Planet(
      PlanetName: "Saturn",
      PlanetInfo: "a planet that play gymaise",
      PlanetUrl: "assets/images/6.png",
      PlanetLocation: 66.6,
      PlanetArrowDown: 4.651),
];
