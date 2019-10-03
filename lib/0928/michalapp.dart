import 'package:flutter/material.dart';

// https://dribbble.com/shots/7235591-Daily-UI-006/attachments/215593?mode=media

class MichalApp extends StatefulWidget {
  @override
  _MichalAppState createState() => _MichalAppState();
}

class _MichalAppState extends State<MichalApp> {
  String _image =
      "https://cdn.pixabay.com/photo/2015/11/06/11/32/girl-1026246_960_720.jpg";
  Color _color = Color.fromRGBO(174, 43, 130, 1);
  String content1 = "Roses are red, mornings are hard.";
  String content2 = "I suck at poetry, bring me some coffee...";
  String content3 = "Self-proclaimed master of procrastination.";

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
              bottom: screenHeight * 0.2,
              child: ClipPath(
                  clipper: myClipper(),
                  child:
                      Image(image: NetworkImage(_image), fit: BoxFit.cover))),

          // safearea
          Positioned(
            top: 0,
            left: 24,
            right: 24,
            child: SafeArea(
                child: Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.more_vert, size: 24.0, color: Colors.white),
                  Icon(Icons.close, size: 24.0, color: Colors.white)
                ],
              ),
            )),
          ),

          // followers
          Positioned(
            top: 72,
            left: 24,
            right: 24,
            child: Container(
              height: 48,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("FOLLOWERS".toUpperCase(),
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.0)),
                        Text("7.6K",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold))
                      ]),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("Posts".toUpperCase(),
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.0)),
                        Text("1.3K",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold))
                      ]),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("FOLLOWING".toUpperCase(),
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.0)),
                        Text("8.3K",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold))
                      ]),
                ],
              ),
            ),
          ),

          // White container
          Positioned(
              bottom: 0,
              left: 90,
              right: 90,
              child: Container(
                height: screenHeight * 0.29,
//                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text("Jane Doe",
                        style: TextStyle(
                            color: _color,
                            fontSize: 36.0,
                            fontWeight: FontWeight.bold)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.location_on, size: 12.0),
                        Text("Prague, Czech Republic",
                            style: TextStyle(fontSize: 12.0))
                      ],
                    ),
                    SizedBox(height: 24.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 20,
                          width: 72,
                          decoration: BoxDecoration(
                              color: _color,
                              borderRadius: BorderRadius.circular(18.0)),
                          child: Center(
                              child: Text("FOLLOW".toUpperCase(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold))),
                        ),
                        SizedBox(width: 16),
                        Container(
                          height: 20,
                          width: 72,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 0.7),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18.0)),
                          child: Center(
                              child: Text("Message".toUpperCase(),
                                  style: TextStyle(
                                      color: _color,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold))),
                        )
                      ],
                    ),
                    SizedBox(height: 24.0),
                    Text(content1, style: TextStyle(fontSize: 12.0)),
                    Text(content2, style: TextStyle(fontSize: 12.0)),
                    SizedBox(height: 12),
                    Text(content3, style: TextStyle(fontSize: 12.0)),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class myClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height * 0.90);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.80, size.width, size.height * 0.90);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
