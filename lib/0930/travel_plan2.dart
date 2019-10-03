import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:rating_bar/rating_bar.dart';

// https://pub.dev/packages/sliding_up_panel
// https://pub.dev/packages/rating_bar#-readme-tab-

class TravelPlan2 extends StatefulWidget {
  @override
  _TravelPlan2State createState() => _TravelPlan2State();
}

class _TravelPlan2State extends State<TravelPlan2> {
  String _backgroundImage =
      "https://cdn.pixabay.com/photo/2017/01/28/02/24/japan-2014618_960_720.jpg";
  Color _color = Color.fromRGBO(30, 147, 146, 1);
  String title =
      "Fasten your seatbelts and get ready for and amazing adventure with spectacular scenery along this breathtaking, cliff-hugging road.";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: screenHeight * 0.55,
//              height: screenHeight,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(_backgroundImage),
                      fit: BoxFit.cover)),
            ),
          ),

          // slide up panel
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: screenHeight * 0.5,
              decoration: BoxDecoration(
                  color: _color,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0))),
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 12.0, left: 24.0, right: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                        child: Container(
                            margin: EdgeInsets.only(bottom: 24),
                            height: 4,
                            width: 64,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: Colors.white))),
                    Row(
                      children: <Widget>[
                        Icon(Icons.calendar_today,
                            size: 16.0, color: Colors.white),
                        SizedBox(width: 4),
                        Text("2 Days",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.0)),
                        SizedBox(width: 24),
                        Icon(Icons.location_on,
                            size: 16.0, color: Colors.white),
                        SizedBox(width: 4),
                        Text("10.1KM",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.0)),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text("CHINATOWN, NEW YORK",
                        style: TextStyle(color: Colors.white, fontSize: 24.0)),
                    Text("USA",
                        style: TextStyle(color: Colors.white, fontSize: 24.0)),
                    SizedBox(height: 24),
                    Text(title,
                        style: TextStyle(
                            color: Colors.white, fontSize: 16.0, height: 1.2)),
                    SizedBox(height: 24),
                    Row(
                      children: <Widget>[
//                        Icon(Icons.star, color: Colors.amber, size: 20.0),
//                        Icon(Icons.star, color: Colors.amber, size: 20.0),
//                        Icon(Icons.star, color: Colors.amber, size: 20.0),
//                        Icon(Icons.star, color: Colors.amber, size: 20.0),
//                        Icon(Icons.star, color: Colors.amber, size: 20.0),

                        RatingBar.readOnly(
                          initialRating: 4.95,
                          isHalfAllowed: true,
                          halfFilledIcon: Icons.star_half,
                          halfFilledColor: Colors.amber,
                          filledIcon: Icons.star,
                          filledColor: Colors.amber,
                          emptyIcon: Icons.star_border,
                          emptyColor: Colors.amber,
                          size: 20.0,
                        ),

                        SizedBox(width: 8),
                        Text("4.95 (1109)",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.0))
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 12),
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.keyboard_arrow_up,
                              size: 16.0, color: Colors.white),
                          Text("Swipe up for more",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.0))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

//            child: SlidingUpPanel(
//              panel:
////              Text("This is the cliding Widget"),
//
//                  Container(
//                decoration: BoxDecoration(
//                    color: _color,
//                    borderRadius: BorderRadius.only(
//                        topLeft: Radius.circular(16.0),
//                        topRight: Radius.circular(16.0))),
//              ),
//              collapsed: Container(
//                color: _color,
//                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    Icon(Icons.keyboard_arrow_up,
//                        size: 16.0, color: Colors.white),
//                    Text("Swipe up for more",
//                        style: TextStyle(color: Colors.white, fontSize: 16.0))
//                  ],
//                ),
//              ),
//            ),
          )
        ],
      ),
    );
  }
}
