import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'activity.dart';

// https://dribbble.com/shots/7225388-Travel-App-Trip-Detail-rebounded-with-Polymer/attachments/212278?mode=media

class TravelApp extends StatefulWidget {
  @override
  _TravelAppState createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  String _backgroundImage =
      "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg";
  String _profileImage =
      "https://cdn.pixabay.com/photo/2018/01/15/07/51/woman-3083377_960_720.jpg";
  String _profileImage2 =
      "https://cdn.pixabay.com/photo/2016/04/21/01/31/handsome-1342457_960_720.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // _backgroundImage
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child:
                Image(image: NetworkImage(_backgroundImage), fit: BoxFit.cover),
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
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.arrow_back_ios,
                          size: 24.0, color: Colors.black),
                      Container(
                        height: 40,
                        width: 74,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                right: 10,
                                child: Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 1.5),
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(_profileImage),
                                          fit: BoxFit.cover)),
                                )),
                            Positioned(
                                top: 0,
                                left: 10,
                                child: Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 1.5),
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(_profileImage2),
                                          fit: BoxFit.cover)),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ),

          // plateau
          Positioned(
            top: 100,
            left: 24,
            right: 0,
            bottom: 137,
            child: Container(
//              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 100.0),
                    child: Text("Plateau Lago-Naki",
                        style: TextStyle(
                            height: 0.8,
                            color: Colors.white,
                            fontSize: 48.0,
                            fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2),
                  ),
                  SizedBox(height: 8),
                  Text("16 OCT - 21 OCT".toUpperCase(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 48),
                  Text("ACTIVITIES".toUpperCase(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 16),
                  Container(
                    height: 230,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: activity.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              margin: EdgeInsets.only(right: 16.0),
                              height: 230,
                              width: 250,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(activity[index].day,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0)),
                                    Text(activity[index].date,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24.0)),
                                    SizedBox(height: 24),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(activity[index].icon, size: 20.0),
                                        SizedBox(width: 4),
                                        Text(activity[index].kind,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0)),
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 4.0, bottom: 4.0),
                                      height: 88,
                                      width: 250,
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                              flex: 7,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    8.0),
                                                            bottomLeft: Radius
                                                                .circular(8.0)),
                                                    image: DecorationImage(
                                                        image: NetworkImage(
                                                            activity[index]
                                                                .image),
                                                        fit: BoxFit.cover)),
                                              )),
                                          SizedBox(width: 2),
                                          Expanded(
                                              flex: 2,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topRight:
                                                                Radius.circular(
                                                                    8.0),
                                                            bottomRight: Radius
                                                                .circular(8.0)),
                                                    image: DecorationImage(
                                                        image: NetworkImage(
                                                            activity[index]
                                                                .image),
                                                        fit: BoxFit.cover)),
                                                child: Center(
                                                    child: Icon(
                                                        Icons.location_on,
                                                        size: 28.0)),
                                              )),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.watch_later, size: 16.0),
                                        Text(activity[index].hours,
                                            style: TextStyle(fontSize: 16.0)),
                                        Spacer(),
                                        Text(activity[index].distance,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0))
                                      ],
                                    )
                                  ],
                                ),
                              ));
                        }),
                  )
                ],
              ),
            ),
          ),

          // destination
          Positioned(
            bottom: 24,
            left: 24,
            child: Row(
              children: <Widget>[
                Icon(FontAwesomeIcons.mapPin, size: 16.0, color: Colors.white),
                SizedBox(width: 4),
                Text("DESTINATION".toUpperCase(),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0))
              ],
            ),
          )
        ],
      ),
    );
  }
}
