import 'package:flutter/material.dart';

// 19-8-31
// https://dribbble.com/shots/7063482-Fresh-juice-subscription-app/attachments/64396?mode=media

class FreshFruit extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FreshFruitState();
}

class _FreshFruitState extends State<FreshFruit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // Stack  아래 children을 순서대로 정렬한다.
        children: <Widget>[
          Positioned(
            // stack안에 위치 저장하는건 positioned
            left: 0,
            top: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(// 인터넷에서 이미지 불러오기
                          "https://cdn.pixabay.com/photo/2016/05/08/21/24/strawberry-1379986_960_720.jpg"),
                      fit: BoxFit.cover) // 꽉찬 이미지
              ),
            ),
          ),
          Positioned(
            left: 8,
            bottom: 8,
            right: 8,
            child: Container(
              height: 280,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 0,
                    bottom: 0,
                    right: 0,
                    top: 16,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24)),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 8,
                          ), // 정확한 사이즈 가능
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 4,
                              width: 100,
                              decoration: BoxDecoration(color: Colors.grey),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Pressed Juice",
                                  style: TextStyle(
                                      fontSize: 24, color: Colors.blueGrey),
                                ),
                                Text(
                                  "\$6.00",
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.pinkAccent,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, top: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  flex: 1, // 확장됨 1:1:1 비율 설정 가능
                                  child: Container(
                                    height: 28,
                                    margin: EdgeInsets.only(right: 16),
                                    decoration: BoxDecoration(
                                        color: Colors.deepPurpleAccent,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Center(
                                      child: Container(
                                        child: Text(
                                          "Description",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 16),
                                    child: Text(
                                      "Ingredients",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: Text("Nutrition Facts",
                                          style: TextStyle(color: Colors.grey)),
                                    )),
                              ],
                            ),
                          ),
                          //
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Juice Juice Juice Juice Juice Juice Juice Juice Juice Juice Juice Juice Juice Juice Juice Juice",
                              style:
                              TextStyle(color: Colors.grey, fontSize: 18),
                            ),
                          ),
                          //
                          Padding(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: Container(
                              height: 40,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 10,
//                                    child: Placeholder(), // 다른 위젯이 언젠가 추가 될 위치를 나타내는 상자를 그리는 위젯
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "BUY NOW",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.pinkAccent,
                                          borderRadius:
                                          BorderRadius.circular(8),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black.withOpacity(
                                                    0.1), // withOpacity는 불투명도
                                                blurRadius: 3)
                                          ]),
                                      margin: EdgeInsets.only(
                                          right: 8, top: 2, bottom: 2),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
//                                    child: Placeholder(),
                                    child: Container(
                                      child: Center(
                                          child: Icon(
                                            Icons.exit_to_app,
                                            color: Colors.white,
                                          )),
                                      margin: EdgeInsets.only(
                                          left: 8, top: 2, bottom: 2),
                                      decoration: BoxDecoration(
                                          color: Colors.deepPurpleAccent,
                                          borderRadius:
                                          BorderRadius.circular(8),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black.withOpacity(
                                                    0.1), // withOpacity는 불투명도
                                                blurRadius: 3)
                                          ]),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 24,
                    top: 0,
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
//                                blurRadius: 1, // 그림자 모양
                                spreadRadius: 3 // 블러를 적용하기 전에 상자를 부풀려야하는 양
                            )
                          ],
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                          child: Icon(
                            Icons.bookmark_border,
                            color: Colors.white,
                          )),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
