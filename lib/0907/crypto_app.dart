import 'package:flutter/material.dart';

//https://dribbble.com/shots/7090483-Crypto-App-Accounts-Prices/attachments/92341?mode=media

class CryptoApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CryptoAppState();
}

class _CryptoAppState extends State<CryptoApp> {
  @override
  Widget build(BuildContext context) {
    final deviceheight = MediaQuery.of(context).size.height;
    final devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 72),
              // Text: account
              Text(
                "\$7,589",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 48),
              ),
              Text(
                "Your account",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              SizedBox(height: 32),
              Container(
                padding: EdgeInsets.only(left: 8, right: 8),
                height: deviceheight / 1.4,
                width: devicewidth,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    // ListTile.
                    Container(
                      margin: EdgeInsets.only(left: 8, right: 8),
                      height: 72,
                      width: devicewidth,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 5)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 24,
                              backgroundImage: NetworkImage(
                                  "https://image.shutterstock.com/image-photo/bitcoin-btc-on-stack-cryptocurrencies-260nw-1132961363.jpg"),
                            ),
                            SizedBox(width: 8),
                            Text("BTC Wallet"),
                            Spacer(),
                            //
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text("USD 5,080"),
                                Text(
                                  "0.00112274 BTC",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            SizedBox(width: 16),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      height: 72,
                      width: devicewidth,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 5)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 24,
                              backgroundImage: NetworkImage(
                                  "https://image.shutterstock.com/image-illustration/3d-rendering-ethereum-eth-glowing-260nw-1318902560.jpg"),
                            ),
                            SizedBox(width: 8),
                            Text("ETH Wallet"),
                            Spacer(),
                            //
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text("USD 1,240"),
                                Text(
                                  "0.00112274 ETH",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            SizedBox(width: 16),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      height: 72,
                      width: devicewidth,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 5)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 24,
                              backgroundImage: NetworkImage(
                                  "https://image.shutterstock.com/image-illustration/bitcoin-cash-coin-bch-blockchain-260nw-1027712125.jpg"),
                            ),
                            SizedBox(width: 8),
                            Text("BCH Wallet"),
                            Spacer(),
                            //
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text("USD 0,000"),
                                Text(
                                  "0.00112274 BCH",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            SizedBox(width: 16),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      height: 72,
                      width: devicewidth,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 5)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 24,
                              backgroundImage: NetworkImage(
                                  "https://image.shutterstock.com/image-photo/bitcoin-btc-on-stack-cryptocurrencies-260nw-1132961363.jpg"),
                            ),
                            SizedBox(width: 8),
                            Text("BTC Wallet"),
                            Spacer(),
                            //
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text("USD 5,080"),
                                Text(
                                  "0.00112274 BTC",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            SizedBox(width: 16),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      height: 72,
                      width: devicewidth,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 5)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 24,
                              backgroundImage: NetworkImage(
                                  "https://image.shutterstock.com/image-illustration/3d-rendering-ethereum-eth-glowing-260nw-1318902560.jpg"),
                            ),
                            SizedBox(width: 8),
                            Text("ETH Wallet"),
                            Spacer(),
                            //
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text("USD 1,240"),
                                Text(
                                  "0.00112274 ETH",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            SizedBox(width: 16),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      height: 72,
                      width: devicewidth,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 5)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 24,
                              backgroundImage: NetworkImage(
                                  "https://image.shutterstock.com/image-illustration/bitcoin-cash-coin-bch-blockchain-260nw-1027712125.jpg"),
                            ),
                            SizedBox(width: 8),
                            Text("BCH Wallet"),
                            Spacer(),
                            //
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text("USD 0,000"),
                                Text(
                                  "0.00112274 BCH",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            SizedBox(width: 16),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          width: devicewidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(width: 8),
              IconButton(
                  icon: Icon(
                    Icons.insert_chart,
                    size: 32,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.trending_up,
                    size: 32,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.notifications_none,
                    size: 32,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.account_circle,
                    size: 32,
                  ),
                  onPressed: () {}),
              SizedBox(width: 8),
            ],
          ),
        ),
      ),
    );
  }
}
