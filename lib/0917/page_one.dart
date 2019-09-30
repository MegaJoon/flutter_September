import 'package:flutter/material.dart';

class Page_One extends StatefulWidget {
  @override
  _Page_OneState createState() => _Page_OneState();
}

class _Page_OneState extends State<Page_One> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    Color _color = Color.fromRGBO(87, 61, 224, 1);
    String _image1 =
        "https://cdn.pixabay.com/photo/2015/06/02/17/56/american-flag-795306_960_720.jpg";
    String _image2 =
        "https://cdn.pixabay.com/photo/2019/09/09/13/21/australia-4463593_960_720.png";
    String _image3 =
        "https://cdn.pixabay.com/photo/2016/09/14/20/49/china-1670420_960_720.png";
    String _image4 =
        "https://cdn.pixabay.com/photo/2015/06/13/12/09/diamond-807979_960_720.jpg";

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: <Widget>[
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 52,
                width: screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.arrow_back_ios),
                    Text("Exchange",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0)),
                    Icon(Icons.more_vert)
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              width: screenWidth,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 4)
                  ],
                  color: Color.fromRGBO(87, 61, 224, 1),
                  borderRadius: BorderRadius.circular(8.0)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("\$2,548",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 4),
                        Text("**** 2561",
                            style: TextStyle(
                                color: Colors.grey[300], fontSize: 12.0)),
                      ],
                    ),
                    Spacer(),
                    Text("VISA".toUpperCase(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic))
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            Container(
                height: 200,
                width: screenWidth,
                child: Column(
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                flex: 1,
                                child: Text("Exchange your money",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12.0))),
                            Expanded(
                              flex: 1,
                              child: Row(
                                children: <Widget>[
                                  Text("500",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24.0)),
                                  Spacer(),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Image(
                                          image: NetworkImage(_image1),
                                          height: 20,
                                          width: 20,
                                        ),
                                        SizedBox(width: 4),
                                        Text("US",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Icon(
                                          Icons.keyboard_arrow_down,
                                          size: 14.0,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Divider(),
                          ],
                        )),
                    Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                flex: 1,
                                child: Text("You'll recieve",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12.0))),
                            Expanded(
                              flex: 1,
                              child: Row(
                                children: <Widget>[
                                  Text("737",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24.0)),
                                  Spacer(),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Image(
                                          image: NetworkImage(_image2),
                                          height: 20,
                                          width: 20,
                                        ),
                                        SizedBox(width: 4),
                                        Text("AUS",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Icon(
                                          Icons.keyboard_arrow_down,
                                          size: 14.0,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Divider(),
                          ],
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Color.fromRGBO(251, 236, 200, 1)),
                          child: Center(
                              child: Text(
                            "Exchange Money",
                            style: TextStyle(
                                color: Color.fromRGBO(95, 76, 29, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
                          )),
                        )),
                  ],
                )),
            SizedBox(height: 24),
            Container(
              height: 200,
              width: screenWidth,
              child: Column(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Row(
                        children: <Widget>[
                          Text("Recent Exchanges",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0)),
                          Spacer(),
                          Text("View all",
                              style: TextStyle(
                                  color: _color,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Row(
                        children: <Widget>[
                          Image(
                            image: NetworkImage(_image3),
                            height: 40,
                            width: 40,
                          ),
                          SizedBox(width: 8),
                          Text("EUR",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold)),
                          SizedBox(width: 4),
                          Text("->", style: TextStyle(color: Colors.grey)),
                          SizedBox(width: 4),
                          Text("USD",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold)),
                          Spacer(),
                          Text("300 USD",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold)),
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Row(
                        children: <Widget>[
                          Image(
                            image: NetworkImage(_image4),
                            height: 40,
                            width: 40,
                          ),
                          SizedBox(width: 8),
                          Text("USD",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold)),
                          SizedBox(width: 4),
                          Text("->", style: TextStyle(color: Colors.grey)),
                          SizedBox(width: 4),
                          Text("CNY",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold)),
                          Spacer(),
                          Text("2514 CNY",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold)),
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Row(
                        children: <Widget>[
                          Image(
                            image: NetworkImage(_image2),
                            height: 40,
                            width: 40,
                          ),
                          SizedBox(width: 8),
                          Text("USD",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold)),
                          SizedBox(width: 4),
                          Text("->", style: TextStyle(color: Colors.grey)),
                          SizedBox(width: 4),
                          Text("AUD",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold)),
                          Spacer(),
                          Text("5000 AUD",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold)),
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
