import 'package:flutter/material.dart';
import 'package:flutter_dribbble/0924/schoolmatching_intro.dart';

// https://dribbble.com/shots/6517195-School-Matching-App

class SchoolMatching extends StatefulWidget {
  @override
  _SchoolMatchingState createState() => _SchoolMatchingState();
}

class _SchoolMatchingState extends State<SchoolMatching> {
  int currentIndex = 0;
  Color _color = Color.fromRGBO(89, 119, 244, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // close btn
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                alignment: Alignment.centerLeft,
                height: 32,
                width: MediaQuery.of(context).size.width,
                child: IconButton(
                    icon: Icon(Icons.close, size: 24.0, color: Colors.grey),
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    }),
              ),
            ),

            // Search
            Container(
              margin: EdgeInsets.only(top: 8.0, right: 40.0),
              child: Text(
                "Search discipline or major option",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),

            Container(
              height: 32,
              margin: EdgeInsets.only(top: 16.0, bottom: 24.0),
              child: TextField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 20.0, style: BorderStyle.none)),
                      hintText: "Try \"Computer Science\"",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0),
                      suffixIcon:
                          Icon(Icons.search, size: 20.0, color: Colors.grey))),
            ),

            Text("Not sure about the options available?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold)),
            Text("Choose form the predefined options below",
                style: TextStyle(color: Colors.grey, fontSize: 20.0)),

//            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 380,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: major.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _onSelected(index);
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 0.5,
                                spreadRadius: 0.5,
                                color: Colors.black.withOpacity(0.1))
                          ],
                          color: currentIndex == index ? _color : Colors.white,
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Stack(
                        children: <Widget>[
                          Center(
                              child: Image(
                                  image: NetworkImage(major[index].image),
                                  fit: BoxFit.contain,
                                  height: 64,
                                  width: 64)),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(major[index].title,
                                    style: TextStyle(
                                        color: currentIndex == index
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold))),
                          ),
                          Positioned(
                            top: 15,
                            right: 15,
                            child: SizedBox(
                              height: 24,
                              width: 24,
                              child: FloatingActionButton(
                                  backgroundColor: Colors.white,
                                  onPressed: () {},
                                  child: Icon(
                                      currentIndex == index ? Icons.done : null,
                                      size: 16.0,
                                      color: Colors.grey)),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            Container(
              height: 48,
              color: Colors.transparent,
              child: Container(
                margin: EdgeInsets.only(top: 4.0, bottom: 4.0), //
                child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.white, blurRadius: 20, spreadRadius: 20)
                  ], color: _color, borderRadius: BorderRadius.circular(32.0)),
                  child: Center(
                      child: Text("Save Selection",
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onSelected(index) {
    currentIndex = index;
  }
}

class Major {
  String image;
  String title;

  Major({this.image, this.title});
}

List<Major> major = [
  Major(
      image:
          "https://cdn.pixabay.com/photo/2019/08/06/08/47/smoke-4387776_960_720.png",
      title: "ARCHITECTURE".toUpperCase()),
  Major(
      image:
          "https://cdn.pixabay.com/photo/2019/08/23/20/57/woman-4426515_960_720.png",
      title: "BUSINESS".toUpperCase()),
  Major(
      image:
          "https://cdn.pixabay.com/photo/2019/07/16/01/40/summer-4340820_960_720.png",
      title: "COMPUTER SCIENCE".toUpperCase()),
  Major(
      image:
          "https://cdn.pixabay.com/photo/2018/09/24/15/44/cloud-3700227_960_720.png",
      title: "EDUCATION".toUpperCase()),
  Major(
      image:
          "https://cdn.pixabay.com/photo/2019/08/22/14/50/man-4423726_960_720.png",
      title: "MACHATRONIC".toUpperCase()),
  Major(
      image:
          "https://cdn.pixabay.com/photo/2019/09/12/04/28/sow-4470465_960_720.png",
      title: "ART".toUpperCase()),
];
