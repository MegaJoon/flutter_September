import 'package:flutter/material.dart';
import 'package:flutter_dribbble/0924/school_matching.dart';

// https://dribbble.com/shots/6517195-School-Matching-App/attachments

class SchoolMatchingIntro extends StatefulWidget {
  @override
  _SchoolMatchingIntroState createState() => _SchoolMatchingIntroState();
}

class _SchoolMatchingIntroState extends State<SchoolMatchingIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Color.fromRGBO(89, 119, 244, 1),
            ),
          ),

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: myClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                color: Color.fromRGBO(86, 113, 227, 1),
              ),
            ),
          ),

          Positioned(
            top: 80,
            left: 60,
            right: 60,
            child: Column(
              children: <Widget>[
                Text("What kind of study",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold)),
                Text("abroad experience",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold)),
                Text("is right for you?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 16),
                Image(
                    image: AssetImage("assets/list1_image.png"),
                    fit: BoxFit.contain,
                    height: 200,
                    width: 200),
                SizedBox(height: 24),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "it all starts with a first step. ",
                        style: TextStyle(color: Colors.white, fontSize: 16.0)),
                    TextSpan(
                        text: "Olivia.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold)),
                  ]),
                ),
                Text("Tell us more about your study abroad",
                    style: TextStyle(color: Colors.white, fontSize: 16.0)),
                Text("goals.",
                    style: TextStyle(color: Colors.white, fontSize: 16.0)),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Your ",
                        style: TextStyle(color: Colors.white, fontSize: 16.0)),
                    TextSpan(
                        text: "matchability score ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: "represents how",
                        style: TextStyle(color: Colors.white, fontSize: 16.0)),
                  ]),
                ),
                Text("close your are to enroling at the best",
                    style: TextStyle(color: Colors.white, fontSize: 16.0)),
                Text("university for you.",
                    style: TextStyle(color: Colors.white, fontSize: 16.0)),
                SizedBox(height: 32),
              ],
            ),
          ),

          Positioned(
            bottom: 48,
            left: 24.0,
            right: 24.0,
            child: InkWell(
              onTap: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {return SchoolMatching();}));
                });
              },
              child: Container(
                  height: 52,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(62, 212, 157, 1),
                      borderRadius: BorderRadius.circular(32.0)),
                  child: Center(
                    child: Text("Get started",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold)),
                  )),
            ),
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
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height * 0.6);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
