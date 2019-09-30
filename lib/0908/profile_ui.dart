import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfileUIState();
}

class _ProfileUIState extends State<ProfileUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // appbar
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0, // cnt
            actions: <Widget>[
              //
              IconButton(
                icon: Icon(Icons.notifications_none),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
            ],
          ),

          // background color
          Container(
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32)),
                gradient: LinearGradient(
                    colors: [Colors.orange, Colors.red],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
          ),

          // main view
          Container(
            margin: const EdgeInsets.only(top: 90),
            child: Column(
              children: <Widget>[
                Text("Date mate"),
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: double.infinity,  // !
                        margin: EdgeInsets.only(top: 10, left: 30, right: 30),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2019/09/03/06/15/girl-4448689_960_720.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                      alignment: Alignment.topCenter,
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text("3.7mi away"),
                        ),
                      )
                    ],
                  ),
                ),
                Text("Sasha - 22"),
                Row(
                  children: <Widget>[
                    Icon(Icons.location_on),
                    Text("SanDiego, California, USA")
                  ],
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(FontAwesomeIcons.instagram),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.facebook),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.twitter),
                      onPressed: () {},
                    ),
                  ],
                ),
                Container(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(color: Colors.pink),
                        child: Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(FontAwesomeIcons.user),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.location_on),
                              onPressed: () {},
                            ),
                            Spacer(),
                            IconButton(
                              icon: Icon(Icons.add),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.message),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: FloatingActionButton(
                          child: Icon(Icons.favorite, color: Colors.pink),
                          backgroundColor: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
