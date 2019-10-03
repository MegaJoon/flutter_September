import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookPage extends StatefulWidget {
  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  String _image =
      "https://cdn.pixabay.com/photo/2014/08/11/21/40/wall-416062_960_720.jpg";
  String _profileImage =
      "https://cdn.pixabay.com/photo/2018/01/15/07/51/woman-3083377_960_720.jpg";
  String text =
      "Outstanding Park Avenue address, with South and West exposures and sweeping downtown views. This elegant 3-bedroom, 3333333333333333333333";
  Color _color = Color.fromRGBO(255, 148, 89, 1);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // top background image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image(
                image: NetworkImage(_image),
                fit: BoxFit.cover,
                height: screenHeight * 0.45),
          ),

          // appbar
          Positioned(
            top: 0,
            left: 24,
            right: 24,
            child: SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    icon:
                        Icon(Icons.arrow_back, size: 24.0, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                )),
          ),

          // white container
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
                height: screenHeight * 0.6,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0))),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 32.0, right: 32.0, top: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // grey
                      Center(
                        child: Container(
//                            margin: EdgeInsets.only(top: 12.0),
                            height: 4,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.grey[300])),
                      ),
                      SizedBox(height: 16),
                      Text("Apt with city view",
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold)),
                      SizedBox(height: 4),
                      Text("8km from you, \$13,000/m",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey)),
                      SizedBox(height: 24),
                      Text("Facilities",
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold)),
                      SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.only(right: 80.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(FontAwesomeIcons.bed,
                                color: _color, size: 20.0),
                            Text("2",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold)),
                            Icon(FontAwesomeIcons.shower,
                                color: _color, size: 20.0),
                            Text("1",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold)),
                            Icon(FontAwesomeIcons.toilet,
                                color: _color, size: 20.0),
                            Text("1",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold)),
                            Icon(FontAwesomeIcons.tv,
                                color: _color, size: 20.0),
                            Text("2",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      SizedBox(height: 24),
                      Padding(
                        padding: const EdgeInsets.only(right: 32.0),
                        child: Text(text,
                            style: TextStyle(
                                height: 1.0,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
                        height: 50,
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 48,
                              width: 48,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(_profileImage), fit: BoxFit.cover)),
                            ),
                            SizedBox(width: 12),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Sarah Johnson", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                                Text("Owner", style: TextStyle(fontSize: 14.0, color: Colors.grey)),
                              ],
                            )
                          ],
                        ),
                      ),

                      Container(
//                        margin: EdgeInsets.only(top: 16.0, bottom: 8.0),
                        height: 50,
                        decoration: BoxDecoration(
                            color: _color,
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                            child: Text("Book",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold))),
                      ),
                    ],
                  ),
                )),
          ),

          // favorite button
          Positioned(
            top: screenHeight * 0.4 - 20,
            right: 32,
            child: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 4)
                  ]),
              child:
                  Icon(Icons.favorite_border, color: Colors.orange, size: 24.0),
            ),
          )
        ],
      ),
    );
  }
}
