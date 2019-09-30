import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';

class Page_Two extends StatefulWidget {
  @override
  _Page_TwoState createState() => _Page_TwoState();
}

class _Page_TwoState extends State<Page_Two> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    Color _color = Color.fromRGBO(87, 61, 224, 1);
    Color _color2 = Color.fromRGBO(228, 237, 255, 1);
    bool _value = true;

    return Scaffold(
        body: CupertinoPageScaffold(
      child: Column(children: <Widget>[
        SafeArea(
          top: true,
          left: true,
          right: true,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            height: 52,
            width: screenWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.arrow_back_ios),
                Text("My Profile",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                Icon(Icons.more_vert)
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          height: 100,
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
                              "https://cdn.pixabay.com/photo/2019/08/12/17/54/panda-4401808_960_720.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Pat Flores",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0)),
                      SizedBox(height: 8),
                      Text("patflores@gmail.com",
                          style: TextStyle(color: Colors.grey, fontSize: 12.0)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Container(
            height: 64,
            width: screenWidth,
            decoration:
                BoxDecoration(border: Border.all(color: Colors.grey[200])),
            child: Row(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[200])),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Income",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold)),
                          Text("\$1,244",
                              style: TextStyle(
                                  fontSize: 24.0, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[200])),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Expense",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold)),
                          Text("\$748",
                              style: TextStyle(
                                  fontSize: 24.0, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
        SizedBox(height: 16),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Security",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
              SizedBox(height: 16),
              Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(right: 12.0),
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                          color: _color2,
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Icon(FontAwesomeIcons.dollarSign,
                          color: _color, size: 16.0)),
                  Text("Change Access Code", style: TextStyle(fontSize: 16.0)),
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(right: 12.0),
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                          color: _color2,
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Icon(Icons.notifications_none,
                          color: _color, size: 16.0)),
                  Text("Notification", style: TextStyle(fontSize: 16.0)),
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(right: 12.0),
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                          color: _color2,
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Icon(FontAwesomeIcons.shieldAlt,
                          color: _color, size: 16.0)),
                  Text("Privacy", style: TextStyle(fontSize: 16.0)),
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(right: 12.0),
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                          color: _color2,
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Icon(FontAwesomeIcons.fingerprint,
                          color: _color, size: 16.0)),
                  Text("Login with FaceID", style: TextStyle(fontSize: 16.0)),
                  Spacer(),
                  CupertinoSwitch(
                    value: _value,
                    onChanged: null,
                    activeColor: _color,
                  )
                ],
              ),
              SizedBox(height: 16),
              Text("About",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
              SizedBox(height: 16),
              Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(right: 12.0),
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                          color: _color2,
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Icon(FontAwesomeIcons.shieldAlt,
                          color: _color, size: 16.0)),
                  Text("Terms & Conditions", style: TextStyle(fontSize: 16.0)),
                ],
              ),
              Divider(),
            ],
          ),
        ),
      ]),
    ));
  }
}
