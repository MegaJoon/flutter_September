import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Activity {
  String day;
  String date;
  IconData icon;
  String kind;
  String image;
  String secondImage;
  String hours;
  String distance;

  Activity(
      {this.day,
      this.date,
      this.icon,
      this.kind,
      this.image,
      this.secondImage,
      this.hours,
      this.distance});
}

List<Activity> activity = [
  Activity(
      day: "DAY 1",
      date: "16 Oct.",
      icon: FontAwesomeIcons.hiking,
      kind: "Hiking",
      image:
          "https://cdn.pixabay.com/photo/2012/03/01/00/21/bridge-19513_960_720.jpg",
      secondImage:
          "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171_960_720.jpg",
      hours: "16 hours",
      distance: "40 km"),
  Activity(
      day: "DAY 2",
      date: "17 Oct.",
      icon: FontAwesomeIcons.mountain,
      kind: "Climbing",
      image:
          "https://cdn.pixabay.com/photo/2014/08/01/00/08/pier-407252_960_720.jpg",
      secondImage:
          "https://cdn.pixabay.com/photo/2014/07/30/02/00/iceberg-404966_960_720.jpg",
      hours: "3 hours",
      distance: "999 km"),
];
