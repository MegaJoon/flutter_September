// list

class Booklist {
  String image;
  String title;
  String writer;
  int percent;

  Booklist({this.image, this.title, this.writer, this.percent});
}

List<Booklist> booklist = [
  Booklist(
      image:
      "https://cdn.pixabay.com/photo/2019/02/14/07/28/painting-3995999_960_720.jpg",
      title: "Feder Welt",
      writer: "Elisabet Dents",
      percent: 25),
  Booklist(
      image:
      "https://cdn.pixabay.com/photo/2019/06/23/05/33/landscape-with-sea-4292874_960_720.jpg",
      title: "Jekyll and Jak",
      writer: "Journey Through",
      percent: 50),
  Booklist(
      image:
      "https://cdn.pixabay.com/photo/2015/12/05/08/25/fairy-tale-1077863_960_720.jpg",
      title: "Game of Thrones",
      writer: "George Martin",
      percent: 35),
];