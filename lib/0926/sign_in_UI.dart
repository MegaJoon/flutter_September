import 'package:flutter/material.dart';

class SignInUI extends StatefulWidget {
  @override
  _SignInUIState createState() => _SignInUIState();
}

class _SignInUIState extends State<SignInUI> {
  Color _color = Color.fromRGBO(172, 67, 237, 1);
  Color _color2 = Color.fromRGBO(190, 97, 238, 1);
  Color _color3 = Color.fromRGBO(255, 200, 48, 1);
  Color _color4 = Color.fromRGBO(248, 155, 56, 1);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: myClipper2(),
              child: Container(
                height: screenHeight * 0.6,
                color: _color2,
              ),
            ),
          ),

          //
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: myClipper(),
              child: Container(
                height: screenHeight * 0.45,
                color: _color,
              ),
            ),
          ),

          //
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

          //
          Positioned(
              top: 120,
              left: 0,
              right: 0,
              child: Center(
                  child: Text("Hello~!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold)))),

          // email password
          Positioned(
            top: 250,
            left: 24,
            right: 48,
            bottom: 200,
            child: Column(
              children: <Widget>[
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
                Row(
                  children: <Widget>[
                    Text("Forgot password?", style: TextStyle(color: Colors.grey[600], fontSize: 16.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text("Create a account", style: TextStyle(color: Colors.grey[600], fontSize: 16.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)),
                  ],
                )
              ],
            ),
          ),

          // Sign in
          Positioned(
            bottom: 50,
            left: 30,
            child: Text("Sign in",
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
                      colors: [_color3, _color4],
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

class myClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, 0);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.4,
        size.width * 0.45, size.height * 0.5);
    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.55, size.width, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class myClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, 0);
    path.quadraticBezierTo(size.width * 0.05, size.height * 0.45,
        size.width * 0.5, size.height * 0.5);
    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.55, size.width, size.height * 0.9);
    path.lineTo(size.width, size.height * 0.9);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
