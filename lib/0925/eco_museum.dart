import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// https://dribbble.com/shots/7205467-Eco-museum-app

class EcoMuseumApp extends StatefulWidget {
  @override
  _EcoMuseumAppState createState() => _EcoMuseumAppState();
}

class _EcoMuseumAppState extends State<EcoMuseumApp> {
  final String _backgroundImage =
      "https://cdn.pixabay.com/photo/2012/09/15/02/22/forest-56930_960_720.jpg";
  final String _profileImage =
      "https://cdn.pixabay.com/photo/2015/01/01/22/15/woman-586185_960_720.jpg";
  final String _frogImage =
      "https://cdn.pixabay.com/photo/2018/05/31/15/06/not-hear-3444212_960_720.jpg";
  final String _image1 =
      "https://cdn.pixabay.com/photo/2013/07/13/13/49/demon-161607_960_720.png";
  final String _image2 =
      "https://cdn.pixabay.com/photo/2019/08/11/15/48/road-4399206_960_720.png";
  final String _image3 =
      "https://cdn.pixabay.com/photo/2016/04/13/19/20/binary-1327493_960_720.jpg";
  Color _color = Color.fromRGBO(44, 172, 152, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              child: Image(
                  image: NetworkImage(_backgroundImage), fit: BoxFit.cover),
            ),
          ),

          // container
          Positioned(
            top: 80,
            left: 50,
            child: Container(
                height: 300,
                width: 230,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0))),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 10,
                      right: 10,
                      child:
                          Icon(Icons.settings, size: 16.0, color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                              flex: 2,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  // profile image
                                  Container(
                                    margin: EdgeInsets.only(right: 14.0),
                                    height: 48,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: NetworkImage(_profileImage),
                                            fit: BoxFit.cover)),
                                  ),

                                  // Name and position
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text("Estelle Griffith",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold)),
                                      Text("Customer Support",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  )
                                ],
                              )),
//                          SizedBox(height: 16),
                          Expanded(
                              flex: 3,
                              child: Container(
                                margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
                                height: double.infinity,
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Hi there! Welcome to our new",
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.grey[700])),
                                    Text("Southeast Asia section since this",
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.grey[700])),
                                    Text("summer. I an here for any helps",
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.grey[700])),
                                    Text("you may have.",
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.grey[700])),
                                  ],
                                ),
                              )),
                          SizedBox(height: 4),
                          Expanded(
                              flex: 5,
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: DecorationImage(
                                        image: NetworkImage(_frogImage),
                                        fit: BoxFit.cover)),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      child: Text("AMPHIBIAN HOUSE",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.0)),
                                    ),
                                    Positioned(
                                      bottom: 5,
                                      left: 10,
                                      child: Text("Featured This Week",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Center(
                                        child: Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white.withOpacity(0.5)),
                                      child: Icon(Icons.arrow_right,
                                          size: 32.0,
                                          color: Colors.black.withOpacity(0.7)),
                                    ))
                                  ],
                                ),
                              )),
                          SizedBox(height: 4),
                          Expanded(
                              flex: 1,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 8.0),
                                    width: 26.0,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: NetworkImage(_image1),
                                            fit: BoxFit.cover)),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 8.0),
                                    width: 26.0,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: NetworkImage(_image2),
                                            fit: BoxFit.cover)),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 8.0),
                                    width: 26.0,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: NetworkImage(_image3),
                                            fit: BoxFit.cover)),
                                  ),
                                  Text("+389",
                                      style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold))
                                ],
                              )),
                        ],
                      ),
                    )
                  ],
                )),
          ),

          //  Route Container
          Positioned(
            bottom: 150,
            right: 50,
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0), color: _color),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(FontAwesomeIcons.route, color: Colors.white, size: 32.0),
                  SizedBox(height: 8),
                  Text("Route",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),

          // Text
          Positioned(
            bottom: 30,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Welcome",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 48.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text("Southeast Asia Section",
                    style: TextStyle(color: Colors.white, fontSize: 24.0)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
