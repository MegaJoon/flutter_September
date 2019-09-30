import 'package:flutter/material.dart';
import 'package:vertical_tabs/vertical_tabs.dart';

class TabbarTest extends StatefulWidget {
  @override
  _TabbarTestState createState() => _TabbarTestState();
}

class _TabbarTestState extends State<TabbarTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: VerticalTabs(
              tabsWidth: 150,
              tabs: <Tab>[
                Tab(child: Text('Flutter'), icon: Icon(Icons.phone)),
                Tab(child: Text('Dart')),
                Tab(child: Text('NodeJS')),
                Tab(child: Text('PHP')),
                Tab(child: Text('HTML 5')),
              ],
              contents: <Widget>[
                Container(child: Text('Flutter'), padding: EdgeInsets.all(20)),
                Container(child: Text('Dart'), padding: EdgeInsets.all(20)),
                Container(child: Text('NodeJS'), padding: EdgeInsets.all(20)),
                Container(child: Text('PHP'), padding: EdgeInsets.all(20)),
                Container(child: Text('HTML 5'), padding: EdgeInsets.all(20))
              ],
            ),
          )
        ],
      ),
    );
  }
}
