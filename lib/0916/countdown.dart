import 'package:flutter/material.dart';

// https://dribbble.com/shots/7151400-100-days-of-UI-Challenge-014-count-down-timer/attachments/155627?mode=media

class CountDownApp extends StatefulWidget {
  @override
  _CountDownAppState createState() => _CountDownAppState();
}

class _CountDownAppState extends State<CountDownApp> {
  @override
  Widget build(BuildContext context) {
    final Color _color = Color.fromRGBO(255, 232, 98, 1);
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          title: Text("time.left",
              style: TextStyle(color: Colors.black, fontSize: 28.0)),
          backgroundColor: _color,
          elevation: 0,
          actions: <Widget>[
            new IconButton(
                icon: Icon(Icons.more_vert, color: Colors.black),
                onPressed: () {})
          ]),
      body: Column(
        children: <Widget>[
          // ListView
          Container(
            height: screenHeight - 170,
            width: screenWidth,
            child: ListView.builder(
                itemCount: time.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(16.0),
                    height: 100,
                    width: screenWidth,
                    color: _color,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: Row(
                                children: <Widget>[
                                  Text(time[index].title,
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  Icon(Icons.more_vert)
                                ],
                              )),
                          Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 32.0, right: 32.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0, bottom: 8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(time[index].day,
                                              style: TextStyle(
                                                  fontSize: 32.0,
                                                  fontWeight: FontWeight.bold)),
                                          Text("days",
                                              style: TextStyle(fontSize: 10.0))
                                        ],
                                      ),
                                    ),
                                    Container(
                                        height: 40,
                                        width: 1,
                                        color: Colors.black),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0, bottom: 8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(time[index].hour,
                                              style: TextStyle(
                                                  fontSize: 32.0,
                                                  fontWeight: FontWeight.bold)),
                                          Text("hours",
                                              style: TextStyle(fontSize: 10.0))
                                        ],
                                      ),
                                    ),
                                    Container(
                                        height: 40,
                                        width: 1,
                                        color: Colors.black),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0, bottom: 8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(time[index].min,
                                              style: TextStyle(
                                                  fontSize: 32.0,
                                                  fontWeight: FontWeight.bold)),
                                          Text("minutes",
                                              style: TextStyle(fontSize: 10.0))
                                        ],
                                      ),
                                    ),
                                    Container(
                                        height: 40,
                                        width: 1,
                                        color: Colors.black),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0, bottom: 8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(time[index].sec,
                                              style: TextStyle(
                                                  fontSize: 32.0,
                                                  fontWeight: FontWeight.bold)),
                                          Text("seconds",
                                              style: TextStyle(fontSize: 10.0))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  );
                }),
          ),

          // + Container
          Container(
            margin: EdgeInsets.all(16.0),
            height: 50,
            width: screenWidth,
            color: _color,
            child: Center(
                child: Text("+",
                    style: TextStyle(
                        fontSize: 40.0, fontWeight: FontWeight.bold))),
          ),
        ],
      ),
    );
  }
}

class Time {
  String title;
  String day;
  String hour;
  String min;
  String sec;

  Time({this.title, this.day, this.hour, this.min, this.sec});
}

List<Time> time = [
  Time(title: "trip.to.london", day: "08", hour: "16", min: "52", sec: "15"),
  Time(
      title: "wedding.anniversary",
      day: "11",
      hour: "02",
      min: "34",
      sec: "15"),
  Time(
      title: "the.killers.concert",
      day: "14",
      hour: "06",
      min: "12",
      sec: "15"),
  Time(title: "trip.to.tbilisi", day: "62", hour: "02", min: "34", sec: "15"),
];
