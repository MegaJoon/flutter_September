import 'package:flutter/material.dart';

class EcoMuseumApp3 extends StatefulWidget {
  @override
  _EcoMuseumApp3State createState() => _EcoMuseumApp3State();
}

class _EcoMuseumApp3State extends State<EcoMuseumApp3> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    Color _color = Color.fromRGBO(80, 167, 153, 1);
    Color _color2 = Color.fromRGBO(242, 110, 66, 1);
    String _carrotImage =
        "https://cdn.pixabay.com/photo/2016/10/18/19/24/carrot-1751148_960_720.png";
    String _image1 =
        "https://cdn.pixabay.com/photo/2016/12/13/00/13/rabbit-1903016_960_720.jpg";
    String _image2 =
        "https://cdn.pixabay.com/photo/2015/01/07/11/31/tiger-591359_960_720.jpg";
    return Scaffold(
        body: Column(
      children: <Widget>[
        SafeArea(
          top: true,
          left: true,
          right: true,
          child: Container(
              height: 20,
              width: screenWidth,
              alignment: Alignment.centerLeft,
              child: Container(
                  margin: EdgeInsets.only(left: 24.0, right: 24.0),
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.grey[500], width: 2),
                      shape: BoxShape.circle),
                  child: Icon(Icons.arrow_back,
                      size: 16.0, color: Colors.grey[500]))),
        ),

        // Title
        Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 24.0),
              width: screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("Feeding",
                      style: TextStyle(
                          fontSize: 40.0, fontWeight: FontWeight.bold)),
                  Text("Schedule",
                      style: TextStyle(
                          fontSize: 40.0, fontWeight: FontWeight.bold)),
                ],
              ),
            )),
        // Text
        SizedBox(height: 8),
        Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 24.0),
              width: screenWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  // 6 lines
                  Text(
                      "Proper nutrition is vital to keeping animals healthy. The biodome employs a full time Nutritionist, as well as six additional nutrituion staff, whose responsibility it is to not only prepare food for over 5000 animals daily, but also to determine exactly what each animal needs to eat and how much of it",
                      style: TextStyle(color: Colors.grey[700], fontSize: 14.0), maxLines: 6, overflow: TextOverflow.ellipsis),
                ],
              ),
            )),
        // Animals to Feed
        Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.only(left: 24.0, bottom: 8.0),
              width: screenWidth,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Animals to Feed",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold)),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 24.0),
                        child: Text("View All",
                            style: TextStyle(
                                color: _color,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: screenWidth,
                    height: 154,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(right: 24.0),
                            width: 250,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  bottom: 20,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    width: 250,
                                    height: 130,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                              spreadRadius: 1,
                                              blurRadius: 1)
                                        ],
                                        image: DecorationImage(
                                            image: NetworkImage(_image1),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  left: 10,
                                  child: Icon(Icons.star,
                                      size: 24.0, color: Colors.white),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 20,
                                  child: Container(
                                      width: 150,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.1),
                                                spreadRadius: 1,
                                                blurRadius: 1)
                                          ],
                                          color: _color2),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16.0),
                                        child: Row(
                                          children: <Widget>[
                                            Text("Feeding Time",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12.0)),
                                            Spacer(),
                                            Text("11:30",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12.0)),
                                          ],
                                        ),
                                      )),
                                )
                              ],
                            )),
                        Container(
                            margin: EdgeInsets.only(right: 24.0),
                            width: 250,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  bottom: 20,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    width: 250,
                                    height: 130,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                              spreadRadius: 1,
                                              blurRadius: 1)
                                        ],
                                        image: DecorationImage(
                                            image: NetworkImage(_image2),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  left: 10,
                                  child: Icon(Icons.star_border,
                                      size: 24.0, color: Colors.white),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 20,
                                  child: Container(
                                      width: 150,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.1),
                                                spreadRadius: 1,
                                                blurRadius: 1)
                                          ],
                                          color: _color),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16.0),
                                        child: Row(
                                          children: <Widget>[
                                            Text("Feeding Time",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12.0)),
                                            Spacer(),
                                            Text("11:30",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12.0)),
                                          ],
                                        ),
                                      )),
                                )
                              ],
                            )),
                        Container(
                            margin: EdgeInsets.only(right: 24.0),
                            width: 250,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  bottom: 20,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    width: 250,
                                    height: 130,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                              spreadRadius: 1,
                                              blurRadius: 1)
                                        ],
                                        image: DecorationImage(
                                            image: NetworkImage(_image1),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  left: 10,
                                  child: Icon(Icons.star,
                                      size: 24.0, color: Colors.white),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 20,
                                  child: Container(
                                      width: 150,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.1),
                                                spreadRadius: 1,
                                                blurRadius: 1)
                                          ],
                                          color: _color2),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16.0),
                                        child: Row(
                                          children: <Widget>[
                                            Text("Feeding Time",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12.0)),
                                            Spacer(),
                                            Text("11:30",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12.0)),
                                          ],
                                        ),
                                      )),
                                )
                              ],
                            )),
                      ],
                    ),
                  )
                ],
              ),
            )),
        // Carrot
        Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.arrow_back_ios, color: Colors.grey[300], size: 16.0),
                SizedBox(width: 32),
                Container(
                    height: 100,
                    child: Stack(
                      children: <Widget>[
                        Image(
                            image: NetworkImage(_carrotImage),
                            fit: BoxFit.cover,
                            width: 150),
                        Positioned(
                          bottom: 25,
                          right: 20,
                          child: Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.deepPurpleAccent),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text("10%",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold)),
                                Text("OFF",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12.0)),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 40,
                          child: Text("Carrot",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold)),
                        )
                      ],
                    )),
                SizedBox(width: 32),
                Icon(Icons.arrow_forward_ios,
                    color: Colors.grey[700], size: 16.0),
              ],
            )),
        // bottomText
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: <Widget>[
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text:
                              "The idea food fot the most animals which you can feed in biodome. Only ",
                          style: TextStyle(
                              color: Colors.grey[700], fontSize: 14.0)),
                      TextSpan(
                          text: "\$4.49 ",
                          style: TextStyle(
                              color: _color,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "per pachage for now.",
                          style: TextStyle(
                              color: Colors.grey[700], fontSize: 12.0)),
                    ]),
                  ),
                  SizedBox(height: 8),
                  Text("Order Now",
                      style: TextStyle(
                          color: _color,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold))
                ],
              ),
            )),
      ],
    ));
  }
}
