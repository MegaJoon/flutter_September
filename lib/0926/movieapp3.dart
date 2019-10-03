import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'movie.dart';

class MovieApp03 extends StatefulWidget {
  @override
  _MovieApp03State createState() => _MovieApp03State();
}

class _MovieApp03State extends State<MovieApp03> {
  // image = movie[0].image
  Color _backgroundColor = Color.fromRGBO(21, 18, 46, 1);
  Color _color = Color.fromRGBO(30, 39, 70, 1);
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // backgroud
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: _backgroundColor,
            ),
          ),

          // appbar
          Positioned(
            top: 16,
            left: 8,
            right: 24,
            child: Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.arrow_back_ios,
                          size: 20.0, color: Colors.white),
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      }),
                  SizedBox(width: 80),
                  Text("MY TICKET".toUpperCase(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),

          // main container
          Positioned(
            top: 72,
            left: 24,
            right: 24,
            bottom: 32,
            child: Container(
              child: Stack(
                children: <Widget>[
                  // avengers
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: screenHeight * 0.7,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.0),
                              topRight: Radius.circular(12.0)),
                          image: DecorationImage(
                              image: AssetImage(movie[0].image),
                              fit: BoxFit.cover)),
                    ),
                  ),

                  // white container
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: screenHeight * 0.35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12.0),
                              bottomRight: Radius.circular(12.0))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(movie[0].title,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold)),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text("Date",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold)),
                                  Text("Apr 25",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text("Seat",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold)),
                                  Text("B5",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text("Time",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold)),
                                  Text("9:00",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ],
                          ),

                          // barcode
                          Image(image: AssetImage("assets/barcode.gif"), width: 200,)
                        ],
                      ),
                    ),
                  ),

                  // left hole
                  Positioned(
                    top: screenHeight * 0.38,
                    left: -22,
                    child: Container(
                        width: 44.0,
                        height: 44.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: _backgroundColor)),
                  ),

                  // right hole
                  Positioned(
                    top: screenHeight * 0.38,
                    right: -22,
                    child: Container(
                        width: 44.0,
                        height: 44.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: _backgroundColor)),
                  )
                ],
              ),
            ),
          )
        ],
      ),

      // bottom
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                backgroundColor: _backgroundColor,
                icon: Icon(FontAwesomeIcons.youtube, size: 20.0),
                title: Text("")),
            BottomNavigationBarItem(
                backgroundColor: _backgroundColor,
                icon: Icon(FontAwesomeIcons.ticketAlt, size: 20.0),
                title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.mapMarkerAlt, size: 20.0),
                title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.user, size: 20.0), title: Text("")),
          ]),
    );
  }
}
