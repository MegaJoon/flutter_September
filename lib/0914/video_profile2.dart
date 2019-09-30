import 'package:flutter/material.dart';

// https://dribbble.com/shots/7125661-Video-Profile/attachments/128908?mode=media

class VideoProfile2 extends StatefulWidget {
  @override
  _VideoProfile2State createState() => _VideoProfile2State();
}

class _VideoProfile2State extends State<VideoProfile2> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final String _profileimage =
        "https://cdn.pixabay.com/photo/2015/03/03/08/55/portrait-photography-657116_960_720.jpg";

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // SafeArea
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 32,
                width: screenWidth,
//              color: Colors.red,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.arrow_back_ios, size: 24),
                    Spacer(),
                    Icon(Icons.more_horiz, size: 24)
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            //
            Container(
              height: 80,
              width: screenWidth,
//              color: Colors.yellow,
              child: Row(
                children: <Widget>[
                  Container(
                      height: 80,
                      width: 80,
                      child: Image(
                          image: NetworkImage(_profileimage),
                          fit: BoxFit.cover)),
                  SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Daisuke Ueda",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24)),
//                      SizedBox(height: 4),
                      Text("6 minutes ago",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.grey)),
                      SizedBox(height: 8),
                      Text("\"Escapism/Geometric Pleasures\"",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14)),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 16),
            // View Likes
            Container(
              height: 24,
              width: screenWidth,
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex: 2,
                      child: Container(
                        height: 24,
                        child: Center(
                            child: Text("986 Views",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold))),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8.0)),
                      )),
                  SizedBox(width: 16),
                  Expanded(
                      flex: 2,
                      child: Container(
                        height: 24,
                        child: Center(
                            child: Text("821 Views",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold))),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8.0)),
                      )),
                  Expanded(flex: 4, child: Container()),
                  Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(Icons.add),
                          Icon(Icons.message),
                        ],
                      )),
                ],
              ),
            ),
            SizedBox(height: 32),
            //
            Text("Photos 22",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
//            SizedBox(height: 8),
            Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                height: screenHeight - 252,
                width: screenWidth,
//              child: Placeholder(),
                child: GridView.builder(
                    itemCount: user.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 16.0,
                        crossAxisSpacing: 16.0),
                    itemBuilder: (context, index) {
                      return Container(
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                  height: 180,
                                  child: Image(
                                      image: NetworkImage(user[index].image),
                                      fit: BoxFit.cover)),
                            ),
                            Positioned(
                              top: 16,
                              left: 16,
                              child: Column(
                                children: <Widget>[
                                  Text(user[index].month,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold)),
                                  Text(user[index].date,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}

class User {
  String month;
  String date;
  String image;

  User({this.month, this.date, this.image});
}

List<User> user = [
  User(
      month: "JAN",
      date: "22",
      image:
          "https://cdn.pixabay.com/photo/2019/09/11/14/08/rainbow-4468783_960_720.jpg"),
  User(
      month: "JAN",
      date: "18",
      image:
          "https://cdn.pixabay.com/photo/2019/09/11/11/39/berlin-4468570_960_720.jpg"),
  User(
      month: "JAN",
      date: "09",
      image:
          "https://cdn.pixabay.com/photo/2019/08/28/21/38/borgo-4437756_960_720.jpg"),
  User(
      month: "NOV",
      date: "26",
      image:
          "https://cdn.pixabay.com/photo/2019/09/11/13/23/iceland-4468709_960_720.jpg"),
  User(
      month: "NOV",
      date: "15",
      image:
          "https://cdn.pixabay.com/photo/2019/09/10/16/15/sea-4466575_960_720.jpg"),
  User(
      month: "NOV",
      date: "02",
      image:
          "https://cdn.pixabay.com/photo/2019/09/11/13/47/grass-4468766_960_720.jpg"),
  User(
      month: "JAN",
      date: "22",
      image:
          "https://cdn.pixabay.com/photo/2019/09/11/14/08/rainbow-4468783_960_720.jpg"),
  User(
      month: "JAN",
      date: "18",
      image:
          "https://cdn.pixabay.com/photo/2019/09/11/14/08/rainbow-4468783_960_720.jpg"),
];
