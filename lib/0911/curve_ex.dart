import 'package:flutter/material.dart';

class CurveEx extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CurveExState();
}

class _CurveExState extends State<CurveEx> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          children: <Widget>[
            // 1. yellow
            Container(
              height: screenHeight,
              width: screenWidth,
              color: Colors.yellow,
            ),

            // 2. blue
            ClipPath(
              clipper: Clipper(),
              child: Container(
                height: screenHeight,
                width: screenWidth,
                color: Colors.blue,
              ),
            ),

            // 3. pink
            ClipPath(
              clipper: Clipper2(),
              child: Container(
                height: screenHeight * 0.5,
                width: screenWidth,
                color: Colors.pink,
              ),
            ),
            
            Positioned(
              child: Center(child: Text("HOLA", style: TextStyle(color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold),)),
            )
          ],
        ),
      ),
    );
  }
}

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.9,
        size.width, size.height * 0.6);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return null;
  }
}

class Clipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.4,
        size.width * 0.45, size.height * 0.6);
    path.quadraticBezierTo(
        size.width * 0.7, size.height * 0.8, size.width, size.height * 0.8);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return null;
  }
}
