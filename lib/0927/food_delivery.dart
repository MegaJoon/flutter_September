import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// https://dribbble.com/shots/7217842-Food-delivery/attachments/207330?mode=media

class FoodDelivery extends StatefulWidget {
  @override
  _FoodDeliveryState createState() => _FoodDeliveryState();
}

class _FoodDeliveryState extends State<FoodDelivery> {
  int _currentIndex = 0;
  Color _selectedColor = Color.fromRGBO(87, 190, 142, 1);
  Color _unselectedColor = Color.fromRGBO(210, 240, 225, 1);
  String _image =
      "https://cdn.pixabay.com/photo/2019/09/13/14/31/elephant-4474027_960_720.jpg";
  Color _color1 = Color.fromRGBO(255, 183, 146, 1);
  Color _color2 = Color.fromRGBO(253, 203, 120, 1);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //
          SafeArea(
            top: true,
            left: true,
            right: true,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 24.0),
              alignment: Alignment.centerRight,
              height: 40,
//              width: screenWidth,
              child: Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(_image), fit: BoxFit.cover),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 4,
                          spreadRadius: 2)
                    ]),
              ),
            ),
          ),

          // Food Delivery
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text("Food Delivery",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36.0)),
          ),

          // Row
          Container(
            margin: EdgeInsets.all(24.0),
            height: 40,
            width: screenWidth,
//            color: Colors.redAccent,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                // fliter icon
                Container(
                  margin: EdgeInsets.only(right: 12.0),
                  width: 70,
                  height: 40,
                  decoration: BoxDecoration(
                      color: _unselectedColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24.0),
                          bottomRight: Radius.circular(24.0),
                          topRight: Radius.circular(4.0),
                          bottomLeft: Radius.circular(4.0))),
                  child: Icon(FontAwesomeIcons.exchangeAlt,
                      color: _selectedColor, size: 24.0),
                ),

                Container(
                  margin: EdgeInsets.only(right: 12.0),
                  width: 110,
                  height: 40,
                  decoration: BoxDecoration(
                      color: _unselectedColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24.0),
                          bottomRight: Radius.circular(24.0),
                          topRight: Radius.circular(4.0),
                          bottomLeft: Radius.circular(4.0))),
                  child: Center(
                      child: Text("Asian",
                          style: TextStyle(
                              color: _selectedColor,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold))),
                ),

                Container(
                  margin: EdgeInsets.only(right: 12.0),
                  width: 110,
                  height: 40,
                  decoration: BoxDecoration(
//                      color: _unselectedColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24.0),
                          bottomRight: Radius.circular(24.0),
                          topRight: Radius.circular(4.0),
                          bottomLeft: Radius.circular(4.0))),
                  child: Center(
                      child: Text("Italian",
                          style:
                              TextStyle(color: Colors.grey, fontSize: 20.0))),
                ),

                Container(
                  margin: EdgeInsets.only(right: 12.0),
                  width: 110,
                  height: 40,
                  decoration: BoxDecoration(
//                      color: _unselectedColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24.0),
                          bottomRight: Radius.circular(24.0),
                          topRight: Radius.circular(4.0),
                          bottomLeft: Radius.circular(4.0))),
                  child: Center(
                      child: Text("American",
                          style:
                              TextStyle(color: Colors.grey, fontSize: 20.0))),
                ),
              ],
            ),
          ),

          // The Best Dishes
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text("The Best Dishes",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0)),
          ),

          // image
          Container(
            margin: EdgeInsets.only(top: 24.0, left: 24.0),
            height: 375,
            width: screenWidth,
//            color: Colors.pink,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 16.0, right: 24.0),
                  height: 370,
                  width: 270,
                  decoration: BoxDecoration(
                      color: _color1,
                      borderRadius: BorderRadius.circular(24.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 1)
                      ]),
                  child: Stack(
                    // food image
                    children: <Widget>[
                      Positioned(
                          top: -140,
                          right: -250,
                          child: Image(
                              image: AssetImage("assets/udonsoup.png"),
                              fit: BoxFit.contain)),

                      // favorite icon
//                      Positioned(
//                        top: 0,
//                        right: 0,
//                        child: Container(
//                          height: 56,
//                          width: 56,
//                          decoration: BoxDecoration(
//                              color: Colors.grey[300],
//                              borderRadius: BorderRadius.only(
//                                  bottomLeft: Radius.circular(16.0),
//                                  topRight: Radius.circular(16.0))),
//                          child: Icon(Icons.favorite_border,
//                              color: Colors.black, size: 24.0),
//                        ),
//                      ),

                      // text
                      Positioned(
                          bottom: 30,
                          left: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("\$13.00",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 32.0,
                                      fontWeight: FontWeight.bold)),
                              Text("Udon Soup With",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                              Text("Chicken",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
//          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: _selectedColor,
          currentIndex: _currentIndex,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 24.0), title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border, size: 24.0), title: Text("")),
            BottomNavigationBarItem(
                icon: Badge(
                    child: Icon(
                      Icons.shopping_basket,
                      size: 24.0,
                    ),
                    showBadge: true,
                    badgeColor: Colors.redAccent,
                    position: BadgePosition.bottomRight(bottom: 0, right: -3)),
                title: Text("")),
          ]),
    );
  }
}
