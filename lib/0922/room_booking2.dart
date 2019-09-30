import 'package:flutter/material.dart';

// part 2

class RoomBooking2 extends StatefulWidget {
  @override
  _RoomBooking2State createState() => _RoomBooking2State();
}

class _RoomBooking2State extends State<RoomBooking2> {
  //
  String _image2 =
      "https://cdn.pixabay.com/photo/2019/06/02/00/21/moon-4245400_960_720.jpg";

  @override
  Widget build(BuildContext context) {
    Color _color = Color.fromRGBO(28, 161, 241, 1);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              children: <Widget>[
                Expanded(
                    flex: 9,
                    child: Container(
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(48.0),
                          image: DecorationImage(
                              image: NetworkImage(_image2), fit: BoxFit.cover)),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: _color,
                          borderRadius: BorderRadius.circular(32.0)),
                      child: Center(
                          child: Text("Booking",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0))),
                    )),
              ],
            ),
          ),
          //
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.all(8.0),
              height: screenHeight * 0.3,
              width: screenWidth,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(32.0)),
                  color: Colors.white.withOpacity(0.3)),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8.0)),
                      child: IconButton(
                          icon: Icon(Icons.arrow_back_ios, size: 16.0),
                          onPressed: () {
                            setState(() {
                              Navigator.pop(context);
                            });
                          }),
                    ),
                    Text("- Furnished, 3 bed, Mirdamad",
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold)),
                    Text("- 60\$",
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold)),
                    Row(
                      children: <Widget>[
                        Text("Check in",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: _color)),
                        SizedBox(width: 4),
                        Icon(Icons.arrow_forward, size: 24.0),
                        SizedBox(width: 4),
                        Text("Check out",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: _color)),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 12),
                        Text("0",
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold)),
                        SizedBox(width: 12),
                        Container(
                          height: 24,
                          width: 28,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  bottomLeft: Radius.circular(4.0)),
                              color: Colors.white),
                          child: Center(
                              child: Text("-",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16.0))),
                        ),
                        Container(
                          height: 24,
                          width: 28,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(4.0),
                                  bottomRight: Radius.circular(4.0)),
                              color: _color),
                          child: Center(
                              child: Text("+",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.0))),
                        ),
                        Spacer(),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                          size: 20.0,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
