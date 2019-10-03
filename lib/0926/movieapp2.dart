import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'movie.dart';
import 'movieapp3.dart';

class MovieApp02 extends StatefulWidget {
  @override
  _MovieApp02State createState() => _MovieApp02State();
}

class _MovieApp02State extends State<MovieApp02> {
  Color _backgroundColor = Color.fromRGBO(21, 18, 46, 1);
  Color _color = Color.fromRGBO(30, 39, 70, 1);
  int _currentIndex = 0;
  String _synopsis =
      "After the devastating evets of Avengers: Infinity War, the universe is in ruins. With the help of remaining allies, the Avengers assemble onve more in order to reverse Thanos' actions and restore balance to the universe.";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // backgroud
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: screenHeight * 0.3,
              color: Colors.black,
              child: Image(
                  image: AssetImage(movie[0].image),
                  fit: BoxFit.cover,
                  color: Colors.grey.withOpacity(0.5),
                  colorBlendMode: BlendMode.dstATop),
            ),
          ),

          // appbar
          Positioned(
            top: 16,
            left: 24,
            right: 24,
            child: SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 40,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios,
                        size: 20.0, color: Colors.white),
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                  ),
                )),
          ),

          Positioned(
            top: screenHeight * 0.22,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(left: 12.0),
              decoration: BoxDecoration(
                  color: _backgroundColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32.0),
                      topRight: Radius.circular(32.0))),
              child: Column(
                children: <Widget>[
                  Expanded(flex: 4, child: Container()),
                  // synopsis
                  Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Synopsis",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 8),
                          Text(_synopsis,
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 14.0,
                                  height: 1.2),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis),
                        ],
                      )),
                  // cast
                  Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Cast",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold)),
                          Container(
                            width: screenWidth,
                            height: 150,
                            child: ListView.builder(
                                itemCount: cast.length,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    margin: EdgeInsets.all(8.0),
                                    width: 100,
//                                  color: Colors.white,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Expanded(
                                            flex: 9,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          cast[index]
                                                              .profileImage),
                                                      fit: BoxFit.cover)),
                                            )),
                                        Expanded(
                                            flex: 1,
                                            child: Text(cast[index].name,
                                                style: TextStyle(
                                                    color: Colors.grey[700],
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.bold)))
                                      ],
                                    ),
                                  );
                                }),
                          )
                        ],
                      )),
                  // buy now btn
                  Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MovieApp03()));
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Center(
                              child: Text("BUY NOW".toUpperCase(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold))),
                        ),
                      )),
                ],
              ),
            ),
          ),

          Positioned(
            top: screenHeight * 0.2,
            left: 12,
            right: 12,
            child: Container(
                padding: EdgeInsets.all(12.0),
                margin: EdgeInsets.only(bottom: 16.0),
                height: 170,
                width: screenWidth,
                decoration: BoxDecoration(
                    color: _color.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(4.0)),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                              image: AssetImage(movie[0].image),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(width: 16),
                    Padding(
                      padding: const EdgeInsets.only(right: 48.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(movie[0].title,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 12),
                          Text(movie[0].year,
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
                                      color: Colors.grey, fontSize: 16.0)),
                              TextSpan(
                                  text: movie[0].director,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(movie[0].score,
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
          ),
        ],
      ),

      // bottom
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
