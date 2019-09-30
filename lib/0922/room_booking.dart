import 'package:flutter/material.dart';
import 'package:flutter_dribbble/0922/room_booking2.dart';
import 'package:flutter_dribbble/0924/school_matching.dart';
import 'package:flutter_dribbble/0924/schoolmatching_intro.dart';

// https://dribbble.com/shots/7184877-Room-booking

class RoomBooking extends StatefulWidget {
  @override
  _RoomBookingState createState() => _RoomBookingState();
}

class _RoomBookingState extends State<RoomBooking> {
  // profile image
  String _image =
      "https://cdn.pixabay.com/photo/2019/07/12/14/54/flower-4333046_960_720.jpg";

  // apartment image
  String _image2 =
      "https://cdn.pixabay.com/photo/2019/06/25/05/19/waterfall-4297449_960_720.jpg";
  String _image3 =
      "https://cdn.pixabay.com/photo/2019/08/16/15/03/water-lily-4410471_960_720.jpg";
  String _image4 =
      "https://cdn.pixabay.com/photo/2019/06/02/00/21/moon-4245400_960_720.jpg";

  // villa image
  String _image5 =
      "https://cdn.pixabay.com/photo/2019/09/17/14/24/wolf-4483675_960_720.jpg";
  String _image6 =
      "https://cdn.pixabay.com/photo/2019/09/19/17/16/fire-bug-4489824_960_720.jpg";
  String _image7 =
      "https://cdn.pixabay.com/photo/2019/09/13/16/34/landscape-4474345_960_720.jpg";

  @override
  Widget build(BuildContext context) {
    Color _color = Color.fromRGBO(28, 161, 241, 1);
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //
          Positioned(
            top: 0,
            left: 24,
            right: 0,
            child: Column(
              children: <Widget>[
                SafeArea(
                    top: true,
                    left: true,
                    right: true,
                    child: Container(
                      padding: EdgeInsets.only(right: 24.0),
                      height: 64,
                      width: screenWidth,
//                  color: Colors.yellowAccent,
                      child: Row(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Find Your Stay",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "in ",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text: "Tehran",
                                      style: TextStyle(
                                          fontSize: 24.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ]),
                              )
                            ],
                          ),
                          Spacer(),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(_image),
                                    fit: BoxFit.cover)),
                          )
                        ],
                      ),
                    )),
                SizedBox(height: 16),
                Container(
                  margin: EdgeInsets.only(right: 24.0),
                  height: 52,
                  width: screenWidth,
                  decoration: BoxDecoration(
                      color: _color, borderRadius: BorderRadius.circular(24.0)),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Center(
                              child: Text("Popular",
                                  style: TextStyle(
                                      color: _color,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ),
                      Expanded(
                        child: Center(
                            child: Text("Recommend",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
//                                    fontWeight: FontWeight.bold
                                ))),
                      ),
                      Expanded(
                        child: Center(
                            child: Text("Trending",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
//                                    fontWeight: FontWeight.bold
                                ))),
                      ),
                    ],
                  ),
                ),
                // Apartments
                SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: Row(
                    children: <Widget>[
                      Text("Apartments",
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold)),
                      Spacer(),
                      Text("View all",
                          style: TextStyle(fontSize: 14.0, color: Colors.grey))
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Container(
                    height: 180,
                    width: screenWidth,
//                    color: Colors.pink,
                    child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(right: 24.0),
                            height: 180,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                image: DecorationImage(
                                    image: NetworkImage(_image2),
                                    fit: BoxFit.cover))),
                        Container(
                            margin: EdgeInsets.only(right: 24.0),
                            height: 180,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                image: DecorationImage(
                                    image: NetworkImage(_image3),
                                    fit: BoxFit.cover))),
                        Container(
                            margin: EdgeInsets.only(right: 24.0),
                            height: 180,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                image: DecorationImage(
                                    image: NetworkImage(_image4),
                                    fit: BoxFit.cover))),
                      ],
                    )),

                // Villa
                SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: Row(
                    children: <Widget>[
                      Text("Villa",
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold)),
                      Spacer(),
                      Text("View all",
                          style: TextStyle(fontSize: 14.0, color: Colors.grey))
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Container(
                    height: 180,
                    width: screenWidth,
//                    color: Colors.pink,
                    child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        InkWell(
                          onTap: (){
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => RoomBooking2()));
                            });
                          },
                          child: Container(
                              margin: EdgeInsets.only(right: 24.0),
                              height: 180,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                  image: DecorationImage(
                                      image: NetworkImage(_image5),
                                      fit: BoxFit.cover))),
                        ),
                        Container(
                            margin: EdgeInsets.only(right: 24.0),
                            height: 180,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                image: DecorationImage(
                                    image: NetworkImage(_image6),
                                    fit: BoxFit.cover))),
                        Container(
                            margin: EdgeInsets.only(right: 24.0),
                            height: 180,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                image: DecorationImage(
                                    image: NetworkImage(_image7),
                                    fit: BoxFit.cover))),
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 40,
          width: screenWidth,
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.only(left: 36.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.home, color: _color),
                      SizedBox(width: 4),
                      Text(
                        "Home",
                        style: TextStyle(color: _color),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.favorite_border),
                      SizedBox(width: 4),
                      Text("Favorite")
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.crop_square),
                      SizedBox(width: 4),
                      Text("Category")
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
