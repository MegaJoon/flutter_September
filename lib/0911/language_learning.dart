import 'package:flutter/material.dart';

// https://dribbble.com/shots/7116865-Language-Learning-App-Adobe-XD-Daily-Creative-Challenge/attachments/119658?mode=media

class LanguageLearning extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _LanguageLearningState();
  }

class _LanguageLearningState extends State<LanguageLearning>{
  @override
  Widget build(BuildContext context) {
    final screenHeigth = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            // Yellow Container
            Container(
              height: screenHeigth,
              width: screenWidth,
              color: Colors.yellow,
            ),

            // redAccent Container
        ClipPath(
          clipper: _clipper1(),
          child: Container(
            height: screenHeigth,
            width: screenWidth,
            color: Colors.redAccent,
          ),
        ),

            // Blue Container
            ClipPath(
              clipper: _clipper2(),
              child: Container(
                height: screenHeigth*0.5,
                width: screenWidth,
                color: Colors.blue,
              ),
            ),

            // Text
            Center(child: Text("HOLA", style: TextStyle(color: Colors.white, fontSize: 54, fontWeight: FontWeight.bold)))
          ],
        ),
      ),
    );
  }
}

// redAccent
class _clipper1 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height*0.8);
    path.quadraticBezierTo(size.width*0.25, size.height*0.9, size.width, size.height*0.6);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return null;
  }
}

// Blue
class _clipper2 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height*0.5);
    path.quadraticBezierTo(size.width*0.2, size.height*0.4, size.width*0.45, size.height*0.6);
    path.quadraticBezierTo(size.width*0.7, size.height*0.8, size.width, size.height*0.8);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return null;
  }
}