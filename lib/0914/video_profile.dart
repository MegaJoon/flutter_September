import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// https://dribbble.com/shots/7125661-Video-Profile/attachments/128908?mode=media

class VideoProfile extends StatefulWidget {
  @override
  State createState() => _VideoProfileState();
}

class _VideoProfileState extends State<VideoProfile> {
  @override
  Widget build(BuildContext context) {
    final String _image =
        "https://cdn.pixabay.com/photo/2015/04/20/13/40/person-731476_960_720.jpg";
    final String _profileimage =
        "https://cdn.pixabay.com/photo/2015/03/03/08/55/portrait-photography-657116_960_720.jpg";

    final Color _color1 = Color.fromRGBO(55, 55, 55, 1);
    final Color _color2 = Color.fromRGBO(196, 175, 137, 1);
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

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
          top: 24,
          left: 0,
          child: Column(
            children: <Widget>[
              // Daisuke Ueda
              Container(
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                height: 80,
                width: screenWidth,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                              image: NetworkImage(_profileimage),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(width: 8),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Daisuke Ueda",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "6 minutes ago",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.close, color: Colors.white, size: 24)
                  ],
                ),
              ),
              // An editor
              Container(
                padding: EdgeInsets.only(left: 16.0),
                height: 40,
                width: screenWidth,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        flex: 5,
                        child: Container(
                            decoration: BoxDecoration(
                                color: _color1,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(8.0),
                                    bottomLeft: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0))),
                            child: Center(
                                child: Text(
                              "An editirial I chot in CA",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 14.0),
                            )))),
                    Expanded(flex: 5, child: Container()),
                  ],
                ),
              ),
              SizedBox(height: 8),
              // Love the li
              Container(
                padding: EdgeInsets.only(right: 16.0),
                height: 40,
                width: screenWidth,
                child: Row(
                  children: <Widget>[
                    Expanded(flex: 3, child: Container()),
                    Expanded(
                        flex: 7,
                        child: Container(
                          decoration: BoxDecoration(
                              color: _color2,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  bottomLeft: Radius.circular(8.0),
                                  bottomRight: Radius.circular(8.0))),
                          child: Center(
                              child: Text(
                            "Love the lighting and the posing",
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.0),
                          )),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),

        // say hello
        Positioned(
          bottom: 24,
          left: 0,
          child: Container(
            height: 40,
            width: screenWidth,
            child: Row(
              children: <Widget>[
                // say hello
                Expanded(
                    flex: 8,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24.0),
                      child: TextField(
                          decoration: InputDecoration(
                              hintText: "Say hello",
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              suffixIcon: Icon(FontAwesomeIcons.smileWink,
                                  color: Colors.white, size: 32),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 4.0)))),
                    )),
                // Icon
                Expanded(
                    flex: 2,
                    child: Icon(Icons.favorite_border,
                        color: Colors.white, size: 32)),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
