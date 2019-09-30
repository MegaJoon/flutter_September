import 'package:flutter/material.dart';

class ManageMoney extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ManageMoneyState();
}

class _ManageMoneyState extends State<ManageMoney> {
  @override
  Widget build(BuildContext context) {
    final devicewidth = MediaQuery.of(context).size.width;
    final deviceheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          children: <Widget>[
            SizedBox(height: 48),
            Container(
              // Welcome
              height: 100,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Welcome back,",
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[700]),
                        ),
                        Text(
                          "Justin",
                          style: TextStyle(
                              fontSize: 32,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 48,
                      width: 48,
                      child: Image(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2014/09/07/16/53/hands-437968_960_720.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    // 이미지
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),

            // Account balance
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                height: 100,
                width: devicewidth,
                color: Colors.indigoAccent[700],
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Account balance",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
//                      Text("\$256.51 USD", style: TextStyle(fontSize: 32, color: Colors.white,),),
                      SizedBox(
                        height: 8,
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "\$256.51", style: TextStyle(fontSize: 32)),
                          TextSpan(text: "USD", style: TextStyle(fontSize: 20)),
                        ]),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),

            // Send Funds
            Container(
              height: 100,
              width: devicewidth,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Send Funds",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: deviceheight / 10,
                            width: devicewidth / 6,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/04/10/21/34/woman-1320810_960_720.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            height: deviceheight / 10,
                            width: devicewidth / 6,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            height: deviceheight / 10,
                            width: devicewidth / 6,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/11/29/20/22/child-1871104_960_720.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            height: deviceheight / 10,
                            width: devicewidth / 6,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2017/06/02/14/11/girl-2366438_960_720.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            height: deviceheight / 10,
                            width: devicewidth / 6,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey[300]),
                            child: Icon(
                              Icons.add,
                              size: 32,
                              color: Colors.indigoAccent[700],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),

            // Weekly Stats
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                height: 100,
                width: devicewidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Weekly Stats",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 70,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                                color: Colors.green[100].withOpacity(0.5),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "Income",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        "+\$762.25",
                                        style: TextStyle(
                                          color: Colors.green[700],
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Container(
                                color: Colors.red[100].withOpacity(0.5),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "Expenses",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        "-\$531.51",
                                        style: TextStyle(
                                          color: Colors.red[700],
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 16,
            ),

            // Transactions
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                width: devicewidth,
                height: 280,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "Transactions",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Spacer(),
                        Text(
                          "VIEW ALL".toUpperCase(),
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigoAccent[700]),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
//                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Container(
                          height: 70,
                          width: devicewidth,
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 64,
                                width: 64,
                                child: Image(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2016/09/29/08/33/apple-1702316_960_720.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Apple",
                                      style: TextStyle(
                                          color: Colors.indigoAccent[700],
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "20-07-2019",
                                      style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "-\$159",
                                  style: TextStyle(
                                      color: Colors.red[700],
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.zero,
                          child: Container(
                            height: 70,
                            width: devicewidth,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 64,
                                  width: 64,
                                  child: Image(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/09/29/08/33/apple-1702316_960_720.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "Apple",
                                        style: TextStyle(
                                            color: Colors.indigoAccent[700],
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "20-07-2019",
                                        style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "-\$159",
                                    style: TextStyle(
                                        color: Colors.red[700],
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.zero,
                          child: Container(
                            height: 70,
                            width: devicewidth,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 64,
                                  width: 64,
                                  child: Image(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/09/29/08/33/apple-1702316_960_720.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "Apple",
                                        style: TextStyle(
                                            color: Colors.indigoAccent[700],
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "20-07-2019",
                                        style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "-\$159",
                                    style: TextStyle(
                                        color: Colors.red[700],
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.zero,
                          child: Container(
                            height: 70,
                            width: devicewidth,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 64,
                                  width: 64,
                                  child: Image(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/09/29/08/33/apple-1702316_960_720.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "Apple",
                                        style: TextStyle(
                                            color: Colors.indigoAccent[700],
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "20-07-2019",
                                        style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "-\$159",
                                    style: TextStyle(
                                        color: Colors.red[700],
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.zero,
                          child: Container(
                            height: 70,
                            width: devicewidth,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 64,
                                  width: 64,
                                  child: Image(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/09/29/08/33/apple-1702316_960_720.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "Apple",
                                        style: TextStyle(
                                            color: Colors.indigoAccent[700],
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "20-07-2019",
                                        style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "-\$159",
                                    style: TextStyle(
                                        color: Colors.red[700],
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        )),
      ),

      // Bottom Navigator
      bottomNavigationBar: BottomAppBar(
        elevation: 4, // 갯수
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home, size: 32),
                onPressed: () {
                  setState(() {});
                },
              ),
              IconButton(
                icon: Icon(Icons.note, size: 32),
                onPressed: () {
                  setState(() {});
                },
              ),
              IconButton(
                icon: Icon(Icons.credit_card, size: 32),
                onPressed: () {
                  setState(() {});
                },
              ),
              IconButton(
                icon: Icon(Icons.settings, size: 32),
                onPressed: () {
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
