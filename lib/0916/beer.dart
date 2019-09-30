import 'package:flutter/material.dart';

// https://dribbble.com/shots/7147009-beer-review-ui/attachments/151196?mode=media

class BeerUI extends StatefulWidget {
  @override
  _BeerUIState createState() => _BeerUIState();
}

class _BeerUIState extends State<BeerUI> {
  final String _image =
      "https://cdn.pixabay.com/photo/2013/07/13/14/14/belgium-162240_960_720.png";
  final Color _color = Color.fromRGBO(143, 79, 43, 1);
  final String _beerImage =
      "https://cdn.pixabay.com/photo/2013/07/13/12/31/wheat-beer-159789_960_720.png";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            height: screenHeight,
            width: 52,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius:
                    BorderRadius.only(topRight: Radius.circular(32.0))),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(flex: 1, child: Icon(Icons.menu)),
                  Expanded(flex: 1, child: Icon(Icons.search)),
                  Expanded(
                      flex: 2,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16.0),
                                  bottomLeft: Radius.circular(16.0))),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        image: DecorationImage(
                                            image: NetworkImage(_image),
                                            fit: BoxFit.cover))),
                                SizedBox(height: 24),
                                TabText(text: "Belgium", isSelected: true)
                              ],
                            ),
                          ))),
                  Expanded(
                      flex: 2,
                      child: TabText(text: "Germany", isSelected: false)),
                  Expanded(
                      flex: 2,
                      child: TabText(text: "France", isSelected: false)),
                  Expanded(
                      flex: 2,
                      child: TabText(text: "Korea", isSelected: false)),
                  Expanded(
                      flex: 2,
                      child: TabText(text: "Japan", isSelected: false)),
                  Expanded(flex: 1, child: Icon(Icons.keyboard_arrow_down)),
                ],
              ),
            ),
          ),
          // Main Page
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: <Widget>[
              SizedBox(height: 64),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SizedBox(width: 90),
                  Text("Hoegaarden",
                      style: TextStyle(
                          color: _color,
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold)),
                  SizedBox(width: 54),
                  Text("Saiso",
                      style: TextStyle(
                          color: _color.withOpacity(0.5), fontSize: 16.0)),
                ],
              ),
              SizedBox(height: 50),
              Container(
                height: 300,
                width: 500,
//                color: Colors.pink,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(_beerImage),
                                  colorFilter:
                                      ColorFilter.srgbToLinearGamma())),
                        )),
                    Positioned(
                        bottom: 150,
                        left: 180,
                        right: 0,
                        child: Icon(Icons.arrow_forward_ios,
                            color: Colors.grey, size: 20.0)),
                    Positioned(
                        bottom: 0,
                        right: -30,
                        top: 0,
                        child: Container(
                            height: 300,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(_beerImage)),
                            )))
                  ],
                ),
              ),
              SizedBox(height: 36),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Hoegaarden ",
                      style: TextStyle(
                          color: _color,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold)),
                  Text("Wit Blanche",
                      style: TextStyle(
                          color: Color.fromRGBO(96, 139, 159, 1),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 8),
              Text("Belgium Witbier-Bottle type",
                  style: TextStyle(color: Colors.grey, fontSize: 14.0)),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Alcohol ",
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold)),
                  Text("4.9%",
                      style: TextStyle(color: Colors.grey, fontSize: 14.0)),
                  SizedBox(width: 16),
                  Text("Size ",
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold)),
                  Text("330ml",
                      style: TextStyle(color: Colors.grey, fontSize: 14.0)),
                  SizedBox(width: 16),
                  Text("Est. Cal ",
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold)),
                  Text("147",
                      style: TextStyle(color: Colors.grey, fontSize: 14.0)),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.star, size: 24.0, color: Colors.yellow[700]),
                  SizedBox(width: 8),
                  Icon(Icons.star, size: 24.0, color: Colors.yellow[700]),
                  SizedBox(width: 8),
                  Icon(Icons.star, size: 24.0, color: Colors.yellow[700]),
                  SizedBox(width: 8),
                  Icon(Icons.star, size: 24.0, color: Colors.yellow[700]),
                  SizedBox(width: 8),
                  Icon(Icons.star,
                      size: 24.0, color: Colors.yellow.withOpacity(0.2)),
                  SizedBox(width: 8),
                  Text("4.2",
                      style:
                          TextStyle(color: Colors.yellow[700], fontSize: 20.0))
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Icon(Icons.favorite_border,
                          size: 20.0, color: Colors.grey)),
                  SizedBox(width: 16),
                  Container(
                      height: 48,
                      width: 150,
                      decoration: BoxDecoration(
                          color: _color,
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Center(
                        child: Text("RATE & REVIEW".toUpperCase(),
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.0)),
                      )),
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}

class TabText extends StatelessWidget {
  final bool isSelected;
  final String text;

  TabText({this.text, this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
        angle: 1.58,
        child: Center(
            child: Text(
          text,
          style: isSelected
              ? TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold)
              : TextStyle(fontSize: 12.0, color: Colors.grey[700]),
        )));
  }
}
