import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

import 'MySeparator.dart';
import 'booklist.dart';

// part 2.
// https://stackoverflow.com/questions/54019785/how-to-add-line-dash-in-flutter

class TopBook extends StatefulWidget {
  @override
  _TopBookState createState() => _TopBookState();
}

class _TopBookState extends State<TopBook> {
  Color _color = Color.fromRGBO(255, 205, 51, 1);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Column(
      children: <Widget>[
        SafeArea(
          top: true,
          left: true,
          right: true,
          child: Container(
            padding: EdgeInsets.only(left: 12.0, right: 24.0),
            height: 40,
            width: screenWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios, size: 24.0),
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                ),
                Text("Top books",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                Badge(
                  child: Icon(Icons.shopping_basket),
                  showBadge: true,
                  position: BadgePosition.topRight(top: 2.0, right: -5.0),
                  badgeColor: _color,
                )
              ],
            ),
          ),
        ),

        Container(
            padding: EdgeInsets.all(24.0),
            height: 220,
            width: screenWidth,
            child: Row(
              children: <Widget>[
                Expanded(
                    flex: 3,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2019/06/25/05/19/waterfall-4297449_960_720.jpg"),
                                fit: BoxFit.cover)))),
                Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("The black kiss",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0)),
//                          SizedBox(height: 8),
                          Text("Journey Through",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 12.0)),
//                          SizedBox(height: 8),
                          Row(
                            children: <Widget>[
                              Icon(Icons.star, size: 18.0, color: _color),
                              Icon(Icons.star, size: 18.0, color: _color),
                              Icon(Icons.star, size: 18.0, color: _color),
                              Icon(Icons.star, size: 18.0, color: _color),
                              Icon(Icons.star,
                                  size: 18.0, color: Colors.grey[200]),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                  height: 32,
                                  width: 80,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0), color: Colors.grey[200]),
                                  child: Center(child: Text("Journey", style: TextStyle(fontSize: 12.0),))),
                              Spacer(),
                              Container(
                                  height: 32,
                                  width: 80,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0), color: Colors.grey[200]),
                                  child: Center(child: Text("Biography", style: TextStyle(fontSize: 12.0)))),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(shape: BoxShape.circle, color: _color),
                                child: Icon(Icons.bookmark, size: 18.0),
                              ),
                              Spacer(),
                              Container(
                                  height: 32,
                                  width: 100,
                                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8.0)),
                                  child: Center(
                                      child: Text("Book Now",
                                          style:
                                              TextStyle(color: Colors.white, fontSize: 10.0)))),
                            ],
                          )
                        ],
                      ),
                    )),
              ],
            )),
        // Listview
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          height: 399,
          width: screenWidth,
//                  color: Colors.red,
          child: ListView.builder(
              itemCount: booklist.length,
              itemBuilder: (context, index) {
                return Container(
                    height: 130,
                    width: screenWidth,
//                            color: Colors.yellow,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 8,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  booklist[index].image),
                                              fit: BoxFit.cover)))),
                              Expanded(
                                  flex: 7,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(booklist[index].title,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.0)),
                                        SizedBox(height: 8),
                                        Text(booklist[index].writer,
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12.0)),
                                        SizedBox(height: 8),
                                        Row(
                                          children: <Widget>[
                                            Icon(Icons.star,
                                                size: 18.0, color: _color),
                                            Icon(Icons.star,
                                                size: 18.0, color: _color),
                                            Icon(Icons.star,
                                                size: 18.0, color: _color),
                                            Icon(Icons.star,
                                                size: 18.0, color: _color),
                                            Icon(Icons.star,
                                                size: 18.0,
                                                color: Colors.grey[200]),
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 16.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text("\$ 17",
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(height: 16),
                                        Container(
                                          height: 32,
                                          width: 32,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: _color),
                                          child:
                                              Icon(Icons.bookmark, size: 18.0),
                                        )
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
//                        Expanded(flex: 2, child: Divider(color: Colors.grey)),
                        Expanded(flex: 2, child: MySeparator(height: 5, color: Colors.grey[300])),
                      ],
                    ));
              }),
        )
      ],
    ));
  }
}
