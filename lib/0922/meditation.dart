import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'medtiation2.dart';

// https://dribbble.com/shots/7187324-Mindbal-Meditation-Application

class MeditationApp extends StatefulWidget {
  @override
  _MeditationAppState createState() => _MeditationAppState();
}

class _MeditationAppState extends State<MeditationApp> {
  String _image =
      "https://cdn.pixabay.com/photo/2018/10/19/09/02/soda-3758181_960_720.png";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
//        scrollDirection: Axis.vertical,
        child: Container(
          height: screenHeight,
          width: screenWidth,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromRGBO(255, 212, 211, 1), Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.center)),
          child: Column(
            children: <Widget>[
              SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
                  padding: EdgeInsets.only(left: 24.0, right: 24.0),
                  height: 54,
                  width: screenWidth,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.menu, size: 24.0),
                      SizedBox(width: 130),
                      Image(image: NetworkImage(_image), height: 54, width: 54),
                    ],
                  ),
                ),
              ),
              Text("Relax and Start",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
              Text("Select your mood",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.grey)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                height: 558,
                width: screenWidth,
//                color: Colors.pink,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: relax.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.5,
                      crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder:(context) => Meditation2()));
                          });
                        },
                        child: Container(
//                        color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              relax[index].icon,
                              SizedBox(height: 8),
                              Text(relax[index].text, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Relax {
  Icon icon;
  String text;
  
  Relax({this.icon, this.text});
}

List<Relax> relax = [
  Relax(icon: Icon(FontAwesomeIcons.angry, size: 64.0), text: "Angry"),
  Relax(icon: Icon(FontAwesomeIcons.frown, size: 64.0), text: "Confused"),
  Relax(icon: Icon(FontAwesomeIcons.flushed, size: 64.0), text: "Shock"),
  Relax(icon: Icon(FontAwesomeIcons.dizzy, size: 64.0), text: "Sleepy"),
  Relax(icon: Icon(FontAwesomeIcons.laugh, size: 64.0), text: "Focus"),
  Relax(icon: Icon(FontAwesomeIcons.laughBeam, size: 64.0), text: "Energetic"),
  Relax(icon: Icon(FontAwesomeIcons.grimace, size: 64.0), text: "Depressed"),
  Relax(icon: Icon(FontAwesomeIcons.grinTongue, size: 64.0), text: "Restless"),
  Relax(icon: Icon(FontAwesomeIcons.angry, size: 64.0), text: "Angry"),
  Relax(icon: Icon(FontAwesomeIcons.angry, size: 64.0), text: "Angry"),
];























