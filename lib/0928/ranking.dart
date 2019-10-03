import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Ranking {
  Color rankingColor;
  Color color;
  String profileImage;
  String home;
  String id;
  IconData game;
  String kill;
  String matchPlayed;
  String damage;
  String wins;
  String backgroundImage;

  Ranking(
      {this.rankingColor,
        this.color,
      this.profileImage,
      this.home,
      this.id,
      this.game,
      this.kill,
      this.matchPlayed,
      this.damage,
      this.wins,
      this.backgroundImage});
}

List<Ranking> ranking = [
  Ranking(
      rankingColor: Colors.yellowAccent,
      color: Colors.yellowAccent,
      profileImage:
          "https://cdn.pixabay.com/photo/2019/07/28/00/49/butterfly-4367745_960_720.jpg",
      home:
          "https://cdn.pixabay.com/photo/2016/04/06/13/18/american-flag-1311743_960_720.png",
      id: "masteuk",
      game: FontAwesomeIcons.playstation,
      kill: "46,218",
      matchPlayed: "4,379",
      damage: "10,298,188",
      wins: "598",
      backgroundImage: "assets/apex01.png"
  ),
  Ranking(
      rankingColor: Colors.grey[300],
      color: Colors.grey,
      profileImage:
          "https://cdn.pixabay.com/photo/2018/10/03/21/16/sunset-3722398_960_720.jpg",
      home:
          "https://cdn.pixabay.com/photo/2016/01/19/17/47/usa-1149896_960_720.jpg",
      id: "pcMasterRace",
      game: FontAwesomeIcons.windows,
      kill: "45,345",
      matchPlayed: "4,222",
      damage: "10,134,100",
      wins: "530",
      backgroundImage: "assets/apex02.png"
  ),
  Ranking(
      rankingColor: Colors.orange,
      color: Colors.grey,
      profileImage:
          "https://cdn.pixabay.com/photo/2019/09/22/07/04/light-4495287_960_720.jpg",
      home:
          "https://cdn.pixabay.com/photo/2016/01/19/17/47/usa-1149896_960_720.jpg",
      id: "StoneMountain64",
      game: FontAwesomeIcons.windows,
      kill: "42,684",
      matchPlayed: "4,159",
      damage: "9,670,846",
      wins: "517",
      backgroundImage: "assets/apex03.png"
  ),
  Ranking(
      rankingColor: Colors.grey[700],
      color: Colors.grey,
      profileImage:
          "https://cdn.pixabay.com/photo/2019/09/25/12/32/tree-4503535_960_720.jpg",
      home:
          "https://cdn.pixabay.com/photo/2016/01/19/17/47/usa-1149896_960_720.jpg",
      id: "shivFPS",
      game: FontAwesomeIcons.windows,
      kill: "40,956",
      matchPlayed: "4,221",
      damage: "9,003,624",
      wins: "529",
      backgroundImage: "assets/apex04.png"
  )
];
