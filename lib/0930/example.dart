import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// https://pub.dev/packages/carousel_slider#-readme-tab-

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
//  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 48),

          CarouselSlider(
            height: 400,
//            aspectRatio: 16/9,
//            viewportFraction: 0.8,
            initialPage: 1,
            reverse: false,
            enableInfiniteScroll: false,
            enlargeCenterPage: true,
//            onPageChanged: callbackFuncion,
            scrollDirection: Axis.horizontal,


            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(color: Colors.amber),
                    child: Text("text $i", style: TextStyle(fontSize: 16.0)),
                  );
                },
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
