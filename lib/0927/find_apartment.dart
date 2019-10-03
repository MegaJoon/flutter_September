import 'package:flutter/material.dart';

import 'bookpage.dart';

// https://dribbble.com/shots/7218200-Find-apartment-app

class FindApartment extends StatefulWidget {
  @override
  _FindApartmentState createState() => _FindApartmentState();
}

class _FindApartmentState extends State<FindApartment> {
  String _image =
      "https://cdn.pixabay.com/photo/2014/08/11/21/40/wall-416062_960_720.jpg";
  String _image2 =
      "https://cdn.pixabay.com/photo/2017/03/19/01/43/living-room-2155376_960_720.jpg";
  String _image3 =
      "https://cdn.pixabay.com/photo/2014/08/11/21/39/wall-416060_960_720.jpg";
  String _image4 =
      "https://cdn.pixabay.com/photo/2019/03/30/21/03/space-4092053_960_720.jpg";
  String _image5 =
      "https://cdn.pixabay.com/photo/2018/08/15/20/53/bad-3609070_960_720.jpg";

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // appbar
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                margin: EdgeInsets.only(right: 32.0, bottom: 24.0),
                height: 40,
                width: screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.menu, size: 24.0),
                    Icon(Icons.search, size: 24.0),
                  ],
                ),
              ),
            ),

            // text
            Text("TODAY'S INSPIRATION".toUpperCase(),
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 24.0),
            Text("Apt with city view",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 8.0),
            Text("New York, \$10,000/m",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 16.0),
            Container(
              margin: EdgeInsets.only(right: 32.0),
              height: 200, width: screenWidth,
//              color: Colors.redAccent,
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => BookPage()));
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.0),
                              image: DecorationImage(
                                  image: NetworkImage(_image),
                                  fit: BoxFit.cover)),
                        ),
                      )),
                  SizedBox(width: 16.0),
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24.0),
                                    image: DecorationImage(
                                        image: NetworkImage(_image2),
                                        fit: BoxFit.cover)),
                              )),
                          SizedBox(height: 16.0),
                          Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24.0),
                                    image: DecorationImage(
                                        image: NetworkImage(_image3),
                                        fit: BoxFit.cover)),
                              )),
                        ],
                      )),
                ],
              ),
            ),
            SizedBox(height: 24.0),
            Text("POPULAR APARTMENTS NYC".toUpperCase(),
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 16.0),
            Container(
//              margin: EdgeInsets.only(right: 24.0),
              height: 200,
              width: screenWidth,
//              color: Colors.redAccent,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 24.0),
                    height: 200,
                    width: 280,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            height: 159,
                            width: 280,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24.0),
                                image: DecorationImage(
                                    image: NetworkImage(_image4),
                                    fit: BoxFit.cover))),
                        SizedBox(height: 8.0),
                        Text("Park Avenue Unit 9c",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0)),
                        Text("8kms from you, \$13.000/m",
                            style: TextStyle(
                              color: Colors.grey,
                                fontWeight: FontWeight.bold, fontSize: 12.0)),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 24.0),
                    height: 200,
                    width: 280,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            height: 159,
                            width: 280,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24.0),
                                image: DecorationImage(
                                    image: NetworkImage(_image5),
                                    fit: BoxFit.cover))),
                        SizedBox(height: 8.0),
                        Text("Park Avenue Unit 9c",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0)),
                        Text("5kms from you, \$13.000/m",
                            style: TextStyle(
                              color: Colors.grey,
                                fontWeight: FontWeight.bold, fontSize: 12.0)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
