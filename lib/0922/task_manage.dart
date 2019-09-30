import 'package:flutter/material.dart';
import 'package:flutter_dribbble/0921/MySeparator.dart';

// https://dribbble.com/shots/7181263-Task-Management-app

class TaskManageApp extends StatefulWidget {
  @override
  _TaskManageAppState createState() => _TaskManageAppState();
}

class _TaskManageAppState extends State<TaskManageApp> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    Color _color = Color.fromRGBO(239, 80, 93, 1);
    Color _color2 = Color.fromRGBO(64, 76, 229, 1);
    Color _color3 = Color.fromRGBO(241, 227, 230, 1);
    Color _color4 = Color.fromRGBO(221, 230, 231, 1);
    String _image =
        "https://cdn.pixabay.com/photo/2019/07/12/14/54/flower-4333046_960_720.jpg";
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                height: 54,
                width: screenWidth,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.arrow_back_ios, size: 24.0),
                    Spacer(),
                    Icon(Icons.calendar_today, size: 24.0)
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding:
                  const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 8.0),
              child: Row(
                children: <Widget>[
                  Text("Today",
                      style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  Spacer(),
                  Text(
                    "Create New",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                        color: _color),
                  ),
                  Icon(Icons.arrow_forward, size: 16.0, color: _color)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 24.0),
              height: 130,
              width: screenWidth,
//            color: Colors.grey,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    height: 130,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(16.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 4,
                              spreadRadius: 2)
                        ]),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: _color,
                                  borderRadius: BorderRadius.circular(16.0)),
                              height: 85,
                              width: 300,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 24.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Ongoing",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0)),
                                    SizedBox(height: 4),
                                    Text("Meetup 2kI9",
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 20.0)),
                                  ],
                                ),
                              ),
                            )),
                        Positioned(
                          bottom: 10,
                          left: 24,
                          right: 24,
                          child: Container(
                            height: 32,
                            width: screenWidth,
                            child: Row(
                              children: <Widget>[
                                Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: _color,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 4,
                                              spreadRadius: 2)
                                        ])),
                                SizedBox(width: 8),
                                Text("03:30-05.25",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10.0)),
                                Spacer(),
                                Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(8.0)),
                                    child: Icon(Icons.add,
                                        size: 16.0, color: Colors.black))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 130,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(16.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 4,
                              spreadRadius: 2)
                        ]),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: _color2,
                                  borderRadius: BorderRadius.circular(16.0)),
                              height: 85,
                              width: 300,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 24.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Ongoing",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0)),
                                    SizedBox(height: 4),
                                    Text("Meetup 2kI9",
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 20.0)),
                                  ],
                                ),
                              ),
                            )),
                        Positioned(
                          bottom: 10,
                          left: 24,
                          right: 24,
                          child: Container(
                            height: 32,
                            width: screenWidth,
                            child: Row(
                              children: <Widget>[
                                Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: _color2,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 4,
                                              spreadRadius: 2)
                                        ])),
                                SizedBox(width: 8),
                                Text("03:30-05.25",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10.0)),
                                Spacer(),
                                Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(8.0)),
                                    child: Icon(Icons.add,
                                        size: 16.0, color: Colors.black))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 32),
            Padding(
              padding:
                  const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 8.0),
              child: Row(
                children: <Widget>[
                  Text("This week",
                      style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  Spacer(),
                  Icon(Icons.format_list_bulleted, size: 20.0)
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 24.0),
                height: 500,
                width: screenWidth,
//                color: Colors.yellow,
                child: ListView(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 8.0),
                      height: 200,
                      width: screenWidth,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("NOV",
                                      style: TextStyle(
                                          color: _color,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold)),
                                  Container(
                                      height: 32,
                                      width: 64,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.1))
                                          ]),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Text("15",
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            SizedBox(width: 4),
                                            Text("SAT",
                                                style: TextStyle(
                                                    fontSize: 12.0,
                                                    color: Colors.grey)),
                                          ],
                                        ),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(left: 16.0),
                                      height: 149,
                                      width: 1,
                                      color: Colors.grey[300])
                                ],
                              )),
                          Expanded(
                              flex: 2,
                              child: Column(
                                children: <Widget>[
                                  Expanded(child: Container()),
                                  Expanded(
                                      child: Container(
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        color: _color3,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.2))
                                        ]),
                                    height: 52,
                                    width: screenWidth,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text("C - meeting",
                                                style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Container(
                                              height: 24,
                                              width: 24,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                      image:
                                                          NetworkImage(_image),
                                                      fit: BoxFit.cover)),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 4),
                                        Row(
                                          children: <Widget>[
                                            Text("03:30-05:25",
                                                style: TextStyle(
                                                    fontSize: 10.0,
                                                    color: Colors.grey)),
                                            SizedBox(width: 16),
                                            Text("1h 25min",
                                                style: TextStyle(
                                                    fontSize: 10.0,
                                                    color: _color)),
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                                  SizedBox(height: 8),
                                  Expanded(
                                      child: Container(
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        color: _color4,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.2))
                                        ]),
                                    height: 52,
                                    width: screenWidth,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text("Omnego inc",
                                                style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Container(
                                              height: 24,
                                              width: 24,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                      image:
                                                          NetworkImage(_image),
                                                      fit: BoxFit.cover)),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 4),
                                        Row(
                                          children: <Widget>[
                                            Text("063:30-08:00",
                                                style: TextStyle(
                                                    fontSize: 10.0,
                                                    color: Colors.grey)),
                                            SizedBox(width: 16),
                                            Text("1h 25min",
                                                style: TextStyle(
                                                    fontSize: 10.0,
                                                    color: _color)),
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                                ],
                              )),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: screenWidth,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("NOV",
                                      style: TextStyle(
                                          color: _color,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold)),
                                  Container(
                                      height: 32,
                                      width: 64,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.1))
                                          ]),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Text("16",
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            SizedBox(width: 4),
                                            Text("SUN",
                                                style: TextStyle(
                                                    fontSize: 12.0,
                                                    color: Colors.grey)),
                                          ],
                                        ),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(left: 16.0),
                                      height: 149,
                                      width: 1,
                                      color: Colors.grey[300])
                                ],
                              )),
                          Expanded(
                              flex: 2,
                              child: Column(
                                children: <Widget>[
                                  Expanded(child: Container()),
                                  Expanded(
                                      child: Container(
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        color: _color3,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.2))
                                        ]),
                                    height: 52,
                                    width: screenWidth,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text("C - meeting",
                                                style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Container(
                                              height: 24,
                                              width: 24,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                      image:
                                                          NetworkImage(_image),
                                                      fit: BoxFit.cover)),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 4),
                                        Row(
                                          children: <Widget>[
                                            Text("03:30-05:25",
                                                style: TextStyle(
                                                    fontSize: 10.0,
                                                    color: Colors.grey)),
                                            SizedBox(width: 16),
                                            Text("1h 25min",
                                                style: TextStyle(
                                                    fontSize: 10.0,
                                                    color: _color)),
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                                  SizedBox(height: 8),
                                  Expanded(
                                      child: Container(
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        color: _color4,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.2))
                                        ]),
                                    height: 52,
                                    width: screenWidth,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text("Omnego inc",
                                                style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Container(
                                              height: 24,
                                              width: 24,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                      image:
                                                          NetworkImage(_image),
                                                      fit: BoxFit.cover)),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 4),
                                        Row(
                                          children: <Widget>[
                                            Text("063:30-08:00",
                                                style: TextStyle(
                                                    fontSize: 10.0,
                                                    color: Colors.grey)),
                                            SizedBox(width: 16),
                                            Text("1h 25min",
                                                style: TextStyle(
                                                    fontSize: 10.0,
                                                    color: _color)),
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
