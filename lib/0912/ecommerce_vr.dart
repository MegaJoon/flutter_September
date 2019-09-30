import 'package:flutter/material.dart';

// https://dribbble.com/shots/7118411-Ecommerce-VR-Daily/attachments/121262?mode=media

class EcommerceVR extends StatefulWidget {
  @override
  State createState() => _EcommerceVRState();
}

class _EcommerceVRState extends State<EcommerceVR> {
  @override
  Widget build(BuildContext context) {
    // greenAccent
    final Color _color = Color.fromRGBO(52, 74, 74, 1);
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background image
          Positioned(
            top: 0,
            left: 0,
            child: Container(
                height: screenHeight * 0.8,
                width: screenWidth,
                child: Image(
                    image: AssetImage("assets/sneakers.png"),
                    fit: BoxFit.cover)),
          ),

          // AppBar
          Positioned(
            top: 0,
            left: 0,
            child: SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
                  padding: EdgeInsets.only(left: 24.0, right: 24.0),
                  height: 48,
                  width: screenWidth,
//                  color: Colors.red,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.arrow_back, size: 24, color: Colors.white),
                      Spacer(),
                      Icon(Icons.shopping_cart, size: 24, color: Colors.white)
                    ],
                  ),
                )),
          ),

          // close icon
          Positioned(
              top: 130,
              left: 170,
              child: Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(32.0)),
                  child: Icon(Icons.close, size: 16, color: Colors.white))),

          // 3 colors container
          Positioned(
            top: 64,
            right: 50,
            child: Container(
              padding: EdgeInsets.only(left: 32.0, right: 32.0),
              height: 52,
              width: 130,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(24.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("3 Colors:",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(backgroundColor: Colors.white, radius: 6.0),
                      CircleAvatar(backgroundColor: Colors.orange, radius: 6.0),
                      CircleAvatar(backgroundColor: Colors.blue, radius: 6.0),
                    ],
                  )
                ],
              ),
            ),
          ),

          // add icon 1.
          Positioned(
              top: 280,
              left: 90,
              child: Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(32.0)),
                  child: Icon(Icons.add, size: 16, color: Colors.white))),

          // add icon 2.
          Positioned(
              top: 400,
              left: 200,
              child: Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(32.0)),
                  child: Icon(Icons.add, size: 16, color: Colors.white))),

          // greenAccent Container
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              height: screenHeight * 0.35,
              width: screenWidth,
              decoration: BoxDecoration(
                  color: _color,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(32.0))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("\$298.00",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                        Spacer(),
                        Icon(Icons.favorite_border,
                            color: Colors.blue, size: 24)
                      ],
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Nike Air ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                          text: "Sneaker",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        )
                      ]),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star, color: Colors.yellow, size: 12),
                        SizedBox(width: 8),
                        Icon(Icons.star, color: Colors.yellow, size: 12),
                        SizedBox(width: 8),
                        Icon(Icons.star, color: Colors.yellow, size: 12),
                        SizedBox(width: 8),
                        Icon(Icons.star, color: Colors.yellow, size: 12),
                        SizedBox(width: 8),
                        Icon(Icons.star_border, color: Colors.yellow, size: 12),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text("Despite growth of the Internet over the past",
                        style: TextStyle(color: Colors.grey, fontSize: 16)),
                    SizedBox(height: 8),
                    Text("seven years, the the user of toll-free phone",
                        style: TextStyle(color: Colors.grey, fontSize: 16)),
                    SizedBox(height: 8),
                    Text("numbers in television advertising.",
                        style: TextStyle(color: Colors.grey, fontSize: 16)),
                  ],
                ),
              ),
            ),
          ),

          // blue container
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              height: 48,
              width: screenWidth,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(32.0))),
              child: Center(
                  child: Text("ADD TO CART",
                      style: TextStyle(color: Colors.white, fontSize: 16))),
            ),
          ),
        ],
      ),
    );
  }
}
