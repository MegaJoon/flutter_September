import 'package:flutter/material.dart';

import 'movie_list.dart';

class BuyTicket extends StatefulWidget {
  @override
  _BuyTicketState createState() => _BuyTicketState();
}

class _BuyTicketState extends State<BuyTicket> {
  // clidked index
  int i = 0;
  String plotText =
      "With a snap of the finger, hall of the life in the universe is gone. Nearly desperate revengers, with the help of Captain Marvel (Brie Larson), find the refuge of Josh Brolin, but learn that all six infinite gems have been destroyed, holing to be completely destroyed. Five years later, the ant man (Paul Rudd) lost in the quantum ...";

  bool _tapInProgress = false;

  void _tapDown(TapDownDetails details) {
    setState(() {
      _tapInProgress = true;
    });
  }

  void _tapUp(TapUpDetails details) {
    setState(() {
      _tapInProgress = false;
    });
  }

  void _tapCancel() {
    setState(() {
      _tapInProgress = false;
    });
  }

  void _onTap() {}

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: screenHeight * 0.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16.0),
                            bottomRight: Radius.circular(16.0)),
                        image: DecorationImage(
                            image: AssetImage(movielist[i].image),
                            fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 24,
                  child: SafeArea(
                    top: true,
                    left: true,
                    right: true,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child:
                            Icon(Icons.arrow_back, size: 16.0, color: Colors.black),
                      ),
                    ),
                  ),
                ),

                // TODO
                _tapInProgress
                    ? _buildContainer()
//                    ? _buildContainerTrue()
                    : _buildContainer(),
//              : Positioned(top: 0, left: 0, right: 0, child: Container()),
                Positioned(
                    top: screenHeight * 0.50,
                    left: 0,
                    right: 0,
                    child: GestureDetector(
                      onTapDown: _tapDown,
                      onTapUp: _tapUp,
                      onTap: _onTap,
                      onTapCancel: _tapCancel,
                      child: Container(
                        padding:
                            EdgeInsets.only(left: 12.0, right: 12.0, bottom: 24.0),
                        height: 280,
//                color: Colors.amber,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(16.0),
                                bottomLeft: Radius.circular(16.0))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
//                      padding: EdgeInsets.only(top: 12.0),
                              height: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(movielist[i].title,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0)),
                                  Text(movielist[i].subTitle,
                                      style: TextStyle(
                                          fontSize: 12.0, color: Colors.grey[700])),
                                  Text(movielist[i].year,
                                      style: TextStyle(
                                          fontSize: 12.0, color: Colors.grey[700])),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        height: 12,
                                        width: 32,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(4.0),
                                            border: Border.all(
                                                color: Colors.grey, width: 1)),
                                        child: Center(
                                            child: Text(
                                          movielist[i].kind,
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 10.0),
                                        )),
                                      ),
                                      SizedBox(width: 8),
                                      Container(
                                        height: 12,
                                        width: 56,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(4.0),
                                            border: Border.all(
                                                color: Colors.grey, width: 1)),
                                        child: Center(
                                            child: Text(
                                          "score ${movielist[i].score}",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 10.0),
                                        )),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 24),
                            Row(
                              children: <Widget>[
                                Text("Plot",
                                    style: TextStyle(
                                        fontSize: 16.0, fontWeight: FontWeight.bold)),
                                Spacer(),
                                Icon(Icons.arrow_forward_ios,
                                    size: 16.0, color: Colors.grey)
                              ],
                            ),
                            SizedBox(height: 12),
                            Text(plotText,
                                style: TextStyle(
                                    height: 1.2,
                                    color: Colors.grey[700],
                                    fontSize: 12.0),
                                maxLines: 6,
                                overflow: TextOverflow.ellipsis)
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//Widget _buildContainerTrue(){
//  return Positioned(
//    left: 0,
//    right: 0,
//    bottom: 0,
//    child: Container(
//      height: 300,
//      color: Colors.black,
//    ),
//  );
//}

Widget _buildContainer(){
  return Positioned(
    left: 0,
    right: 0,
    bottom: 0,
    child: Container(
      height: 70,
      color: Color.fromRGBO(253, 144, 188, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Buy tickets",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(width: 12),
          Container(
            height: 24.0,
            width: 24.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: Colors.white),
            child: Icon(
              Icons.arrow_forward,
              size: 16.0,
              color: Color.fromRGBO(253, 144, 188, 1),
            ),
          )
        ],
      ),
    ),
  );
}
