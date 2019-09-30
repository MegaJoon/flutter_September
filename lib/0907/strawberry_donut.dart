import 'package:flutter/material.dart';

//https://dribbble.com/shots/7100621-Crave-Online-Food-App/attachments/102925?mode=media

class StrawberryDonut extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StrawberryDonutState();
}

class _StrawberryDonutState extends State<StrawberryDonut> {
  @override
  Widget build(BuildContext context) {
    final deviceheight = MediaQuery.of(context).size.height;
    final devicewidth = MediaQuery.of(context).size.width;
    bool _isFavorited = true;

    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: Column(
        children: <Widget>[
          SizedBox(height: 48),

          // bar
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            height: 48,
            width: devicewidth,
            child: Row(
              children: <Widget>[
                Icon(Icons.arrow_back, color: Colors.white, size: 32),
                Spacer(),
                Icon(Icons.more_vert, color: Colors.white, size: 32)
              ],
            ),
          ),

          // Donut image
          // ??

          SizedBox(height: 200),

          // New Container: White
          Container(
              padding: EdgeInsets.only(left: 32, right: 32, top: 32),
              height: 387,
              width: devicewidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Text
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Strawberry Donut",
                          style: TextStyle(
                              fontSize: 24, fontStyle: FontStyle.italic)),
                      Spacer(),
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(32),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 1)
                            ]),
//                          child: Icon(Icons.favorite,color: Colors.pinkAccent,size: 24,)
                        child: IconButton(
                            icon: _isFavorited
                                ? Icon(Icons.favorite)
                                : Icon(Icons.favorite_border),
                            color: Colors.pinkAccent,
                            iconSize: 24,
                            onPressed: () {
                              setState(() {
                                if (_isFavorited) {
                                  _isFavorited = false;
                                } else {
                                  _isFavorited = true;
                                }
                              });
                            }),
                      )
                    ],
                  ),

                  // $ 3.00
                  Text("\$ 3.00"),
                  SizedBox(height: 8),

                  // 5 Stars
                  Row(
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                    ],
                  ),

                  Divider(), // --------------------------

                  // Quantity
                  Text(
                    "Quantity",
                  ),
                  SizedBox(height: 8),

                  // cnt
                  Container(height: 40, width: 150, child: Placeholder()),
                  SizedBox(height: 16),

                  // Description
                  Text("Description"),
                  Container(
                    padding: EdgeInsets.only(top: 8),
                    height: 80,
                    width: devicewidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Lorem ipsum dolor sit amet, consecakcnlacnalk"),
                        Text("Lorem ipsum dolor sit amet, consecakcnlacnalk"),
                        Text("Lorem ipsum dolor sit amet, consecakcnlacnalk"),
                        Text("Lorem ipsum dolor sit amet, consecakcnlacnalk"),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  // Add to Cart
                  Container(
                    height: 48,
                    width: devicewidth,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(32)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Add to Cart",
                            style: TextStyle(color: Colors.white)),
                        SizedBox(width: 8),
                        Icon(Icons.shopping_cart, color: Colors.white)
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
