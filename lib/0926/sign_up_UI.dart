import 'package:flutter/material.dart';

class SignUpUI extends StatefulWidget {
  @override
  _SignUpUIState createState() => _SignUpUIState();
}

class _SignUpUIState extends State<SignUpUI> {
  // set 1
  Color _color = Color.fromRGBO(172, 67, 237, 1);
  Color _color2 = Color.fromRGBO(190, 97, 238, 1);

  // set 2
  Color _color3 = Color.fromRGBO(36, 212, 236, 1);
  Color _color4 = Color.fromRGBO(139, 241, 181, 1);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // APPBAR
          Positioned(
            top: 0,
            left: 24,
            right: 24,
            child: SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
                    alignment: Alignment.centerLeft,
                    height: 40,
                    child: Icon(Icons.arrow_back,
                        color: Colors.white, size: 40.0))),
          ),

          // top circle
          Positioned(
            top: -195,
            left: -80,
            child: Container(
              height: 370,
              width: 370,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [_color3, _color4],
                      begin: Alignment.bottomRight,
                      end: Alignment.center)),
            ),
          ),

          // main title
          Positioned(
              top: 120,
              left: 24,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Create a",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold)),
                  Text("New Account.",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold)),
                ],
              )),

          // middle container
          Positioned(
            top: 240,
            left: 24,
            right: 48,
            bottom: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "Name",
                      hintStyle: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 32),
                TextField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "Email",
                      hintStyle: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 32),
                TextField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "Password",
                      hintStyle: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 16),
                Text("Already have a account?",
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 16.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),

          // Sign up
          Positioned(
            bottom: 50,
            left: 30,
            child: Text("Sign up",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold)),
          ),

          // circle
          Positioned(
            bottom: -120,
            right: -120,
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [_color, _color2],
                      begin: Alignment.topLeft,
                      end: Alignment.center)),
            ),
          ),

          // arrow
          Positioned(
            bottom: 30,
            right: 30,
            child: Icon(Icons.arrow_forward, size: 40.0, color: Colors.white),
          )
        ],
      ),
    );
  }
}
