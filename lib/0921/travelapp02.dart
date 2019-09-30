import 'package:flutter/material.dart';

import 'MyContainer.dart';

// https://dribbble.com/shots/7184762-Travel-app-Exploration
class TravelApp02 extends StatefulWidget {
  @override
  _TravelApp02State createState() => _TravelApp02State();
}

class _TravelApp02State extends State<TravelApp02> {
  @override
  Widget build(BuildContext context) {
    String _profileImage =
        "https://cdn.pixabay.com/photo/2019/08/06/08/46/smoke-4387774_960_720.png";
    String _image1 =
        "https://cdn.pixabay.com/photo/2019/08/03/04/43/inkscape-4381041_960_720.png";
    String _image2 =
        "https://cdn.pixabay.com/photo/2019/06/07/13/11/landscape-4258253_960_720.jpg";
    String _image3 =
        "https://cdn.pixabay.com/photo/2019/02/14/07/28/painting-3995999_960_720.jpg";
    String _image4 =
        "https://cdn.pixabay.com/photo/2019/04/24/21/55/cinema-4153289_960_720.jpg";
    String _image5 =
        "https://cdn.pixabay.com/photo/2019/09/17/12/52/landscape-4483411_960_720.jpg";
    String _image6 =
        "https://cdn.pixabay.com/photo/2019/09/18/02/36/nature-4484921_960_720.jpg";
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
                  height: 66,
                  width: screenWidth,
//                  color: Colors.red,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          flex: 9,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Choice Best",
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      fontStyle: FontStyle.italic)),
                              Text("Destination",
                                  style: TextStyle(
                                      fontSize: 32.0,
                                      fontWeight: FontWeight.bold)),
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Image(
                            image: NetworkImage(_profileImage),
                            height: 66.0,
                            width: 66.0,
                            fit: BoxFit.cover,
                          )),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16.0, right: 56.0),
                height: 56,
                width: screenWidth,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8.0)),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon:
                            Icon(Icons.search, size: 24.0, color: Colors.grey),
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 16.0)),
                  ),
                ),
              ),

              SizedBox(height: 16.0),
              // Popular
              Text("Popular",
                  style:
                      TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
              SizedBox(height: 12.0),
              Container(
                height: 140,
                width: screenWidth,
                child: Row(
                  children: <Widget>[
                    MyContainer(height: 140, image: _image1, title: "\$450.00", subtitle: "Fletcherbury"),
                    SizedBox(width: 24),
                    MyContainer(height: 140, image: _image2, title: "\$450.00", subtitle: "New Ashleigh"),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              // Recommend
              Text("Recommend",
                  style:
                      TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
              SizedBox(height: 12.0),
              Container(
                  height: 400, width: screenWidth,
                child: Row(
                  children: <Widget>[
                    Expanded(flex: 1, child: Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Column(
                        children: <Widget>[
                          Expanded(flex: 6, child: MyContainer(height: 140, image: _image3, title: "\$450.00", subtitle: "Ulicesside")),
                          SizedBox(height: 16),
                          Expanded(flex: 4, child: MyContainer(height: 140, image: _image4, title: "\$450.00", subtitle: "Fletcherbury")),
                        ],
                      ),
                    )),
                    Expanded(flex: 1, child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Column(
                        children: <Widget>[
                          Expanded(flex: 4, child: MyContainer(height: 140, image: _image5, title: "\$450.00", subtitle: "Justynmouth")),
                          SizedBox(height: 16),
                          Expanded(flex: 6, child: MyContainer(height: 140, image: _image6, title: "\350.00", subtitle: "Fletcherbury")),
                        ],
                      ),
                    )),
                  ],
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
