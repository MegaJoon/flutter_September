import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController textEditingController;
  TextEditingController textInput;
  String memory = "";
  String userInput = "";

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
    textInput = TextEditingController();
    textInput.text = ""; // 초기화인듯
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.centerRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(memory, style: TextStyle(fontSize: 40, color: Colors.grey)),
                    Text(userInput, style: TextStyle(fontSize: 80, color: Colors.black, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          Expanded(
            flex: 6,
            child: Container(
              child: Column(
                children: <Widget>[
                  Expanded(
                      child: Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              userInput = ""; // 초기화
                            });
                          },
                          onDoubleTap: () {
                            setState(() {
                              memory = "";
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(60),
                                    bottomRight: Radius.circular(60)),
                                color: Colors.green),
                            child: Center(
                                child: Text("AC",
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold))), // 초기화
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              userInput += "C";
                            });
                          },
                          child: Container(
                            child: Center(
                                child: Text("C",
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold))),
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              userInput += "%";
                            });
                          },
                          child: Container(
                            child: Center(
                                child: Text("%",
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold))),
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              userInput += "/";
                            });
                          },
                          child: Container(
                            child: Center(
                                child: Text("/",
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold))),
                          ),
                        )),
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              userInput += "7";
                            });
                          },
                          child: Container(
                            child: Center(
                                child: Text("7",
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold))),
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              userInput += "8";
                            });
                          },
                          child: Container(
                            child: Center(
                                child: Text("8",
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold))),
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              userInput += "9";
                            });
                          },
                          child: Container(
                            child: Center(
                                child: Text("9",
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold))),
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              userInput += "*";
                            });
                          },
                          child: Container(
                            child: Center(
                                child: Text("*",
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold))),
                          ),
                        )),
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              userInput += "4";
                            });
                          },
                          child: Container(
                            child: Center(
                                child: Text("4",
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold))),
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              userInput += "5";
                            });
                          },
                          child: Container(
                            child: Center(
                                child: Text("5",
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold))),
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              userInput += "6";
                            });
                          },
                          child: Container(
                            child: Center(
                                child: Text("6",
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold))),
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              userInput += "7";
                            });
                          },
                          child: Container(
                            child: Center(
                                child: Text("ㅡ",
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold))),
                          ),
                        )),
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              userInput += "1";
                            });
                          },
                          child: Container(
                            child: Center(
                                child: Text("1",
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold))),
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              userInput += "2";
                            });
                          },
                          child: Container(
                            child: Center(
                                child: Text("2",
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold))),
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              userInput += "3";
                            });
                          },
                          child: Container(
                            child: Center(
                                child: Text("3",
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold))),
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              userInput += "+";
                            });
                          },
                          child: Container(
                            child: Center(
                                child: Text("+",
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold))),
                          ),
                        )),
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              userInput += "0";
                            });
                          },
                          child: Container(
                            child: Center(
                                child: Text("0",
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold))),
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              userInput += ".";
                            });
                          },
                          child: Container(
                            child: Center(
                                child: Text(".",
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold))),
                          ),
                        )),
                        Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(60),
                                  bottomLeft: Radius.circular(60)),
                              color: Colors.green),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              memory += userInput;
                              userInput = "";
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(color: Colors.green),
                            child: Center(
                                child: Text("=",
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.white,
                                        fontWeight:
                                            FontWeight.bold))), // memory로 이동
                          ),
                        )),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
