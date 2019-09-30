import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

// https://dribbble.com/shots/7146083-Rental-and-sale-of-electric-scooters/attachments/150293?mode=media

class Scooters extends StatefulWidget {
  @override
  _ScootersState createState() => _ScootersState();
}

class _ScootersState extends State<Scooters> {
  @override
  Widget build(BuildContext context) {
    final _image =
        "https://cdn.pixabay.com/photo/2016/10/11/00/49/boy-1730246_960_720.jpg";
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final Color _color = Color.fromRGBO(147, 201, 82, 1);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background image
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: screenHeight,
              width: screenWidth,
              child: Image(image: NetworkImage(_image), fit: BoxFit.cover),
            ),
          ),

          //
          Positioned(
            top: 0,
            left: 0,
            child: SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
                    padding: EdgeInsets.only(left: 24.0, right: 24.0),
                    height: 40,
                    width: screenWidth,
                    child: Row(
                      children: <Widget>[
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Icon(Icons.menu,
                                size: 20, color: Colors.white)),
                        Spacer(),
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(8.0)),
//                            child: Icon(Icons.notifications, size: 20, color: Colors.white)),
                            child: Badge(
                                child: Center(
                                    child: Icon(Icons.notifications,
                                        size: 20, color: Colors.white)),
                                badgeColor: _color,
                                position: BadgePosition.topRight(
                                    top: 10.0, right: 8.0),
                                showBadge: true)),
                      ],
                    ))),
          ),

          Positioned(
            bottom: 32,
            left: 0,
            right: 0,
            child: Column(
              children: <Widget>[
                Text("Getting around the city",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0)),
                SizedBox(height: 8),
                Text("has become easy",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0)),
                SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        print("Container clicked");
                        // if clicked, page move
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondPage()));
                      });
                    },
                    child: Container(
                        height: 52,
                        width: screenWidth,
                        decoration: BoxDecoration(
                            color: _color,
                            borderRadius: BorderRadius.circular(16.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 4,
                                  spreadRadius: 4)
                            ]),
                        child: Center(
                          child: Text("Start now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold)),
                        )),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Color _color = Color.fromRGBO(147, 201, 82, 1);
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final _image2 =
        "https://cdn.pixabay.com/photo/2016/03/31/15/16/child-1293122_960_720.png";
    final _image3 =
        "https://cdn.pixabay.com/photo/2016/04/01/08/49/box-1299001_960_720.png";
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SafeArea(
                    top: true,
                    left: true,
                    right: true,
                    child: Container(
//                        padding: EdgeInsets.only(left: 24.0, right: 24.0),
                        height: 40,
                        width: screenWidth,
                        child: Row(
                          children: <Widget>[
                            Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: _color,
                                    borderRadius: BorderRadius.circular(8.0)),
//                            child: Icon(Icons.arrow_back_ios,size: 20, color: Colors.white)),
                                child: IconButton(
                                    icon: new Icon(Icons.arrow_back_ios,
                                        size: 20, color: Colors.white),
                                    onPressed: () {
//                              print("on pressed");
                                      // return mainpage
                                      Navigator.pop(context);
                                    })),
                            Spacer(),
                            Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(8.0)),
//                            child: Icon(Icons.notifications, size: 20, color: Colors.white)),
                                child: Badge(
                                    child: Center(
                                        child: Icon(Icons.notifications,
                                            size: 20, color: Colors.white)),
                                    badgeColor: _color,
                                    position: BadgePosition.topRight(
                                        top: 10.0, right: 8.0),
                                    showBadge: true)),
                          ],
                        ))),
                SizedBox(height: 32),
                Text("Globber One",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold)),
                Text("Electric scooter",
                    style: TextStyle(color: Colors.grey, fontSize: 20.0)),
                SizedBox(height: 32),
                Container(
                    height: 120,
                    width: 120,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                                height: 52,
                                width: 52,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0),
                                    border: Border.all(
                                        width: 0.5, color: Colors.grey)),
                                child: Center(
                                    child: Text("36V",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black)))),
                            SizedBox(width: 16),
                            Container(
                                height: 52,
                                width: 52,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0),
                                    border: Border.all(
                                        width: 0.5, color: Colors.grey)),
                                child: Center(
                                    child: Text("20km",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black)))),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: <Widget>[
                            Container(
                                height: 52,
                                width: 52,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0),
                                    border: Border.all(
                                        width: 0.5, color: Colors.grey)),
                                child: Center(
                                    child: Text("3 hr",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black)))),
                            SizedBox(width: 16),
                            Container(
                                height: 52,
                                width: 52,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0),
                                    border: Border.all(
                                        width: 0.5, color: Colors.grey)),
                                child: Center(
                                    child: Text("75kg",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black)))),
                          ],
                        ),
                      ],
                    )),
                SizedBox(height: 16),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(width: 0.5, color: Colors.grey)),
                  child: Center(
                      child: Container(
                          height: 48,
                          width: 48,
                          child: Image(
                              image: NetworkImage(_image3),
                              fit: BoxFit.cover))),
                ),
                SizedBox(height: 48),
                Container(
                  height: 64,
                  width: 64,
                  decoration: BoxDecoration(
                      color: _color, borderRadius: BorderRadius.circular(16.0)),
                  child: Icon(Icons.arrow_right, size: 40, color: Colors.white),
                )
              ],
            ),
          ),
          Positioned(
              top: screenHeight * 0.2,
              left: screenWidth * 0.5,
              right: 0,
              child: Image(
                  image: NetworkImage(_image2),
                  height: screenHeight * 0.7,
                  width: screenWidth))
        ],
      ),
//        bottomNavigationBar: BottomAppBar(elevation: 0,
//          child: Container(
//            padding: EdgeInsets.only(left: 24.0, right: 24.0),
//            height: 64, width: screenWidth,
//            child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//              children: <Widget>[
//                IconButton(icon: Icon(Icons.home), iconSize: 24.0, color: _color),
//                IconButton(icon: Icon(Icons.menu), iconSize: 24.0,),
//                IconButton(icon: Icon(Icons.search), iconSize: 24.0,),
//                IconButton(icon: Icon(Icons.location_on), iconSize: 24.0,),
//                IconButton(icon: Icon(Icons.supervisor_account), iconSize: 24.0,),
//              ],
//            ),
//          ),
//        ));

      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.indigo,
          selectedLabelStyle: TextStyle(color: Colors.indigo),
          unselectedItemColor: Colors.grey,
          onTap: (value) {
            _currentIndex = value;
            setState(() {
              print(_currentIndex);
            });
          },
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu), title: Text("menu")),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), title: Text("search")),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_on), title: Text("location_on")),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervisor_account),
                title: Text("supervisor_account")),
          ]),
    );
  }
}
