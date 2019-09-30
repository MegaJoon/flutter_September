import 'package:flutter/material.dart';

class CurvePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CurvePageState();
}

class _CurvePageState extends State<CurvePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.pink,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
//            ClipPath(
//              clipper: CurveClipper(),
//              child: Container(
//                height: MediaQuery.of(context).size.height * 0.25,
//                width: MediaQuery.of(context).size.width,
//                decoration: BoxDecoration(
//                    gradient: LinearGradient(
//                        colors: [Color(0xffff1e39), Color(0xffff4125)],
//                        begin: Alignment.topCenter,
//                        end: Alignment.bottomCenter)),
//              ),
//            ),

          Positioned(
            top: 0, left: 0,
            child: Container(
//              child: Image(image: assetsImage, height: 48.0, width: 48.0,),
            ),
          )
            // text
//            Positioned(
//              top: 40,
//              width: MediaQuery.of(context).size.width,
//              child: Container(
//                alignment: Alignment.center,
//                  child: Text("Good morning Rebeca"),
//              ),
//            ),

//            Positioned(
//              top: MediaQuery.of(context).size.height * 0.1,
//              width: MediaQuery.of(context).size.width,
//              child: Padding(
//                padding: const EdgeInsets.all(48.0),
//                child: Container(
//                  height: MediaQuery.of(context).size.height/1.5, width: MediaQuery.of(context).size.width,
//                  color: Colors.indigo,
//                ),
//              ),
//            )
          ],
        ),
      ),
    );
  }
}

//class CurveClipper extends CustomClipper<Path> {
//  @override
//  Path getClip(Size size) {
//    //
//    Path path = Path();
//
////    Draw a straight line from current point to the bottom left corner.
//    path.lineTo(0, size.height);
//    path.quadraticBezierTo(
//        size.width / 2, size.height / 2, size.width, size.height);
//
////    Draw a straight line from current point to the top right corner.
//    path.lineTo(size.width, 0);
//    return path;
//  }
//
//  @override
//  bool shouldReclip(CustomClipper<Path> oldClipper) {
//    return null;
//  }
//}
