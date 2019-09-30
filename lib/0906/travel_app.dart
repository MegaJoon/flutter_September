import 'package:flutter/material.dart';

class TravelApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  @override
  Widget build(BuildContext context) {
    final devicewidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 16),

              // Text: Collections
              SafeArea(
                top: true,
                right: true,
                left: true,
                child: Text("Collections",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold)),
              ),

              SizedBox(height: 16),

              // Container: Search place or list
              Container(
                height: 50,
                width: devicewidth,
                padding: EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.search),
                    SizedBox(
                      width: 16,
                    ),
                    Text("Search place or list...",
                        style: TextStyle(color: Colors.grey, fontSize: 16)),
                  ],
                ),
              ),

              SizedBox(height: 24),

              // My Lists, Show all
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: <Widget>[
                    Text(
                      "My Lists",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "Show all",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),

              SizedBox(height: 16),

              // ListView: My Lists
              Container(
                height: 320,
                width: devicewidth,
//                color: Colors.blue,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    // List 1.
                    Container(
                      height: 300,
                      width: devicewidth / 1.7,
                      child: Stack(
                        children: <Widget>[
                          // bookmark
                          Positioned(
                              top: 16,
                              left: 0,
                              child: Container(
                                  height: 40, width: 8, color: Colors.orange)),

                          // ListTile
                          Positioned(
                            child: Container(
                              padding: EdgeInsets.only(left: 4, bottom: 8),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 1,
                                          spreadRadius: 1)
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      // first line
                                      Row(
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "Private list",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16),
                                              ),
                                              Text(
                                                "by Sean Collins",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 14),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Icon(Icons.list, color: Colors.grey)
                                        ],
                                      ),

                                      SizedBox(height: 16),

                                      // Image
                                      Container(
                                        height: 120,
                                        width: 200,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                  blurRadius: 3,
                                                  spreadRadius: 3)
                                            ],
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://cdn.pixabay.com/photo/2019/09/05/07/23/norway-4453338_960_720.jpg"),
                                                fit: BoxFit.cover)),
                                      ),

                                      SizedBox(height: 16),

                                      // Bars in Sapin
                                      Text(
                                        "Bars in Spain",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),

                                      // 17 places
                                      Text(
                                        "17 places",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16),
                                      ),

                                      SizedBox(height: 8),

                                      // person push like
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        "https://cdn.pixabay.com/photo/2015/06/22/08/40/child-817373_960_720.jpg"),
                                                    fit: BoxFit.cover)),
                                          ),
                                          SizedBox(width: 8),
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        "https://cdn.pixabay.com/photo/2017/08/01/08/29/people-2563491_960_720.jpg"),
                                                    fit: BoxFit.cover)),
                                          ),
                                          SizedBox(width: 8),
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        "https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg"),
                                                    fit: BoxFit.cover)),
                                          ),
                                          SizedBox(width: 8),
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                color: Colors.orange),
                                            child: Center(
                                                child: Text(
                                              "+8",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                            )),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 24),

                    // List 2.
                    Container(
                      height: 300,
                      width: devicewidth / 1.7,
                      child: Stack(
                        children: <Widget>[
                          // bookmark
                          Positioned(
                              top: 16,
                              left: 0,
                              child: Container(
                                  height: 40, width: 8, color: Colors.orange)),

                          // ListTile
                          Positioned(
                            child: Container(
                              padding: EdgeInsets.only(left: 4, bottom: 8),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 1,
                                          spreadRadius: 1)
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      // first line
                                      Row(
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "Public list",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16),
                                              ),
                                              Text(
                                                "by Juan Harrisons",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 14),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Icon(Icons.list, color: Colors.grey)
                                        ],
                                      ),

                                      SizedBox(height: 16),

                                      // Image
                                      Container(
                                        height: 120,
                                        width: 200,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                  blurRadius: 3,
                                                  spreadRadius: 3)
                                            ],
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://cdn.pixabay.com/photo/2019/09/03/13/13/landscape-4449408_960_720.jpg"),
                                                fit: BoxFit.cover)),
                                      ),

                                      SizedBox(height: 16),

                                      // London for me
                                      Text(
                                        "London for me",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),

                                      // 25 places
                                      Text(
                                        "25 places",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16),
                                      ),

                                      SizedBox(height: 8),

                                      // person push like
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        "https://cdn.pixabay.com/photo/2015/06/22/08/40/child-817373_960_720.jpg"),
                                                    fit: BoxFit.cover)),
                                          ),
                                          SizedBox(width: 8),
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        "https://cdn.pixabay.com/photo/2017/08/01/08/29/people-2563491_960_720.jpg"),
                                                    fit: BoxFit.cover)),
                                          ),
                                          SizedBox(width: 8),
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        "https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg"),
                                                    fit: BoxFit.cover)),
                                          ),
                                          SizedBox(width: 8),
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                color: Colors.orange),
                                            child: Center(
                                                child: Text(
                                              "+8",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                            )),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              // Text: You will be interested
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text("You will be interested",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              ),

              Container(
                height: 250,
                width: devicewidth,
                child: ListView(
                  padding: EdgeInsets.only(top: 16, left: 8),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    // ListTile 1.
                    Container(
                        height: 250,
                        width: devicewidth / 2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 3,
                                  spreadRadius: 3)
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 24, left: 24),
                              child: Container(
                                height: 48,
                                width: 48,
                                color: Colors.red,
                              ),
                            )
                          ],
                        )),

                    SizedBox(
                      width: 16,
                    ),

                    // ListTile 2.
                    Container(
                        height: 250,
                        width: devicewidth / 2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 3,
                                  spreadRadius: 3)
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 24, left: 24),
                              child: Container(
                                height: 48,
                                width: 48,
                                color: Colors.deepPurple,
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      // BottomNavigator
      bottomNavigationBar: BottomAppBar(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.location_on, size: 32),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.art_track, size: 32),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.directions, size: 32),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.notifications, size: 32),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.account_circle, size: 32),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
