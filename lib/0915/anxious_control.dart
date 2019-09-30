import 'package:flutter/material.dart';
import 'package:seekbar/seekbar.dart';

// https://dribbble.com/shots/7146413-Anxious-Control-app-UI/attachments/150641?mode=media

class AnxiousControl extends StatefulWidget {
  @override
  _AnxiousControlState createState() => _AnxiousControlState();
}

class _AnxiousControlState extends State<AnxiousControl> {
  final Color _color = Color.fromRGBO(61, 99, 174, 1);
  final Color _barColor = Color.fromRGBO(236, 108, 110, 1);
  final _image =
      "https://cdn.pixabay.com/photo/2018/01/15/21/44/stub-3084857_960_720.jpg";
  double _value = 0.0;
  double _secondValue = 0.0;

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
              right: 0,
              child: Container(
                height: screenHeight * 0.6,
                width: screenWidth,
                color: _color,
              )),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: screenHeight * 0.4,
                width: screenWidth,
                child: Image(image: NetworkImage(_image), fit: BoxFit.fitWidth),
              )),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
                top: true,
                left: true,
                right: true,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.menu, size: 24.0, color: Colors.white),
                      Spacer(),
                      Text("Skip", style: TextStyle(color: Colors.white, fontSize: 14.0))
                    ],
                  ),
                )),
          ),
          Positioned(
            top: 130, left: 0, right: 0,
            child: Column(
              children: <Widget>[
                Text("F"),
                Text("F"),
                Text("F"),
                SizedBox(height: 32),
                Text("F"),
                Container(
                  padding: EdgeInsets.only(left: 24.0, right: 24.0),
                  child: SeekBar(
                    value: _value,
                    secondValue: _secondValue,
                    progressColor: _barColor,
                    secondProgressColor: Colors.blue.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
