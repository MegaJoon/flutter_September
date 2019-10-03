import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'buy_ticket.dart';
import 'movie_list.dart';

// https://dribbble.com/shots/7248059-Interface-interaction-1/attachments/219159?mode=media

class MovieInterfaceApp extends StatefulWidget {
  @override
  _MovieInterfaceAppState createState() => _MovieInterfaceAppState();
}

class _MovieInterfaceAppState extends State<MovieInterfaceApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            // background
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                color: Colors.grey[300],
              ),
            ),

            // textfield
            Positioned(
              top: 0,
              left: 32,
              right: 32,
              child: SafeArea(
                  top: true,
                  left: true,
                  right: true,
                  child: Container(
                    padding: EdgeInsets.only(left: 16.0),
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32.0)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 16.0),
                          suffixIcon: Icon(Icons.search,
                              color: Colors.deepPurpleAccent, size: 24.0)),
                    ),
                  )),
            ),

            //
            Positioned(
              top: 92,
              left: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text("Hot Movies",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 16),
                  Container(
//                    padding: EdgeInsets.zero,
                    height: 480,
                    width: MediaQuery.of(context).size.width,
//                    color: Colors.purpleAccent,
                    child: CarouselSlider(
                        height: 480,
                        initialPage: 0,
                        enableInfiniteScroll: false,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                        items: [0, 1, 2].map((i) {
                          return Builder(builder: (BuildContext context) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                      flex: 7,
                                      child: InkWell(
                                        onTap: (){
                                          setState(() {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => BuyTicket()));
                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black
                                                        .withOpacity(0.2),
                                                    blurRadius: 4,
                                                    spreadRadius: 2)
                                              ],
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      movielist[i].image),
                                                  fit: BoxFit.cover)),
                                        ),
                                      )),
                                  Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(movielist[i].title,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20.0)),
                                            Text(movielist[i].subTitle,
                                                style: TextStyle(
                                                    fontSize: 12.0,
                                                    color: Colors.grey[700])),
                                            Row(
                                              children: <Widget>[
                                                Container(
                                                  height: 12,
                                                  width: 32,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0),
                                                      border: Border.all(
                                                          color: Colors.grey,
                                                          width: 1)),
                                                  child: Center(
                                                      child: Text(
                                                    movielist[i].kind,
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 10.0),
                                                  )),
                                                ),
                                                SizedBox(width: 8),
                                                Container(
                                                  height: 12,
                                                  width: 56,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0),
                                                      border: Border.all(
                                                          color: Colors.grey,
                                                          width: 1)),
                                                  child: Center(
                                                      child: Text(
                                                    "score ${movielist[i].score}",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 10.0),
                                                  )),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      )),
                                ],
                              ),
                            );
                          });
                        }).toList()),
                  )
                ],
              ),
            )
          ],
        ),

        // bottomappbar
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.deepPurpleAccent,
            selectedLabelStyle: TextStyle(fontSize: 12.0),
            unselectedLabelStyle: TextStyle(fontSize: 12.0),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.film, size: 20.0),
                  title: Text("Film")),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.envelope, size: 20.0),
                  title: Text("Mail")),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.comment, size: 20.0),
                  title: Text("Me")),
            ]));
  }
}
