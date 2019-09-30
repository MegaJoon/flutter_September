import 'package:flutter/material.dart';

// https://dribbble.com/shots/7109824-Booking-App-UI

class BookingApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BookingAppState();
}

class _BookingAppState extends State<BookingApp> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background
          Container(
            height: screenHeight * 0.6,
            width: screenWidth,
            child: Image(
              image: NetworkImage(
                  "https://image.freepik.com/free-vector/sydney-flat-illustration_1051-748.jpg"),
              fit: BoxFit.cover,
            ),
          ),

          // Appbar
          SafeArea(
            top: true,
            left: true,
            right: true,
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 32,
                  ),
                  onPressed: () {},
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    size: 32,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),

          // Main Container
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.5),
            height: screenHeight * 0.5,
            width: screenWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32)),
                color: Colors.white),
            child: Column(
//              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 32),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "Sydney, Australia",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 16),
                      Container(
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                height: 48, width: 48, child: Placeholder()),
                            SizedBox(height: 8),
                            Container(
                                height: 48, width: 48, child: Placeholder())
                          ],
                        ),
                      ),
                      SizedBox(width: 16),
                      Container(
                        height: 150,
                        width: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "The Sydney Opera",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              "House Tour",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Duration 1 hour",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),

                // bottomSheet
                Container(
                    height: screenHeight * 0.1,
                    width: screenWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32)),
                      color: Colors.indigo,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, left: 32.0, right: 32.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "2,305",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Properties Found",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            height: 48,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white),
                            child: Center(
                              child: Text(
                                "See All",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                    fontSize: 16),
                              ),
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
