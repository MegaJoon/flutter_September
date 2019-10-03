class Movie {
  String image;
  String title;
  String year;
  String director;
  String score;

  Movie({this.image, this.title, this.year, this.director, this.score});
}

List<Movie> movie = [
  Movie(image: "assets/avengers.jpg", title: "Avengers: Endgame", year: "2019", director: "Anthony Russo", score: "4.5"),
  Movie(image: "assets/aladdin.jpg", title: "Aladdin", year: "2019", director: "Guy Ritchie", score: "4.1"),
  Movie(image: "assets/rocketman.jpg", title: "Rocketman", year: "2019", director: "Dexter Fletcher", score: "4.2"),
  Movie(image: "assets/thelionking.jpg", title: "The Lion King", year: "2019", director: "-", score: "-"),
];


class Cast {
  String profileImage;
  String name;

  Cast({this.profileImage, this.name});
}

List<Cast> cast = [
  Cast(profileImage: "assets/brielarson.jpg", name: "Brie Larson"),
  Cast(profileImage: "assets/chrisevans.jpg", name: "Chris Evans"),
  Cast(profileImage: "assets/markruffalo.png", name: "Mark Ruffalo"),
  Cast(profileImage: "assets/markruffalo.png", name: "Mark Ruffalo"),
];