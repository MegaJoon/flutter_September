import 'package:flutter/material.dart';

// https://dribbble.com/shots/7113503-Currency-Wallet/attachments/116161?mode=media

class CurrencyWallet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CurrencyWalletState();
}

class _CurrencyWalletState extends State<CurrencyWallet> {
  // BackgroundColor
  final Color _BackgroundColor = Color.fromRGBO(72, 73, 161, 1);

  // USD container color
  final Color _color = Color.fromRGBO(109, 130, 209, 1);
  final Color _color2 = Color.fromRGBO(124, 142, 213, 1);

  // profile image url
  final String _image =
      "https://cdn.pixabay.com/photo/2019/05/04/15/24/art-4178302_960_720.jpg";

  // ListView Image
  final String _ListViewImage1 =
      "https://cdn.pixabay.com/photo/2017/01/25/12/31/bitcoin-2007769_960_720.jpg";
  final String _ListViewImage2 =
      "https://cdn.pixabay.com/photo/2016/11/10/05/11/bitcoin-1813505_960_720.jpg";
  final String _ListViewImage3 =
      "https://cdn.pixabay.com/photo/2018/01/16/01/02/cryptocurrency-3085139_960_720.jpg";
  final String _ListViewImage4 =
      "https://cdn.pixabay.com/photo/2017/01/25/12/31/bitcoin-2007769_960_720.jpg";
  final String _ListViewImage5 =
      "https://cdn.pixabay.com/photo/2019/09/04/13/06/bitcoin-4451569_960_720.jpg";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background color
          Positioned(
            child: Container(color: _BackgroundColor),
          ),

          // SafeArea
          SafeArea(
            top: true,
            left: true,
            right: true,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              height: 52,
              width: screenWidth,
//              color: Colors.yellow,
              child: Row(
                children: <Widget>[
                  Icon(Icons.arrow_back_ios, size: 24, color: Colors.white),
                  Spacer(),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.0),
                        image: DecorationImage(
                            image: NetworkImage(_image), fit: BoxFit.cover)),
                  )
                ],
              ),
            ),
          ),

          // Texts 1600.60
          Positioned(
            top: 90,
            left: 130,
            child: Column(
              children: <Widget>[
                RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "\$",
                      style: TextStyle(color: Colors.white, fontSize: 24)),
                  TextSpan(
                      text: "1600.60",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                ])),
                Text("Your total balance",
                    style: TextStyle(color: Colors.white, fontSize: 12)),
              ],
            ),
          ),

          // White Container
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
//              color: Colors.pinkAccent,
              height: screenHeight * 0.65,
              width: screenWidth,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 32,
                    left: 0,
                    child: Container(
                      height: screenHeight * 0.65 - 20,
                      width: screenWidth,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(32.0),
                              topRight: Radius.circular(32.0))),
                      child: Column(
                        children: <Widget>[
                          ListView(
                            shrinkWrap: true,
                            children: <Widget>[
                              SizedBox(height: 16),
                              // list 1.
                              Container(
                                padding: EdgeInsets.only(
                                    left: 24.0, right: 24.0, bottom: 16),
                                height: 64,
                                width: screenWidth,
//                            color: Colors.yellow,
                                child: Row(
                                  children: <Widget>[
                                    ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        child: Container(
                                            height: 48,
                                            width: 48,
                                            child: Image(
                                                image: NetworkImage(
                                                    _ListViewImage1),
                                                fit: BoxFit.cover))),
                                    SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text("Bitcoin",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20)),
                                        SizedBox(height: 4),
                                        Text("0.00000000000 BTC",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12)),
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      "+ \$200.0",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              // list 2.
                              Container(
                                padding: EdgeInsets.only(
                                    left: 24.0, right: 24.0, bottom: 16),
                                height: 64,
                                width: screenWidth,
//                            color: Colors.yellow,
                                child: Row(
                                  children: <Widget>[
                                    ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        child: Container(
                                            height: 48,
                                            width: 48,
                                            child: Image(
                                                image: NetworkImage(
                                                    _ListViewImage2),
                                                fit: BoxFit.cover))),
                                    SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text("Ethereum",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20)),
                                        SizedBox(height: 4),
                                        Text("0.00000000000 ETC",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12)),
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      "- \$50.0",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              // list 3.
                              Container(
                                padding: EdgeInsets.only(
                                    left: 24.0, right: 24.0, bottom: 16),
                                height: 64,
                                width: screenWidth,
//                            color: Colors.yellow,
                                child: Row(
                                  children: <Widget>[
                                    ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        child: Container(
                                            height: 48,
                                            width: 48,
                                            child: Image(
                                                image: NetworkImage(
                                                    _ListViewImage3),
                                                fit: BoxFit.cover))),
                                    SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text("Ripple",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20)),
                                        SizedBox(height: 4),
                                        Text("0.00000000000 BTC",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12)),
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      "- \$100.0",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              // list 4.
                              Container(
                                padding: EdgeInsets.only(
                                    left: 24.0, right: 24.0, bottom: 16),
                                height: 64,
                                width: screenWidth,
//                            color: Colors.yellow,
                                child: Row(
                                  children: <Widget>[
                                    ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        child: Container(
                                            height: 48,
                                            width: 48,
                                            child: Image(
                                                image: NetworkImage(
                                                    _ListViewImage4),
                                                fit: BoxFit.cover))),
                                    SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text("Dash",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20)),
                                        SizedBox(height: 4),
                                        Text("0.00000000000 BTC",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12)),
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      "+ \$50.0",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              // list 5.
                              Container(
                                padding: EdgeInsets.only(
                                    left: 24.0, right: 24.0, bottom: 16),
                                height: 64,
                                width: screenWidth,
//                            color: Colors.yellow,
                                child: Row(
                                  children: <Widget>[
                                    ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        child: Container(
                                            height: 48,
                                            width: 48,
                                            child: Image(
                                                image: NetworkImage(
                                                    _ListViewImage5),
                                                fit: BoxFit.cover))),
                                    SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text("Litcoin",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20)),
                                        SizedBox(height: 4),
                                        Text("0.00000000000 LTC",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12)),
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      "- \$160.0",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 16.0),
                            child: Container(
                              height: 48,
                              width: screenWidth,
                              decoration: BoxDecoration(
                                  color: _BackgroundColor,
                                  borderRadius: BorderRadius.circular(16)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "+ add currency",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  // USD
                  Positioned(
                    top: 0,
                    left: screenWidth * 0.5 - 70,
                    child: Container(
                      height: 64,
                      width: 140,
                      decoration: BoxDecoration(
                          color: _color,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 4,
                                spreadRadius: 2)
                          ]),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 8),
                          Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                  color: _color2,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Icon(Icons.arrow_drop_down,
                                  size: 24, color: Colors.white)),
                          SizedBox(width: 16),
                          Text("USD",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
