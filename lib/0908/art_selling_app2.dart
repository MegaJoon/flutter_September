import 'package:flutter/material.dart';

// https://dribbble.com/shots/7054214-Art-Selling-App/attachments/54933?mode=media

// Art Selling App2

class ArtSellingApp2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ArtSellingApp2State();
}

class _ArtSellingApp2State extends State<ArtSellingApp2> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
//                padding: EdgeInsets.only(left: 24.0, right: 24.0),
                  height: 48,
                  width: screenWidth,
                  child: Row(
                    children: <Widget>[
                      // square icon
//                      Icon(Icons.crop_square, size: 32),
                      Icon(Icons.crop_square, size: 32),
                      Spacer(),
                      // search icon
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.grey[200]),
//                    child: Placeholder(),
                        child: Icon(Icons.search, size: 32, color: Colors.grey),
                      ),
                      SizedBox(width: 8),
                      // profile image
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2015/10/12/15/16/cat-984367_960_720.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 24),

              // Top designers
              Text(
                "Top designers",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),

              // ListView
              Container(
                width: screenWidth,
                height: 310,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    // List 1.
                    Container(
                      height: 280,
                      width: screenWidth / 1.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2014/10/08/04/47/moon-478982_960_720.jpg"),
                              fit: BoxFit.cover)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Chaos as the human",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                            Text(
                              "condition in the universe",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                            SizedBox(height: 8),
                            // Container
                            Container(
                              height: 48,
                              width: screenWidth / 1.3,
                              child: Row(
                                children: <Widget>[
                                  // profile image
                                  Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: Container(
                                      height: 48,
                                      width: 48,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2015/10/12/15/16/cat-984367_960_720.jpg"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  // user name
                                  Text(
                                    "Francesca",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  Spacer(),
                                  // 2 days ago
                                  Text(
                                    "2 days ago",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    // List 2.
                    Container(
                      height: 280,
                      width: screenWidth / 1.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2018/05/12/02/59/illustration-3392326_960_720.jpg"),
                              fit: BoxFit.cover)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Chaos as the human",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                            Text(
                              "condition in the universe",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                            SizedBox(height: 8),
                            // Container
                            Container(
                              height: 48,
                              width: screenWidth / 1.3,
                              child: Row(
                                children: <Widget>[
                                  // profile image
                                  Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: Container(
                                      height: 48,
                                      width: 48,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2015/10/12/15/16/cat-984367_960_720.jpg"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  // user name
                                  Text(
                                    "Francesca",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  Spacer(),
                                  // 2 days ago
                                  Text(
                                    "2 days ago",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 24),

              // Ending actions
              Text(
                "Ending actions",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.zero,
                width: screenWidth,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Container(
                      height: 80,
                      width: screenWidth,
                      child: Row(
                        children: <Widget>[
                          // image
                          Container(
                            height: 72,
                            width: 72,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2017/02/14/03/03/ama-dablam-2064522_960_720.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(width: 16),
                          // Text
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Green Valley",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "by Raksmon",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            height: 48,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 3)
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.keyboard_arrow_up,
                                  size: 32,
                                  color: Colors.greenAccent,
                                ),
                                Text(
                                  "200 \$",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: 80,
                      width: screenWidth,
                      child: Row(
                        children: <Widget>[
                          // image
                          Container(
                            height: 72,
                            width: 72,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/01/28/10/02/temple-1166023_960_720.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(width: 16),
                          // Text
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Green Valley",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "by Raksmon",
                                style:
                                TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            height: 48,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 3)
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.keyboard_arrow_up,
                                  size: 32,
                                  color: Colors.greenAccent,
                                ),
                                Text(
                                  "200 \$",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
//                        color: Colors.greenAccent,
                      height: 80,
                      width: screenWidth,
                      child: Row(
                        children: <Widget>[
                          // image
                          Container(
                            height: 72,
                            width: 72,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2017/01/11/18/18/nepal-1972518_960_720.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(width: 16),
                          // Text
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Green Valley",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "by Raksmon",
                                style:
                                TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            height: 48,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 3)
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.keyboard_arrow_up,
                                  size: 32,
                                  color: Colors.greenAccent,
                                ),
                                Text(
                                  "200 \$",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
//                        color: Colors.greenAccent,
                      height: 80,
                      width: screenWidth,
                      child: Row(
                        children: <Widget>[
                          // image
                          Container(
                            height: 72,
                            width: 72,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2017/02/14/03/03/ama-dablam-2064522_960_720.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(width: 16),
                          // Text
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Green Valley",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "by Raksmon",
                                style:
                                TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            height: 48,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 3)
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.keyboard_arrow_up,
                                  size: 32,
                                  color: Colors.greenAccent,
                                ),
                                Text(
                                  "200 \$",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )

              // bar
            ],
          ),
        ),
      ),
    );
  }
}
