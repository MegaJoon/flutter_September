import 'package:flutter/material.dart';

// https://dribbble.com/shots/7137411-mobile-dashboard-concept/attachments/141258?mode=media

class DashboardApp extends StatefulWidget {
  @override
  _DashboardAppState createState() => _DashboardAppState();
}

class _DashboardAppState extends State<DashboardApp> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          //
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: screenHeight,
              width: screenWidth,
              color: Color.fromRGBO(75, 161, 223, 1),
            ),
          ),
//
          Positioned(
            top: 0,
            left: 0,
            child: SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  height: 52,
                  width: screenWidth,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.menu, size: 24.0, color: Colors.white),
                      Spacer(),
                      Icon(Icons.search, size: 24.0, color: Colors.white),
                    ],
                  ),
                )),
          ),

          Positioned(
            top: 100,
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              height: 600,
              width: screenWidth,
//              color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.pink,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2019/02/08/15/33/journey-3983404_960_720.jpg"),
                                fit: BoxFit.cover))),
                  ),
                  Text("Welcome, Amelia.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text("Here are some stories that",
                      style: TextStyle(color: Colors.white, fontSize: 16.0)),
                  Text("you don't want to miss.",
                      style: TextStyle(color: Colors.white, fontSize: 16.0)),
                  SizedBox(height: 110),
                  Text("Your Contents",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold)),
                  Container(
                    padding: EdgeInsets.only(top: 32.0),
                    height: 300,
                    width: screenWidth,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Container(
                            height: 150,
                            width: screenWidth * 0.7,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 4,
                                      blurRadius: 2)
                                ]),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                    flex: 13,
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                              flex: 1,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text("Contents",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16.0)),
                                                  Text("Sodales",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16.0)),
                                                ],
                                              )),
                                          Expanded(
                                              flex: 1,
                                              child: Column(
                                                children: <Widget>[
                                                  Expanded(
                                                      flex: 5,
                                                      child: Image(
                                                          image: NetworkImage(
                                                              "https://cdn.pixabay.com/photo/2019/02/08/15/33/journey-3983404_960_720.jpg"),
                                                          fit: BoxFit.cover)),
                                                  Expanded(
                                                      flex: 3,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: <Widget>[
                                                          Text("Lorem ipsum",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                          .grey[
                                                                      400],
                                                                  fontSize:
                                                                      12.0)),
                                                          Text("Lorem ipsum",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                          .grey[
                                                                      400],
                                                                  fontSize:
                                                                      12.0)),
                                                          Text("Lorem ipsum",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                          .grey[
                                                                      400],
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize:
                                                                      12.0)),
                                                        ],
                                                      )),
                                                ],
                                              )),
                                        ],
                                      ),
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                              flex: 2,
                                              child: Container(
                                                  height: 4,
                                                  color: Colors.blue)),
                                          Expanded(
                                              flex: 4,
                                              child: Container(
                                                  height: 4,
                                                  color: Colors.grey[400])),
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Container(
                            height: 150,
                            width: screenWidth * 0.7,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 4,
                                      blurRadius: 2)
                                ]),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                    flex: 13,
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                              flex: 1,
                                              child: Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text("Contents",
                                                      style: TextStyle(
                                                          fontWeight:
                                                          FontWeight.bold,
                                                          fontSize: 16.0)),
                                                  Text("Sodales",
                                                      style: TextStyle(
                                                          fontWeight:
                                                          FontWeight.bold,
                                                          fontSize: 16.0)),
                                                ],
                                              )),
                                          Expanded(
                                              flex: 1,
                                              child: Column(
                                                children: <Widget>[
                                                  Expanded(
                                                      flex: 5,
                                                      child: Image(
                                                          image: NetworkImage(
                                                              "https://cdn.pixabay.com/photo/2019/02/08/15/33/journey-3983404_960_720.jpg"),
                                                          fit: BoxFit.cover)),
                                                  Expanded(
                                                      flex: 3,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                        children: <Widget>[
                                                          Text("Lorem ipsum",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                                  color: Colors
                                                                      .grey[
                                                                  400],
                                                                  fontSize:
                                                                  12.0)),
                                                          Text("Lorem ipsum",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                                  color: Colors
                                                                      .grey[
                                                                  400],
                                                                  fontSize:
                                                                  12.0)),
                                                          Text("Lorem ipsum",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey[
                                                                  400],
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                                  fontSize:
                                                                  12.0)),
                                                        ],
                                                      )),
                                                ],
                                              )),
                                        ],
                                      ),
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                              flex: 2,
                                              child: Container(
                                                  height: 4,
                                                  color: Colors.blue)),
                                          Expanded(
                                              flex: 4,
                                              child: Container(
                                                  height: 4,
                                                  color: Colors.grey[400])),
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Container(
                            height: 150,
                            width: screenWidth * 0.7,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 4,
                                      blurRadius: 2)
                                ]),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                    flex: 13,
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                              flex: 1,
                                              child: Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text("Contents",
                                                      style: TextStyle(
                                                          fontWeight:
                                                          FontWeight.bold,
                                                          fontSize: 16.0)),
                                                  Text("Sodales",
                                                      style: TextStyle(
                                                          fontWeight:
                                                          FontWeight.bold,
                                                          fontSize: 16.0)),
                                                ],
                                              )),
                                          Expanded(
                                              flex: 1,
                                              child: Column(
                                                children: <Widget>[
                                                  Expanded(
                                                      flex: 5,
                                                      child: Image(
                                                          image: NetworkImage(
                                                              "https://cdn.pixabay.com/photo/2019/02/08/15/33/journey-3983404_960_720.jpg"),
                                                          fit: BoxFit.cover)),
                                                  Expanded(
                                                      flex: 3,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                        children: <Widget>[
                                                          Text("Lorem ipsum",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                                  color: Colors
                                                                      .grey[
                                                                  400],
                                                                  fontSize:
                                                                  12.0)),
                                                          Text("Lorem ipsum",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                                  color: Colors
                                                                      .grey[
                                                                  400],
                                                                  fontSize:
                                                                  12.0)),
                                                          Text("Lorem ipsum",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey[
                                                                  400],
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                                  fontSize:
                                                                  12.0)),
                                                        ],
                                                      )),
                                                ],
                                              )),
                                        ],
                                      ),
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                              flex: 2,
                                              child: Container(
                                                  height: 4,
                                                  color: Colors.blue)),
                                          Expanded(
                                              flex: 4,
                                              child: Container(
                                                  height: 4,
                                                  color: Colors.grey[400])),
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
