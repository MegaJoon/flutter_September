import 'package:flutter/material.dart';

class Bottom_Navigator extends StatefulWidget {
  @override
  _Bottom_NavigatorState createState() => _Bottom_NavigatorState();
}

class _Bottom_NavigatorState extends State<Bottom_Navigator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.add), elevation: 2.0),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[],
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.blueGrey,
      ),
    );
  }
}
