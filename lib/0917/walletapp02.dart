import 'package:flutter/material.dart';
import 'package:flutter_dribbble/0917/page_one.dart';
import 'package:flutter_dribbble/0917/page_two.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// https://dribbble.com/shots/7153582-Wallet-App-02/attachments/157787?mode=media

class WalletApp02 extends StatefulWidget {
  @override
  _WalletApp02State createState() => _WalletApp02State();
}

class _WalletApp02State extends State<WalletApp02> {
  int _currentIndex = 0;
  Color _color = Color.fromRGBO(87, 61, 224, 1);
  final List<Widget> children = [
    Placeholder(color: Colors.red),
    Placeholder(color: Colors.yellow),
    // page 1.
    Page_One(),
    // page 2.
    Page_Two(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      body: Container(),
      body: children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: _color,
          unselectedItemColor: Colors.grey[300],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.home,
                  size: 20.0,
                ),
                title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.bars,
                  size: 20.0,
                ),
                title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.exchangeAlt,
                  size: 20.0,
                ),
                title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.user,
                  size: 20.0,
                ),
                title: Text("")),
          ]),
    );
  }
}
