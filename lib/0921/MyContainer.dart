import 'package:flutter/material.dart';

import 'detailpage.dart';

class MyContainer extends StatelessWidget {
  final double height;
  final String image;
  final String title;
  final String subtitle;

  MyContainer({this.height, this.image, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
        },
        child: Container(
          height: height,
          width: MediaQuery.of(context).size.width / 2 - 36,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0, bottom: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold)),
//            SizedBox(height: 4),
                Text(subtitle,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 4),
                Row(
                  children: <Widget>[
                    Icon(Icons.star, color: Colors.orangeAccent, size: 16.0),
                    Icon(Icons.star, color: Colors.orangeAccent, size: 16.0),
                    Icon(Icons.star, color: Colors.orangeAccent, size: 16.0),
                    Icon(Icons.star, color: Colors.orangeAccent, size: 16.0),
                    Icon(Icons.star, color: Colors.white, size: 16.0),
                    SizedBox(width: 4),
                    Text("4.3",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontStyle: FontStyle.italic)),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
