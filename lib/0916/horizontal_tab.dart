import 'package:flutter/material.dart';

class HorizontalTabLayout extends StatefulWidget {
  @override
  _HorizontalTabLayoutState createState() => _HorizontalTabLayoutState();
}

class _HorizontalTabLayoutState extends State<HorizontalTabLayout> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500.0,
          child: Stack(
            children: <Widget>[
              Positioned(
                left: -20,
                bottom: 0,
                top: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 48.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      TabText(
                          text: "Media",
                          isSelected: selectedTabIndex == 0,
                          onTabTap: () {
                            onTabTap(0);
                          }),
                      TabText(
                          text: "Streamers",
                          isSelected: selectedTabIndex == 1,
                          onTabTap: () {
                            onTabTap(1);
                          }),
                      TabText(
                          text: "Form",
                          isSelected: selectedTabIndex == 2,
                          onTabTap: () {
                            onTabTap(2);
                          }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTabTap(int index) {
    setState(() {
      selectedTabIndex = index;
      print("on tapped, $index" );
    });
  }
}

class TabText extends StatelessWidget {
  final bool isSelected;
  final String text;
  final Function onTabTap;

  TabText({this.text, this.isSelected, this.onTabTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTabTap,
      child: Transform.rotate(
          angle: -1.58,
          child: Center(
              child: Text(
            text,
            style: isSelected
                ? TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)
                : TextStyle(fontSize: 16.0),
          ))),
    );
  }
}
