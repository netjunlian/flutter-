class City {
  final String name;

  final String image;

  final String population;

  final String country;

  City({this.name, this.image, this.population, this.country});

  static List<City> allCities() {
    var cities = List<City>();

    cities.add(City(
      name: "Beijing",
      country: "China",
      population: "2153.6万人",
      image: "images/city1.gif",
    ));
    cities.add(City(
      name: "London",
      country: "Britain",
      population: "8 mill",
      image: "images/city2.jpg",
    ));
    cities.add(City(
      name: "Vancouver",
      country: "Canada",
      population: "2.4 mill",
      image: "images/city3.jpg",
    ));
    cities.add(City(
      name: "New York",
      country: "USA",
      population: "8.1 mill",
      image: "images/city4.jpg",
    ));
    cities.add(City(
      name: "Paris",
      country: "France",
      population: "2.2 mill",
      image: "images/city5.jpg",
    ));
    cities.add(City(
      name: "Berlin",
      country: "Germany",
      population: "3.7 mill",
      image: "images/city6.jpg",
    ));
    return cities;
  }
}
