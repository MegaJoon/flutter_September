import 'package:flutter/material.dart';

class EcoMuseumApp2 extends StatefulWidget {
  @override
  _EcoMuseumApp2State createState() => _EcoMuseumApp2State();
}

class _EcoMuseumApp2State extends State<EcoMuseumApp2> {
  final String _backgroundImage =
      "https://cdn.pixabay.com/photo/2018/07/30/10/52/atlantic-puffin-3572284_960_720.jpg";
  final String _image1 =
      "https://cdn.pixabay.com/photo/2016/06/30/13/49/puffin-1489022_960_720.jpg";
  final String _image2 =
      "https://cdn.pixabay.com/photo/2016/03/14/14/36/puffin-1255537_960_720.jpg";
  final String _image3 =
      "https://cdn.pixabay.com/photo/2016/07/28/00/33/puffin-1546796_960_720.jpg";
  Color _highlightColor = Color.fromRGBO(80, 167, 153, 1);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
//    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image(
                image: NetworkImage(_backgroundImage),
                fit: BoxFit.cover,
                height: screenHeight * 0.55),
          ),

          Positioned(
            top: 40,
            left: 30,
            child: Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2)),
              child: Icon(Icons.arrow_back, color: Colors.white, size: 14.0),
            ),
          ),

          Positioned(
            top: 220,
            right: 60,
            child: Container(
              height: 28,
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(16.0)),
              child: Center(
                  child: Text("Lawrence",
                      style: TextStyle(color: Colors.white, fontSize: 12.0))),
            ),
          ),

          Positioned(
            top: 240,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Puffin", style: TextStyle(color: Colors.white, fontSize: 32.0, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text("Arctic Section", style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold)),
              ],
            )
          ),

          // Black Container
          Positioned(
            top: screenHeight * 0.5,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: screenHeight * 0.4,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(28, 28, 28, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0))),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Gallery",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold)),
                        SizedBox(width: 16),
                        Text("3C - 5",
                            style: TextStyle(
                                color: _highlightColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold)),
                        Spacer(),
                        Text("Show Time",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold)),
                        SizedBox(width: 16),
                        Text("15:30",
                            style: TextStyle(
                                color: _highlightColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text(
                        "Puffins are any of three small species of alcids (auks) in the bird genus Fratercula with a brightly coloured beak during the breading seanson. These are pelagic seabirds",
                        style: TextStyle(color: Colors.grey, fontSize: 14.0),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis)
                  ],
                ),
              ),
            ),
          ),

          // White Container
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: screenHeight * 0.35,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0))),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 24.0, right: 32.0, top: 24.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Customer Review (28)",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0)),
                      SizedBox(height: 8),
                      Container(
                          margin: EdgeInsets.only(bottom: 8.0),
                          height: 80,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 44,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(_image1),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              Expanded(
                                flex: 7,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, top: 8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text("Alma Castillo",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16.0)),
                                          Spacer(),
                                          Text("9",
                                              style: TextStyle(
                                                  color: _highlightColor,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold)),
                                          Text("/10"),
                                        ],
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                          "Nice design. Closed when I was their due to construction. Would of liked to have seen more of it. Would go back again.",
                                          style: TextStyle(
                                              color: Colors.grey[500],
                                              fontSize: 14.0),
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.only(bottom: 8.0),
                          height: 80,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 44,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(_image1),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              Expanded(
                                flex: 7,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, top: 8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text("Alma Castillo",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16.0)),
                                          Spacer(),
                                          Text("9",
                                              style: TextStyle(
                                                  color: _highlightColor,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold)),
                                          Text("/10"),
                                        ],
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                          "Nice design. Closed when I was their due to construction. Would of liked to have seen more of it. Would go back again.",
                                          style: TextStyle(
                                              color: Colors.grey[500],
                                              fontSize: 14.0),
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.only(bottom: 8.0),
                          height: 80,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 44,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(_image1),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              Expanded(
                                flex: 7,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, top: 8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text("Alma Castillo",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16.0)),
                                          Spacer(),
                                          Text("9",
                                              style: TextStyle(
                                                  color: _highlightColor,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold)),
                                          Text("/10"),
                                        ],
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                          "Nice design. Closed when I was their due to construction. Would of liked to have seen more of it. Would go back again.",
                                          style: TextStyle(
                                              color: Colors.grey[500],
                                              fontSize: 14.0),
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
