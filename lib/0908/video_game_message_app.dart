import 'package:flutter/material.dart';

class VideoGameMessageApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _VideoGameMessageAppState();
}

class _VideoGameMessageAppState extends State<VideoGameMessageApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraint) {
        final height = constraint.maxHeight;
        final width = constraint.maxWidth;

        return Stack(
          children: <Widget>[
            Container(
              color: Colors.greenAccent,
            ),
            Positioned(
           left: height/2 - width/2,
              bottom: 0,
              child: Container(
                height: height,
                width: width,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
              ),
            ),
            Text("dd")
          ],
        );
      }),
    );
  }
}
