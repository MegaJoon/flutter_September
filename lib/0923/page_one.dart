import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    String _nikeImage =
        "https://cdn.pixabay.com/photo/2017/08/11/11/29/brand-2630401_960_720.png";

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              height: 80,
              width: screenWidth,
              child: Row(
                children: <Widget>[
                  Image(
                      image: NetworkImage(_nikeImage),
                      height: 64,
                      width: 64,
                      fit: BoxFit.fitHeight),
                  Spacer(),
                  Icon(Icons.menu, size: 24.0)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              height: 48,
              width: screenWidth,
//            color: Colors.yellowAccent,
              child: TabBar(
                controller: _tabController,
                isScrollable: true,
                unselectedLabelColor: Colors.grey,
                unselectedLabelStyle:
                    TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                labelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.black,
                labelStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                labelPadding: EdgeInsets.symmetric(horizontal: 12.0),
                tabs: <Widget>[
                  Tab(child: Text("NEW RELEASES".toUpperCase())),
                  Tab(child: Text("MEN".toUpperCase())),
                  Tab(child: Text("WOMEN".toUpperCase())),
                  Tab(child: Text("KIDS".toUpperCase())),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 24.0, top: 12.0),
              height: 600,
              width: screenWidth,
              child: TabBarView(controller: _tabController, children: [

                Placeholder(color: Colors.red),
                Placeholder(color: Colors.greenAccent),
                Placeholder(color: Colors.orange),
                Placeholder(color: Colors.blue),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
