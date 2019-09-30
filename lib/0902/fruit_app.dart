import 'package:flutter/material.dart';

class FruitApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FruitAppState();
}

class _FruitAppState extends State<FruitApp> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final deviceheight = MediaQuery.of(context).size.height;
    final devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 16,
          ),
          SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 30,
                width: devicewidth,
                child: Row(
                  children: <Widget>[
                    Expanded(flex: 1, child: Icon(Icons.flare)),
                    Expanded(
                      flex: 8,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        padding: EdgeInsets.only(left: 8, right: 8),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(16)),
                        child: Row(
                          children: <Widget>[
                            Expanded(flex: 2, child: Icon(Icons.add_location)),
                            Expanded(
                                flex: 8,
                                child: Text(
                                    "Delivery to the:Southeast Seattle...", style: TextStyle(fontSize: 12),)),
                            Expanded(flex: 1, child: Icon(Icons.play_arrow)),
                          ],
                        ),
                      ),
                    ),
                    Expanded(flex: 2, child: Icon(Icons.search)),
                  ],
                ),
              )),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            height: 180,
            width: devicewidth,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                    top: 28,
                    left: 16,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Import lemon",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Fresh perfume seedless",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                              height: 24,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.lightGreen,
                                  borderRadius: BorderRadius.circular(16)),
                              child: Center(
                                child: Text(
                                  "Buy Now",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ))
                        ])),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 80,
            width: devicewidth,
            child: Row(
              children: <Widget>[
                Expanded(child: Placeholder()),
                Expanded(child: Placeholder()),
                Expanded(child: Placeholder()),
                Expanded(child: Placeholder()),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: Container(
              height: 32,
              child: TabBar(
                  isScrollable: true,
                  controller: _tabController,
                  labelColor: Colors.red,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.white12,
                  labelStyle: TextStyle(fontSize: 24),
                  tabs: [
                    Tab(text: "Fruit tea"),
                    Tab(text: "Salad"),
                    Tab(text: "Carving"),
                    Tab(text: "Basket"),
                    Tab(text: "The zz"),
                  ]),
            ),
          ),
          Container(
            height: 120,
            child: TabBarView(controller: _tabController, children: [
              Container(
                  child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(8),
                      width: 100,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.lightGreen,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 1,
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 3)
                            ]),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                              margin: EdgeInsets.only(bottom: 8, right: 8),
                              height: 28,
                              width: 38,
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Center(
                                      child: Text("\$38",
                                          style: TextStyle(
                                              color: Colors.white))))),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.all(8),
                      width: 100,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.lightGreen,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 1,
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 3)
                            ]),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                              margin: EdgeInsets.only(bottom: 8, right: 8),
                              height: 28,
                              width: 38,
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Center(
                                      child: Text("\$38",
                                          style: TextStyle(
                                              color: Colors.white))))),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.all(8),
                      width: 100,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.lightGreen,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 1,
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 3)
                            ]),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                              margin: EdgeInsets.only(bottom: 8, right: 8),
                              height: 28,
                              width: 38,
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Center(
                                      child: Text("\$38",
                                          style: TextStyle(
                                              color: Colors.white))))),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.all(8),
                      width: 100,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.lightGreen,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 1,
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 3)
                            ]),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                              margin: EdgeInsets.only(bottom: 8, right: 8),
                              height: 28,
                              width: 38,
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Center(
                                      child: Text("\$38",
                                          style: TextStyle(
                                              color: Colors.white))))),
                        ),
                      )),
                ],
              )),
              Container(),
              Container(),
              Container(),
              Container(),
            ]),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child:
                Align(child: Text("Selling"), alignment: Alignment.centerLeft),
          ),
//          Text("Selling"),
          SizedBox(height: 8),
          Container(
            margin: EdgeInsets.all(8),
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 3,
                      blurRadius: 1)
                ]),
            child: Row(
              children: <Widget>[
                Expanded(flex: 4, child: Placeholder()),
                Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Big single avocado fresh im-"),
                      Text("ported fruits from the Mexi"),
                      Row(
                        children: <Widget>[
                          Container(
                            color: Colors.yellowAccent,
                            child: Text("80%"),
                          ),
                          Container(
                            color: Colors.greenAccent,
                            child: Text("import"),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("\$18.78"),
                          CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.blue,
                            child: Center(
                                child: Icon(Icons.shopping_cart,
                                    color: Colors.white, size: 16)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
