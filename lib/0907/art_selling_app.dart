import 'package:flutter/material.dart';

class ArtSellingApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ArtSellingAppState();
}

class _ArtSellingAppState extends State<ArtSellingApp>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final deviceheight = MediaQuery.of(context).size.height;
    final devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body:
          // Background Image
          Container(
        height: deviceheight,
        width: devicewidth,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2019/09/05/09/45/tropical-4453631_960_720.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // TabBar
            SafeArea(
                child: Container(
                    padding: EdgeInsets.only(left: 32, right: 32),
                    height: 72,
                    width: devicewidth,

                    // TabBar
                    child: Row(
                      children: <Widget>[
                        // back arrow
                        Container(
                          height: 48,
                          width: 32,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(8)),
                          child: Icon(Icons.arrow_back_ios,
                              color: Colors.white, size: 24),
                        ),
                        Spacer(),

                        // front arrow
                        Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Icon(Icons.add, color: Colors.black, size: 24),
                        ),
                      ],
                    ))),
            SizedBox(height: 48),

            // Title: Total earnings
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Text(
                "Total earnings",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.5), fontSize: 24),
              ),
            ),

            // SubTitle: 2.310엔
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "2.310",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 56,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: "엔",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                ]),
              ),
            ),
            SizedBox(height: 32),

            // New Container: grey color
            Container(
                height: 413,
                width: devicewidth,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32)),
                    color: Colors.grey[300]),
                // Container
                child: Container(
                  alignment: Alignment.center,
                  width: devicewidth,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(32),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            // profile image
                            Container(
                              height: 48,
                              width: 48,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(width: 24),
                            // profile Text
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  // user name
                                  Text(
                                    "Francesca",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  // follower
                                  Text(
                                    "8,302 follower",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 16,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Spacer(),
                            // Settings
                            Text(
                              "Settings",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),

                      // New - New Container: white color
                      Container(
                          padding:
                              EdgeInsets.only(top: 16, left: 24, right: 24),
                          height: 300,
                          width: devicewidth,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(32),
                                  topRight: Radius.circular(32))),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 40,
                                width: devicewidth,
                                child: TabBar(
                                    unselectedLabelColor: Colors.grey,
                                    indicatorColor: Colors.green,
                                    indicatorSize: TabBarIndicatorSize.tab,
                                    isScrollable: true,
                                    labelColor: Colors.black,
                                    labelStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                    controller: _tabController,
                                    tabs: <Widget>[
                                      Text("My Artworks"),
                                      Text("Projects"),
                                      Text(""),
                                    ]),
                              ),
                              // 1
                              Container(
                                height: 230,
                                width: devicewidth,
                                child: TabBarView(
                                    controller: _tabController,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8, right: 8, top: 24),
                                          child: Row(
                                            children: <Widget>[
                                              Expanded(
                                                child: Column(
                                                  children: <Widget>[
                                                    Expanded(
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        16),
                                                            image: DecorationImage(
                                                                image: NetworkImage(
                                                                    "https://cdn.pixabay.com/photo/2017/08/06/18/52/pony-2595144_960_720.jpg"),
                                                                fit: BoxFit
                                                                    .cover)),
                                                      ),
                                                    ),
                                                    SizedBox(height: 16),
                                                    Expanded(
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        16),
                                                            image: DecorationImage(
                                                                image: NetworkImage(
                                                                    "https://cdn.pixabay.com/photo/2019/09/05/15/25/flight-4454338_960_720.jpg"),
                                                                fit: BoxFit
                                                                    .cover)),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: 16),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16),
                                                      image: DecorationImage(
                                                          image: NetworkImage(
                                                              "https://cdn.pixabay.com/photo/2019/09/04/13/06/sail-4451570_960_720.jpg"),
                                                          fit: BoxFit.cover)),
                                                ),
                                              ),
                                            ],
                                          )),
                                      // 2
                                      Container(),
                                      // 3
                                      Container(),
                                    ]),
                              )
                            ],
                          ))
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
