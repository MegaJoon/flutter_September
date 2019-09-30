import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// https://dribbble.com/shots/7161933-Car-rental-application

class CarRentalApp extends StatefulWidget {
  @override
  _CarRentalAppState createState() => _CarRentalAppState();
}

class _CarRentalAppState extends State<CarRentalApp> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    Color _backgroundColor = Color.fromRGBO(33, 33, 47, 1);
    Color _color = Color.fromRGBO(232, 79, 78, 1);
    Color _containerColor = Color.fromRGBO(29, 29, 39, 1);

    String _image =
        "https://cdn.pixabay.com/photo/2013/07/12/11/58/car-145008_960_720.png";
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background color
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: screenHeight,
              width: screenWidth,
              color: _backgroundColor,
            ),
          ),

          // background image
          Positioned(
            top: 150,
            right: -100,
            child: Image(
              image: NetworkImage(_image),
              height: screenHeight * 0.65,
            ),
          ),

          // appbar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 24.0),
                  height: 52,
                  width: screenWidth,
//                  color: Colors.pink,
                  child: Row(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: _color),
                          child:
                              Icon(Icons.arrow_back_ios, color: Colors.white)),
                      Spacer(),
                      Icon(Icons.notifications, color: Colors.white)
                    ],
                  ),
                )),
          ),

          // main column
          Positioned(
            top: 100,
            left: 24,
            child: Container(
              height: 500,
              width: 200,
//              color: Colors.lightGreenAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Yaguar XF",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text("electromobile",
                      style:
                          TextStyle(color: Colors.grey[700], fontSize: 12.0)),
                  SizedBox(height: 32),
                  Container(
                      height: 64,
                      width: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey[700])),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.tachometerAlt,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            SizedBox(width: 16),
                            Text("350km",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14.0))
                          ])),
                  SizedBox(height: 16),
                  Container(
                      height: 64,
                      width: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey[700])),
                      child: Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(width: 24),
                            Icon(
                              FontAwesomeIcons.closedCaptioning,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            SizedBox(width: 16),
                            Text("automatic",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14.0))
                          ])),
                  SizedBox(height: 16),
                  Container(
                      height: 64,
                      width: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey[700])),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.chair,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            SizedBox(width: 16),
                            Text("4 seats",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14.0))
                          ])),
                  SizedBox(height: 40),
                  Container(
                    height: 64,
                    width: 125,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("\$ 175",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 28.0)),
                        Text("/",
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold,
                                fontSize: 28.0)),
                        Text("24 h",
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0)),
                      ],
                    ),
                  ),

//                  RichText(text: TextSpan(children: [
//                    TextSpan(text: "\$ 175", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24.0)),
//                    TextSpan(text: "/", style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold, fontSize: 24.0)),
//                    TextSpan(text: "24 h", style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold, fontSize: 12.0)),
//                  ]),),
                ],
              ),
            ),
          ),

          // rent now! container
          Positioned(
            bottom: 32,
            left: 0,
            child: Container(
              height: 52,
              width: 154,
              decoration: BoxDecoration(
                  color: _color,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16.0),
                      bottomRight: Radius.circular(16.0))),
              child: Center(child: Text("Rent now", style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold))),
            ),
          )
        ],
      ),

      // bottom
      bottomNavigationBar: BottomAppBar(
        color: _backgroundColor,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24.0),
          height: 64,
          width: screenWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: _containerColor),
                  child:
                      IconButton(icon: Icon(Icons.dashboard, color: _color))),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: _containerColor),
                  child: IconButton(
                      icon: Icon(Icons.search, color: Colors.white))),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: _containerColor),
                  child: IconButton(
                      icon: Icon(Icons.location_on, color: Colors.white))),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: _containerColor),
                  child: IconButton(
                      icon:
                          Icon(Icons.supervisor_account, color: Colors.white))),
            ],
          ),
        ),
      ),
    );
  }
}
