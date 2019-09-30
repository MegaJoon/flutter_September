import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    String _image1 =
        "https://cdn.pixabay.com/photo/2010/12/13/10/05/background-2277_960_720.jpg";
    Color _color = Color.fromRGBO(246, 114, 88, 1);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: screenHeight * 0.7,
              width: screenWidth,
              child: Image(image: NetworkImage(_image1), fit: BoxFit.cover),
            ),
          ),

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
                child: Icon(Icons.favorite,
                    size: 20.0, color: _color)),
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
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: screenHeight * 0.4,
              width: screenWidth,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0))),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 24.0, right: 24.0, top: 12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                    SizedBox(height: 16),
                    Row(
                      children: <Widget>[
                        Text("Tropical lemonade",
                            style: TextStyle(
                                fontSize: 28.0, fontWeight: FontWeight.bold)),
                        Spacer(),
                        Text("\$3",
                            style: TextStyle(
                                fontSize: 28.0, fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(height: 8),
                    Text("16.9 FL OZ / 349 kkal",
                        style:
                            TextStyle(color: Colors.grey[300], fontSize: 14.0)),
                    SizedBox(height: 16),
                    Text("Lorem ipsum dolor sit amet, consectetur",
                        style: TextStyle(fontSize: 16.0, color: Colors.grey)),
                    Text("adipiscing elit, sed do eiusmod tempor",
                        style: TextStyle(fontSize: 16.0, color: Colors.grey)),
                    Text("incididunt ut labore et dolore magna aliqua.",
                        style: TextStyle(fontSize: 16.0, color: Colors.grey)),
                    SizedBox(height: 24),
                    Container(
                      height: 48,
                      width: screenWidth,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(color: Colors.grey[300])),
                                child: Center(
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        fontSize: 30.0, color: Colors.grey[300]),
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Center(
                                  child: Text(
                                "1",
                                style: TextStyle(fontSize: 20.0),
                              ))),
                          Expanded(
                              flex: 1,
                              child: Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:
                                    Border.all(color: Colors.grey[300])),
                                child: Center(
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        fontSize: 30.0, color: Colors.grey[300]),
                                  ),
                                ),
                              )),
                          SizedBox(width: 8),
                          Expanded(
                              flex: 3,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(32.0),
                                    color: _color),
                                child: Center(
                                    child: Text("Add to cart",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold))),
                              )),
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
