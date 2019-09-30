import 'package:flutter/material.dart';

// https://dribbble.com/shots/6979043-Swipe-3-task-at-a-time

class SwipeTask extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SwipeTaskState();
}

class _SwipeTaskState extends State<SwipeTask> {
  @override
  Widget build(BuildContext context) {
    final deviceheight = MediaQuery.of(context).size.height;
    final devicewidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.teal[200], // 이럴땐 백그라운드로
        body: Container(
            child: Column(children: <Widget>[
          SizedBox(height: 48),
          Container(
              height: 40,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  children: <Widget>[
                    Text("To-dos",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40)),
                    Spacer(),
                    Icon(Icons.file_download, size: 32)
                  ],
                ),
              )),
          SizedBox(height: 24),
          Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                  height: 160,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 1,
                            spreadRadius: 3,
                            color: Colors.black.withOpacity(0.1))
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)
//                      , border:Border.all()
                      ),
                  child: Row(children: <Widget>[
                    Expanded(
                        flex: 4,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              height: 100,
                              width: 100,
                              top: 20,
                              left: 30,
//                              child: Placeholder(),
                              child: Image(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2015/10/31/12/34/teacher-1015630_960_720.jpg")),
                            ),
                            Positioned(
                              left: 15,
                              bottom: 10,
                              child: Text("TIME REMAINING",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        )),
                    Expanded(
                        flex: 6,
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 16),
                            Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Christmas celebration",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                )),
                            SizedBox(height: 8),
                            Row(
                              children: <Widget>[
                                Icon(Icons.location_on, color: Colors.grey),
                                Text(
                                  "798 Green Flat Apt, 305",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 8,
                                  backgroundColor: Colors.grey[300],
                                ),
                                CircleAvatar(
                                  radius: 8,
                                  backgroundColor: Colors.grey[500],
                                ),
                                CircleAvatar(
                                  radius: 8,
                                  backgroundColor: Colors.grey[900],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text("4 people",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            Text("12D 10H 38M",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ))
                  ]))),

          ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      crossAxisCount: 2),
                  itemBuilder: (context, idx) {
//                    return Container(child: Placeholder());
                    return Stack(
                      children: <Widget>[
                        Positioned(
                            child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 1,
                                      spreadRadius: 3,
                                      color: Colors.black.withOpacity(0.1))
                                ],
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white),
                          ),
                        )),
                        Positioned(
                          child: Icon(
                            Icons.bookmark,
                            size: 40,
                            color: Colors.blue[900],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Center(
                                child: Text(
                              todo[idx].priorty,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 80),
                            )),
                            Center(
                                child: Text(
                              todo[idx].title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.grey),
                            ))
                          ],
                        ),
                      ],
                    );
                  }),
            ),
          )
        ])));
  }
}

class Todo {
  String priorty;
  String title;

  Todo({this.priorty, this.title});
}

List<Todo> todo = [
  Todo(priorty: "3", title: "Reminders"),
  Todo(priorty: "5", title: "Sports"),
  Todo(priorty: "1", title: "Book"),
  Todo(priorty: "6", title: "Tour"),
];
