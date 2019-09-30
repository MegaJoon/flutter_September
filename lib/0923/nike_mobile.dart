import 'package:flutter/material.dart';
import 'package:flutter_dribbble/0923/page_one.dart';

// https://dribbble.com/shots/7185740-Nike-Mobile-App-E-commerce

class NikeMobile extends StatefulWidget {
  @override
  _NikeMobileState createState() => _NikeMobileState();
}

class _NikeMobileState extends State<NikeMobile> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Color _color = Color.fromRGBO(246, 126, 126, 1);
    final List<Widget> children = [
      PageOne(),
      Placeholder(color: Colors.grey),
      Placeholder(color: Colors.greenAccent),
      Placeholder(color: Colors.blue),
    ];

    return Scaffold(
      body: children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: _color,
          unselectedItemColor: Colors.black,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 28.0), title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, size: 28.0), title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border, size: 28.0), title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervisor_account, size: 28.0),
                title: Text("")),
          ]),
    );
  }
}
