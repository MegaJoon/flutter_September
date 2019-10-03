import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// https://dribbble.com/shots/7228113-Daily-activity-and-diet-tracking-app-for-girls
// https://pub.dev/packages/percent_indicator#-readme-tab-

class DietApp extends StatefulWidget {
  @override
  _DietAppState createState() => _DietAppState();
}

class _DietAppState extends State<DietApp> {
  String _backgroundImage =
      "https://cdn.pixabay.com/photo/2015/11/19/11/39/sports-1050966_960_720.png";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: screenHeight * 0.5,
            child: Container(
              color: Colors.grey[100],
              child: Image(
                  image: NetworkImage(_backgroundImage), fit: BoxFit.contain),
            ),
          ),

          // safearea
          Positioned(
            top: 0,
            left: 24,
            right: 24,
            child: SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 24,
                child: Row(
//                mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.arrow_back_ios, size: 20.0, color: Colors.black),
                    SizedBox(width: 120),
                    Text("Exercises",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),

          // white container
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(left: 24.0, right: 24.0, top: 16.0),
              height: screenHeight * 0.6,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24.0),
                      topRight: Radius.circular(24.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(bottom: 16.0),
                      height: 4,
                      width: 48,
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(16.0))),
                  Text("Activity Stats",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold)),
                  Container(
                    margin: EdgeInsets.only(top: 16.0),
                    height: 150,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: CircularPercentIndicator(
                              radius: 130.0,
                              lineWidth: 10.0,
                              percent: 0.65,
                              center: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("65%",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0)),
                                  Text("daily go",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14.0)),
                                ],
                              ),
                              backgroundColor: Colors.grey[200],
                              circularStrokeCap: CircularStrokeCap.round,
                              // round
                              progressColor: Color.fromRGBO(1, 128, 253, 1),
                            )),
                        Expanded(
                            flex: 1,
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text("12,375",
                                              style: TextStyle(
                                                  fontSize: 32.0,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                        Text("steps",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16.0)),
                                      ],
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                            flex: 1,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text("3.1km",
                                                      style: TextStyle(
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ),
                                                Text("walk",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 14.0)),
                                              ],
                                            )),
                                        Expanded(
                                            flex: 1,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text("1.2km",
                                                      style: TextStyle(
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ),
                                                Text("run",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 14.0)),
                                              ],
                                            )),
                                      ],
                                    )),
                              ],
                            )),
                      ],
                    ),
                  ),
                  Container(
                    height: 180,
//                    color: Colors.purple,
                    child: ListView(
                      shrinkWrap: true,
                      padding: EdgeInsets.only(top: 8.0),
                      children: <Widget>[
                        Divider(),
                        Container(
                          height: 50,
//                          color: Colors.yellowAccent,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  flex: 3,
                                  child: Container(
                                    margin: EdgeInsets.all(4.0),
                                    height: 70,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.orangeAccent),
                                    child: Icon(FontAwesomeIcons.fireAlt,
                                        color: Colors.white, size: 20.0),
                                  )),
                              Expanded(
                                  flex: 8,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text("Burning calories",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0)),
                                      Text("Equivalent to 25 grams of lot",
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.grey)),
                                    ],
                                  )),
                              Expanded(
                                  flex: 4,
                                  child: RichText(
                                      text: TextSpan(children: [
                                    TextSpan(
                                        text: "632 ",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: "kcal",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16.0)),
                                  ]))),
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          height: 50,
//                          color: Colors.yellowAccent,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  flex: 3,
                                  child: Container(
                                    margin: EdgeInsets.all(4.0),
                                    height: 70,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.lightBlueAccent),
                                    child: Icon(FontAwesomeIcons.walking,
                                        color: Colors.white, size: 20.0),
                                  )),
                              Expanded(
                                  flex: 8,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text("Moving distance",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0)),
                                      Text("Equivalent to 75 grams of lot",
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.grey)),
                                    ],
                                  )),
                              Expanded(
                                  flex: 4,
                                  child: RichText(
                                      text: TextSpan(children: [
                                    TextSpan(
                                        text: "56 ",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: "miles",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16.0)),
                                  ]))),
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          height: 50,
//                          color: Colors.yellowAccent,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  flex: 3,
                                  child: Container(
                                    margin: EdgeInsets.all(4.0),
                                    height: 70,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.deepPurple),
                                    child: Icon(FontAwesomeIcons.stopwatch,
                                        color: Colors.white, size: 20.0),
                                  )),
                              Expanded(
                                  flex: 8,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text("Walking time",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0)),
                                      Text("Equivalent to 25 grams of lot",
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.grey)),
                                    ],
                                  )),
                              Expanded(
                                  flex: 4,
                                  child: RichText(
                                      text: TextSpan(children: [
                                    TextSpan(
                                        text: "156 ",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: "min",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16.0)),
                                  ]))),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
