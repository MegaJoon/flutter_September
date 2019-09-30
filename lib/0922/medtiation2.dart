import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// part 2. detail page

class Meditation2 extends StatefulWidget {
  @override
  _Meditation2State createState() => _Meditation2State();
}

class _Meditation2State extends State<Meditation2> {
  String _image =
      "https://cdn.pixabay.com/photo/2018/10/19/09/02/soda-3758181_960_720.png";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color.fromRGBO(255, 212, 211, 1), Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.center)),
        child: Column(
          children: <Widget>[
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                padding: EdgeInsets.only(left: 12.0, right: 24.0),
                height: 54,
                width: screenWidth,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back, size: 24.0),
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                    ),
                    SizedBox(width: 130),
                    Image(image: NetworkImage(_image), height: 54, width: 54),
                  ],
                ),
              ),
            ),
            // emoji
            // text
            Expanded(
                flex: 3,
                child: Column(
                  children: <Widget>[
                    Icon(FontAwesomeIcons.angry, size: 115),
                    SizedBox(height: 6),
                    Text("Angry",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24.0)),
                  ],
                )),
            // detail
            Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 24.0, right: 24.0, top: 24.0, bottom: 48.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text("Well-managed, anger can be a useful",
                              style: TextStyle(fontSize: 14.0))),
                      Text("Well-managed, anger can be a useful",
                          style: TextStyle(fontSize: 14.0)),
                      Text("Well-managed, anger can be a useful",
                          style: TextStyle(fontSize: 14.0)),
                      Text("Well-managed, anger can be a useful",
                          style: TextStyle(fontSize: 14.0)),
                      Text("Well-managed, anger can be a useful",
                          style: TextStyle(fontSize: 14.0)),
                      Text("Well-managed, anger can be a useful",
                          style: TextStyle(fontSize: 14.0)),
                    ],
                  ),
                )),
            // Select the Sound
            Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Select the Sound",
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height: 16),
                      Container(
                          height: 160,
                          width: screenWidth,
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.only(right: 16.0),
                                  height: 80,
                                  width: 120,
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 8,
                                        child: Stack(
                                          children: <Widget>[
                                            Image(
                                                image: NetworkImage(
                                                    "https://cdn.pixabay.com/photo/2019/08/16/15/03/water-lily-4410471_960_720.jpg"),
                                                height: 160,
                                                fit: BoxFit.cover),
                                            Positioned(
                                              top: 50,
                                              left: 40,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.white,
                                                      width: 2.0),
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Icon(Icons.arrow_right,
                                                    size: 32.0,
                                                    color: Colors.white),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Center(
                                            child: Text("Flowing Water",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold))),
                                      )
                                    ],
                                  )),
                              Container(
                                  margin: EdgeInsets.only(right: 16.0),
                                  height: 80,
                                  width: 120,
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 8,
                                        child: Stack(
                                          children: <Widget>[
                                            Image(
                                                image: NetworkImage(
                                                    "https://cdn.pixabay.com/photo/2019/06/26/14/01/sit-4300448_960_720.jpg"),
                                                height: 160,
                                                fit: BoxFit.cover),
                                            Positioned(
                                              top: 50,
                                              left: 40,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.white,
                                                      width: 2.0),
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Icon(Icons.arrow_right,
                                                    size: 32.0,
                                                    color: Colors.white),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Center(
                                            child: Text("Birds Chriping",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold))),
                                      )
                                    ],
                                  )),
                              Container(
                                  margin: EdgeInsets.only(right: 16.0),
                                  height: 80,
                                  width: 120,
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 8,
                                        child: Stack(
                                          children: <Widget>[
                                            Image(
                                                image: NetworkImage(
                                                    "https://cdn.pixabay.com/photo/2019/07/16/20/48/dolomites-4342572_960_720.jpg"),
                                                height: 160,
                                                fit: BoxFit.cover),
                                            Positioned(
                                              top: 50,
                                              left: 40,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.white,
                                                      width: 2.0),
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Icon(Icons.arrow_right,
                                                    size: 32.0,
                                                    color: Colors.white),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Center(
                                            child: Text("Rain Drops",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold))),
                                      )
                                    ],
                                  )),
                            ],
                          )),
                    ],
                  ),
                )),
            // Container button
            Expanded(
                flex: 1,
                child: Container(
                  margin:
                      EdgeInsets.only(left: 24.0, right: 24.0, bottom: 16.0),
                  width: screenWidth,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Color.fromRGBO(247, 122, 121, 1)),
                  child: Center(
                      child: Text("Play All",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold))),
                )),
          ],
        ),
      ),
    );
  }
}
