import 'package:flutter/material.dart';

// https://fidev.io/ui-challenge-flight-search/

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
//            height: height,
          height: 210,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.red, Color(0xFFE64C85)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Text("AirAsia",
                style: TextStyle(
                    fontFamily: "'NothingYouCouldDo",
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0)),
          )
        ],
      ),
    );
  }
}
