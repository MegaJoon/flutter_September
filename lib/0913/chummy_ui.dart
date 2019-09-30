import 'package:flutter/material.dart';

// https://dribbble.com/shots/7016092-Chummy-UI-KIt-Stories

class ChummyUI extends StatefulWidget {
  @override
  State createState() => _ChummyUIState();
}

class _ChummyUIState extends State<ChummyUI> {
  @override
  Widget build(BuildContext context) {
    final String _image =
        "https://cdn.pixabay.com/photo/2019/09/10/13/16/sunset-4466082_960_720.jpg";
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final String _image1 = "https://cdn.pixabay.com/photo/2016/06/10/16/45/peacock-1448427_960_720.jpg";
    final String _image2 = "https://cdn.pixabay.com/photo/2018/10/14/10/18/horse-3746116_960_720.jpg";
    final String _image3 = "https://cdn.pixabay.com/photo/2019/01/10/12/20/animal-3925260_960_720.jpg";

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: screenHeight,
                width: screenWidth,
                child: Image(image: NetworkImage(_image), fit: BoxFit.cover),
              )),

          // appbar
          Positioned(
            top: 0,
            left: 0,
            child: SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
                  height: 52,
                  width: screenWidth,
//                  color: Colors.red,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SizedBox(width: 16),
                      Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                  image: NetworkImage(_image1), fit: BoxFit.cover))),
                      SizedBox(width: 16),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Eve Johnson",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 4),
                          Text("Story 1/2",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16)),
                        ],
                      ),
                      SizedBox(width: 120),
                      Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
                                  image: NetworkImage(_image2), fit: BoxFit.cover))),
                      SizedBox(width: 16),
                      Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
                                  image: NetworkImage(_image3), fit: BoxFit.cover))),
                    ],
                  ),
                )),
          ),

          // message
          Positioned(
              bottom: 24,
              left: 0,
              child: Container(
                height: 64,
                width: screenWidth,
//                color: Colors.red,
                child: Row(
                  children: <Widget>[
                    // icon
                    Expanded(
                        flex: 2,
                        child: Icon(Icons.thumb_up,
                            size: 24, color: Colors.white)),
                    Expanded(
                        flex: 10,
                        child: Container(
                            margin: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: Colors.white),
                            child: Row(
                              children: <Widget>[
                                SizedBox(width: 16),
                                Text(
                                  "Type something...",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                                Spacer(),
                                Icon(Icons.camera_alt,
                                    size: 24, color: Colors.grey),
                                Container(
                                    margin: EdgeInsets.all(8.0),
                                    height: 48,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.orangeAccent
                                            .withOpacity(0.5),
                                        borderRadius:
                                            BorderRadius.circular(8.0)),
                                    child: Icon(Icons.check,
                                        size: 24, color: Colors.white))
                              ],
                            ))),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
