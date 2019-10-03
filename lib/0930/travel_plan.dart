import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
// https://dribbble.com/shots/7265081-Travel-plan-01/attachments/222310?mode=media

class TravelPlan extends StatefulWidget {
  @override
  _TravelPlanState createState() => _TravelPlanState();
}

class _TravelPlanState extends State<TravelPlan> {
  String _backgroundImage =
      "https://cdn.pixabay.com/photo/2017/01/28/02/24/japan-2014619_960_720.jpg";
  String _profileImage =
      "https://cdn.pixabay.com/photo/2017/02/23/13/05/profile-2092113_960_720.png";
  String _profileImage2 =
      "https://cdn.pixabay.com/photo/2015/07/09/00/29/woman-837156_960_720.jpg";
  String _profileImage3 =
      "https://cdn.pixabay.com/photo/2012/12/20/10/12/michelangelo-71282_960_720.jpg";
  String _profileImage4 =
      "https://cdn.pixabay.com/photo/2016/01/10/21/06/eye-1132531_960_720.jpg";
  String _profileImage5 =
      "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg";
  String _image =
      "https://cdn.pixabay.com/photo/2019/02/22/08/36/japan-4013068_960_720.jpg";
  String _image2 =
      "https://cdn.pixabay.com/photo/2019/09/26/22/41/savannah-4507170_960_720.jpg";
  String _image3 =
      "https://cdn.pixabay.com/photo/2013/11/15/13/57/california-210913_960_720.jpg";
  Color _color = Color.fromRGBO(30, 147, 146, 1);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // top imag
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                  padding: EdgeInsets.only(top: screenHeight * 0.175),
                  height: screenHeight * 0.35,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(_backgroundImage),
                          fit: BoxFit.cover)),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          flex: 7,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 24.0, right: 24.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.location_on,
                                        size: 16.0, color: Colors.white),
                                    Text("New York!",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0))
                                  ],
                                ),
                                Text("Discovery",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 2,
                                right: 40,
                                child: Container(
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(_profileImage),
                                          fit: BoxFit.contain)),
                                ),
                              ),
                              Positioned(
                                  top: 0,
                                  right: 36,
                                  child: Container(
                                      height: 16,
                                      width: 16,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromRGBO(253, 23, 47, 1)),
                                      child: Center(
                                          child: Text("1",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12.0)))))
                            ],
                          )),
                    ],
                  ))),

          Positioned(
            top: screenHeight * 0.35 - 20,
            left: 24,
            right: 24,
            child: Container(
              padding: EdgeInsets.only(left: 12.0),
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 4)
                  ]),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Good evening, where r u want go?",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0),
                    suffixIcon:
                        Icon(Icons.search, size: 20.0, color: Colors.grey)),
              ),
            ),
          ),

          Positioned(
            top: screenHeight * 0.35 + 20 + 30,
            left: 24,
            right: 0,
            bottom: 0,
            child: Container(
//              color: Colors.purpleAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Vlog",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 8),
                  // listview
                  Container(
                    height: 100,
//                    color: Colors.amber,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          height: 48,
                          width: 80,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Center(
                                    child: Container(
                                      margin: EdgeInsets.only(right: 16.0),
                                      height: 56,
                                      width: 56,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image:
                                                  NetworkImage(_profileImage),
                                              fit: BoxFit.contain)),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 20,
                                    child: Container(
                                      height: 16,
                                      width: 16,
                                      decoration: BoxDecoration(
                                          color: _color,
                                          shape: BoxShape.circle),
                                      child: Icon(Icons.add,
                                          size: 12.0, color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                              Text("My story",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                        Container(
                          height: 48,
                          width: 80,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Center(
                                    child: Container(
                                      height: 56,
                                      width: 56,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: _color, width: 2),
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image:
                                                  NetworkImage(_profileImage2),
                                              fit: BoxFit.contain)),
                                    ),
                                  ),
                                ],
                              ),
                              Text("Marcus",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Container(
                          height: 48,
                          width: 80,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Center(
                                    child: Container(
                                      height: 56,
                                      width: 56,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: _color, width: 2),
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image:
                                                  NetworkImage(_profileImage3),
                                              fit: BoxFit.contain)),
                                    ),
                                  ),
                                ],
                              ),
                              Text("Rodrigo",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Container(
                          height: 48,
                          width: 80,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Center(
                                    child: Container(
                                      height: 56,
                                      width: 56,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: _color, width: 2),
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image:
                                                  NetworkImage(_profileImage4),
                                              fit: BoxFit.contain)),
                                    ),
                                  ),
                                ],
                              ),
                              Text("Louis",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Container(
                          height: 48,
                          width: 80,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Center(
                                    child: Container(
                                      height: 56,
                                      width: 56,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: _color, width: 2),
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image:
                                                  NetworkImage(_profileImage5),
                                              fit: BoxFit.contain)),
                                    ),
                                  ),
                                ],
                              ),
                              Text("Eric Roooo",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(right: 24.0),
                    child: Row(
                      children: <Widget>[
                        Text("For You",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold)),
                        Spacer(),
                        Text("See All",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 12.0)),
                        Icon(Icons.arrow_forward_ios,
                            size: 12.0, color: Colors.grey)
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 150,
//                    color: Colors.amber,
                  margin: EdgeInsets.only(bottom: 16.0),
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 16.0),
                          height: 150,
                          width: 130,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  flex: 7,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        image: DecorationImage(
                                            image: NetworkImage(_image),
                                            fit: BoxFit.cover)),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Text("Chinatown",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0))),
                              Expanded(
                                  flex: 1,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.location_on,
                                          color: _color, size: 16.0),
                                      Text("New york",
                                          style: TextStyle(
                                              color: _color,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold))
                                    ],
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 16.0),
                          height: 150,
                          width: 130,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  flex: 7,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        image: DecorationImage(
                                            image: NetworkImage(_image2),
                                            fit: BoxFit.cover)),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Text("Manhattan",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0))),
                              Expanded(
                                  flex: 1,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.location_on,
                                          color: _color, size: 16.0),
                                      Text("New york",
                                          style: TextStyle(
                                              color: _color,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold))
                                    ],
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 16.0),
                          height: 150,
                          width: 130,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  flex: 7,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        image: DecorationImage(
                                            image: NetworkImage(_image3),
                                            fit: BoxFit.cover)),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Text("Bethesda",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0))),
                              Expanded(
                                  flex: 1,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.location_on,
                                          color: _color, size: 16.0),
                                      Text("New york",
                                          style: TextStyle(
                                              color: _color,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold))
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Text("Discount zone",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
