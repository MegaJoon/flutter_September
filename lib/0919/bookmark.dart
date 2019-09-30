import 'package:flutter/material.dart';
import 'package:flutter_dribbble/0921/MySeparator.dart';
import 'package:flutter_dribbble/0921/booklist.dart';
import 'package:flutter_dribbble/0921/top_book.dart';
import 'package:percent_indicator/percent_indicator.dart';

// https://dribbble.com/shots/7167735-Bookmark-app
// part 1.

// https://pub.dev/packages/percent_indicator
// https://stackoverflow.com/questions/22824403/dart-exception-class-string-has-no-instance-method

class BookMarkApp extends StatefulWidget {
  @override
  _BookMarkAppState createState() => _BookMarkAppState();
}

class _BookMarkAppState extends State<BookMarkApp> {
  Color _color = Color.fromRGBO(255, 205, 51, 1);
  String _image =
      "https://cdn.pixabay.com/photo/2019/08/03/04/43/inkscape-4381041_960_720.png";

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // yellow container
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: 100,
              width: screenWidth,
              color: _color,
            ),
          ),
          // appbar
          Positioned(
            top: 0,
            left: 12,
            right: 24,
            child: SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
                  height: 40,
                  width: screenWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.menu, size: 24.0), onPressed: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TopBook()));
                        });
                      },),
                      Text("My book",
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold)),
                      Icon(Icons.shopping_basket, size: 24.0),
                    ],
                  ),
                )),
          ),
          // textinput
          Positioned(
              top: 80,
              left: 24,
              right: 24,
              child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 4)
                      ],
                      borderRadius: BorderRadius.circular(32.0),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search books...",
                            hintStyle: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.bold),
                            suffixIcon: Icon(Icons.search,
                                size: 24.0, color: Colors.black))),
                  ))),

          Positioned(
            top: 155,
            left: 24,
            right: 24,
            child: Column(
              children: <Widget>[
                // Best author : container
                Container(
                  height: 150,
                  width: screenWidth,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
//                  border: Border.all(),
                      image: DecorationImage(
                          image: NetworkImage(_image), fit: BoxFit.cover)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 8),
                        Text("Best",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold)),
                        Text("author",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
//                SizedBox(height: 24.0),
                // Listview
                Container(
                  height: 400,
                  width: screenWidth,
//                  color: Colors.red,
                  child: ListView.builder(
                      itemCount: booklist.length,
                      itemBuilder: (context, index) {
                        return Container(
                            height: 120,
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
                                                      BorderRadius.circular(
                                                          8.0),
                                                  image: DecorationImage(
                                                      image: NetworkImage(
                                                          booklist[index]
                                                              .image),
                                                      fit: BoxFit.cover)))),
                                      Expanded(
                                          flex: 7,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 16.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(booklist[index].title,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                                        size: 18.0,
                                                        color: _color),
                                                    Icon(Icons.star,
                                                        size: 18.0,
                                                        color: _color),
                                                    Icon(Icons.star,
                                                        size: 18.0,
                                                        color: _color),
                                                    Icon(Icons.star,
                                                        size: 18.0,
                                                        color: _color),
                                                    Icon(Icons.star,
                                                        size: 18.0,
                                                        color:
                                                            Colors.grey[200]),
                                                  ],
                                                )
                                              ],
                                            ),
                                          )),
                                      Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 4.0),
                                            child: Column(
                                              children: <Widget>[
                                                Container(
                                                    height: 32,
                                                    width: 32,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                        color: Colors.black),
                                                    child: Icon(
                                                        Icons.arrow_right,
                                                        size: 28.0,
                                                        color: _color)),
                                                SizedBox(height: 16),
                                                // ??
                                                CircularPercentIndicator(
                                                  radius: 32.0,
                                                  lineWidth: 2.0,
//                                                  percent: 0.75,
                                                  percent: booklist[index].percent.toDouble()/100,
                                                  center: Text("${booklist[index].percent.toString()}%", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.bold)),
                                                  progressColor: _color,
                                                ),
                                              ],
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
//                                Expanded(flex: 2, child: Divider(color: Colors.grey)),
                                Expanded(flex: 2, child: MySeparator(height: 5, color: Colors.grey[300])),
                              ],
                            ));
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}