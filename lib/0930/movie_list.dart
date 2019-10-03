class MovieList {
  String image;
  String title;
  String subTitle;
  String kind;
  String score;
  String year;

  MovieList({this.image, this.title, this.subTitle, this.kind, this.score, this.year});
}

List<MovieList> movielist = [
  MovieList(
      image: "assets/avengers.jpg",
      title: "Avengeres Alliance 4: Final Battle",
      subTitle: "American / Action Science Fuction Fantasy",
      kind: "3D",
      score: "9.5",
      year: "2019-04-24 / 181min"),
  MovieList(
      image: "assets/aladdin.jpg",
      title: "Avengeres Alliance 4: Final Battle",
      subTitle: "American / Action Science Fuction Fantasy",
      kind: "3D",
      score: "9.5",
      year: "2019-04-24 / 181min"),
  MovieList(
      image: "assets/rocketman.jpg",
      title: "Avengeres Alliance 4: Final Battle",
      subTitle: "American / Action Science Fuction Fantasy",
      kind: "3D",
      score: "9.5",
      year: "2019-04-24 / 181min"),
];