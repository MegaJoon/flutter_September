import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'movie.dart';
import 'movieapp2.dart';

// https://dribbble.com/shots/7214165-Movies-app

class MovieApp extends StatefulWidget {
  @override
  _MovieAppState createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {
  Color _backgroundColor = Color.fromRGBO(21, 18, 46, 1);
  Color _color = Color.fromRGBO(30, 39, 70, 1);
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(color: _backgroundColor),
          ),

          // Appbar
          Positioned(
            top: 16,
            left: 24,
            right: 24,
            child: SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
                  height: 40,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text("Trending",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 32.0)),
                      Spacer(),
                      Icon(Icons.search,
                          size: 28.0, color: Colors.white.withOpacity(0.8))
                    ],
                  ),
                )),
          ),

          // main container
          Positioned(
            top: 80,
            left: 24,
            right: 24,
            child: Container(
                height: 550,
                width: screenWidth,
                child: ListView.builder(
                  shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: movie.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MovieApp02()));
                          });
                        },
                        child: Container(
                            padding: EdgeInsets.all(12.0),
                            margin: EdgeInsets.only(bottom: 16.0),
                            height: 170,
                            width: screenWidth,
                            decoration: BoxDecoration(
                                color: _color,
                                borderRadius: BorderRadius.circular(4.0)),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 150,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: DecorationImage(
                                          image: AssetImage(movie[index].image),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(width: 16),
                                Padding(
                                  padding: const EdgeInsets.only(right: 48.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(movie[index].title,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold)),
                                    SizedBox(height: 12),
                                      Text(movie[index].year,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold)),
                                    SizedBox(height: 20),
                                      RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "Director ",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 16.0)),
                                          TextSpan(
                                              text: movie[index].director,
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold)),
                                        ]),
                                      ),
                                      SizedBox(height: 28),
                                      Container(
                                        width: 170,
                                        child: Row(
                                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(movie[index].score,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold)),
                                            SizedBox(width: 8),
                                            Icon(Icons.star,
                                                size: 16.0, color: Colors.orange),
                                            Icon(Icons.star,
                                                size: 16.0, color: Colors.orange),
                                            Icon(Icons.star,
                                                size: 16.0, color: Colors.orange),
                                            Icon(Icons.star,
                                                size: 16.0, color: Colors.orange),
                                            Icon(Icons.star_border,
                                                size: 16.0, color: Colors.orange),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      );
                    })),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
//          backgroundColor: Colors.transparent,
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
