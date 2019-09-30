import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String _image =
      "https://cdn.pixabay.com/photo/2019/06/07/13/11/landscape-4258253_960_720.jpg";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: <Widget>[
        // image top
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            height: screenHeight * 0.5,
            width: screenWidth,
            decoration: BoxDecoration(
//                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(48.0)),
                image: DecorationImage(
                    image: NetworkImage(_image), fit: BoxFit.cover)),
          ),
        ),

        // image bottom
        Positioned(
          top: screenHeight * 0.5,
          left: 0,
          child: Container(
            height: screenHeight * 0.5,
            width: screenWidth,
            color: Colors.white,
          ),
        ),

        // back button icon
        Positioned(
            top: 24,
            left: 24,
            child: Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0)),
                child: Center(
                  child: IconButton(
                      icon: Icon(Icons.arrow_back, size: 18.0),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ))),
      ],
    ));
  }
}
