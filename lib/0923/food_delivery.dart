import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

import 'detailpage.dart';

// https://dribbble.com/shots/7187404-Food-delivery-App

class FoodDelivery extends StatefulWidget {
  @override
  _FoodDeliveryState createState() => _FoodDeliveryState();
}

class _FoodDeliveryState extends State<FoodDelivery> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    String _backgroudImage =
        "https://cdn.pixabay.com/photo/2019/09/01/21/56/cat-4446094_960_720.jpg";
    String _image1 =
        "https://cdn.pixabay.com/photo/2010/12/13/10/05/background-2277_960_720.jpg";
    String _image2 =
        "https://cdn.pixabay.com/photo/2014/04/07/05/25/gummibarchen-318362_960_720.jpg";
    String _image3 =
        "https://cdn.pixabay.com/photo/2016/04/13/07/18/blueberry-1326154_960_720.jpg";
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: screenHeight * 0.4,
              width: screenWidth,
              child: Image(
                  image: NetworkImage(_backgroudImage), fit: BoxFit.cover),
            ),
          ),

          Positioned(
              top: 50,
              left: 0,
              right: 0,
              child: Container(
                height: 16.0,
                width: screenWidth,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.star, size: 16.0, color: Colors.white),
                    Icon(Icons.star, size: 16.0, color: Colors.white),
                    Icon(Icons.star, size: 16.0, color: Colors.white),
                    Icon(Icons.star, size: 16.0, color: Colors.white),
                    Icon(Icons.star_half, size: 16.0, color: Colors.white),
                  ],
                ),
              )),

          Positioned(
            top: 40,
            right: 20,
            child: Container(
              height: 32.0,
              width: 32.0,
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Badge(
                child: Center(child: Icon(Icons.shopping_basket, size: 20.0)),
                showBadge: true,
                position: BadgePosition.topRight(top: 3.5, right: 3.5),
              ),
            ),
          ),

          Positioned(
            top: 90,
            right: 20,
            child: Container(
                height: 32.0,
                width: 32.0,
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: Icon(Icons.favorite_border,
                    size: 20.0, color: Colors.grey)),
          ),

          Positioned(
            top: 140,
            right: 20,
            child: Container(
                height: 32.0,
                width: 32.0,
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: Icon(Icons.save_alt, size: 20.0, color: Colors.grey)),
          ),

          Positioned(
            top: screenHeight * 0.35,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: screenHeight * 0.65,
              width: screenWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0)),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0, top: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Container(
//                        margin: EdgeInsets.only(top: 8.0),
                        height: 5,
                        width: 48,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: Colors.grey[300]),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text("John's little life",
                        style: TextStyle(
                            fontSize: 32.0, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Text("820 E NorthLand Ave",
                        style:
                            TextStyle(fontSize: 14.0, color: Colors.grey[300])),
                    Text("Appleton, WI 54911",
                        style:
                            TextStyle(fontSize: 14.0, color: Colors.grey[300])),
                    SizedBox(height: 16),
                    Text("Lorem ipsum dolor sit amet, consectetur",
                        style: TextStyle(fontSize: 16.0, color: Colors.grey)),
                    Text("adipiscing elit, sed do eiusmod tempor",
                        style: TextStyle(fontSize: 16.0, color: Colors.grey)),
                    Text("incididunt ut labore et dolore magna aliqua.",
                        style: TextStyle(fontSize: 16.0, color: Colors.grey)),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.only(right: 24.0),
                      child: Row(
                        children: <Widget>[
                          Text("Popular",
                              style: TextStyle(
                                  fontSize: 24.0, fontWeight: FontWeight.bold)),
                          Spacer(),
                          Text(
                            "See all",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: 200,
                      width: screenWidth,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          InkWell(
                            onTap: (){
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 16.0),
                              height: 200,
                              width: 130,
//                            color: Colors.blue,
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                      flex: 9,
                                      child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                              image: DecorationImage(
                                                  image: NetworkImage(_image1),
                                                  fit: BoxFit.cover)))),
                                  Expanded(
                                      flex: 2,
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                              flex: 8,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, top: 4.0),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text("Homemade",
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 12.0)),
                                                    Text("flakes",
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 12.0)),
                                                  ],
                                                ),
                                              )),
                                          Expanded(
                                              flex: 2,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 8.0),
                                                child: Text("\$2"),
                                              )),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 16.0),
                            height: 200,
                            width: 130,
//                            color: Colors.blue,
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                    flex: 9,
                                    child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            image: DecorationImage(
                                                image: NetworkImage(_image2),
                                                fit: BoxFit.cover)))),
                                Expanded(
                                    flex: 2,
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                            flex: 8,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0, top: 4.0),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text("Homemade",
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 12.0)),
                                                  Text("flakes",
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 12.0)),
                                                ],
                                              ),
                                            )),
                                        Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 8.0),
                                              child: Text("\$2"),
                                            )),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 16.0),
                            height: 200,
                            width: 130,
//                            color: Colors.blue,
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                    flex: 9,
                                    child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            image: DecorationImage(
                                                image: NetworkImage(_image3),
                                                fit: BoxFit.cover)))),
                                Expanded(
                                    flex: 2,
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                            flex: 8,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0, top: 4.0),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text("Homemade",
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 12.0)),
                                                  Text("flakes",
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 12.0)),
                                                ],
                                              ),
                                            )),
                                        Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 8.0),
                                              child: Text("\$2"),
                                            )),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
