import 'package:flutter/material.dart';

class ImportantTask extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ImportantTaskState();
}

class _ImportantTaskState extends State<ImportantTask> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // 꼭 해줘야 함, 탭 길이
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  // for adding animation
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height; // 폰마다 다른 사이즈
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        // 단일 위젯 스크롤 가능
          child: Padding(
            padding: const EdgeInsets.only(left: 48),
            child: Column(
              children: <Widget>[
                Container(
                  // 이건 빈 공간  1/10만큼
                  height: deviceHeight / 10,
//                child: Placeholder(),
                ),
                Container(
                  height: deviceHeight / 10,
//                child: Placeholder(),
                  child: Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start, // 가로
                        mainAxisAlignment: MainAxisAlignment.center, // 세로
                        children: <Widget>[
                          Text("Hello Anna",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold)),
                          Text("Good morning, ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      Spacer(), // 위젯들사이에 추가하여 뷰
                      Container(
                        width: 100,
                        margin: EdgeInsets.symmetric(vertical: 4), // 위와 아래 여백 줌
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://github.com/flutter/plugins/raw/master/packages/video_player/doc/demo_ipod.gif?raw=true"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomLeft: Radius.circular(16)),
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: deviceHeight / 10,
                  padding: const EdgeInsets.only(right: 100),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "You have some important tasks to do for today",
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      )),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: deviceHeight / 12,
//              child: Placeholder(),
                  child: TabBar(
                    labelColor: Colors.black,
                    // 탭 색깔
                    unselectedLabelColor: Colors.grey,
                    // 선택되지않은 탭 색깔
                    indicatorColor: Colors.transparent,
                    // 탭 아래 선 색, transparent는 투명
//                indicatorSize: TabBarIndicatorSize.tab,
                    isScrollable: true,
                    // 이 탭 막대를 가로로 스크롤 가능한지
                    controller: _tabController,
                    tabs: <Widget>[
                      Tab(text: "TODAY'S PRIORITIES".toUpperCase()),
                      // 모든 문자를 대문자로 반환
                      Tab(text: "NOTES".toUpperCase()),
                      Tab(text: "PROJECTS".toUpperCase()),
                      Tab(text: "OTHERS".toUpperCase()),
                    ],
                  ),
                ),
                Container(
                  height: deviceHeight / 2,
                  child: TabBarView(controller: _tabController, children: [
                    Container(
                      child: GridView.builder(
                          shrinkWrap: true,
                          // 수축 포장
                          padding: EdgeInsets.zero,
                          // offset 0
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 8, // 십자선 child 가로 사이 간격
                              mainAxisSpacing: 8, // 십자선 child 세로 사이 간격
                              // 교차 축에 교정 된 수의 타일로 격자 레이아웃 작성
                              crossAxisCount: 2),
                          // 가로로 2개
                          itemBuilder: (context, index) {
                            // 실제 보여주는 return값
                            return Container(
                              margin: EdgeInsets.only(bottom: 16, top: 16, left: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  // 끝에 휘게
                                  border: Border.all(color: Colors.grey)),
                              // 테두리 색
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 16,
                                    top: 16,
                                    right: 16,
                                    child: Column(
                                      children: <Widget>[
                                        Text(todoItem[index].setTime),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(todoItem[index].task),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    top: 16,
                                    child: Container(
                                      height: 4,
                                      width: 36,
                                      decoration: BoxDecoration(
                                          color: todoItem[index].labelColor,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(16),
                                              topRight: Radius.circular(16))),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    right: 16,
                                    left: 16,
                                    child: Row(
                                      children: <Widget>[
                                        Text(todoItem[index].time),
                                        Spacer(),
                                        Icon(Icons.notifications_none,
                                            color: Colors.grey)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                          itemCount: todoItem.length),
                    ), // 내 리스트 갯수만큼 카운트
                    Container(),
                    Container(),
                    Container()
                  ]),
                ),
//            Container(
//              height: deviceHeight / 4,
//              child: Column(
//                children: <Widget>[
//                  Text("THIS WEEK"),
//                  ListView.builder(
//                    shrinkWrap: true,
//                    itemBuilder: (context, index) {
//                      return Container(
//                        height: 80,
//                        decoration: BoxDecoration(
//                            borderRadius: BorderRadius.circular(16),
//                            border: Border.all(color: Colors.grey.withOpacity(0.5))),
//                      );
//                    },
//                  )
//                ],
//              ),
//            )
              ],
            ),
          )),
    );
  }
}

class Todo {
  String setTime;
  String task;
  String time;
  Color labelColor;
  Todo({this.setTime, this.task, this.time, this.labelColor}); // 이렇게 한 묶음
}

List<Todo> todoItem = [
  Todo(
      setTime: "11.14 am",
      task: "Belanja samam emak",
      time: "in 3 hrs 34 mins",
      labelColor: Colors.pink),
  Todo(
      setTime: "11.14 am",
      task: "Video call bareng calon mertua",
      time: "in 4 hrs",
      labelColor: Colors.yellow),
  Todo(
      setTime: "2.12 pm",
      task: "Kirim kerjaan ke klien rese",
      time: "in 6 hrs 23 mins",
      labelColor: Colors.blue),
  Todo(
      setTime: "9.35 pm",
      task: "Nobar bareng temen",
      time: "in 6 hrs",
      labelColor: Colors.green)
];
