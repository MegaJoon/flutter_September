import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// https://dribbble.com/shots/7118119--Ecommerce-CRM-app/attachments/120961?mode=media

class EcommerceCRM extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _EcommerceCRMState();
}

class _EcommerceCRMState extends State<EcommerceCRM> {
  final Color _color = Color.fromRGBO(95, 74, 227, 1);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background color
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: screenHeight,
              width: screenWidth,
              color: _color,
            ),
          ),
          // appbar
          Positioned(
            top: screenHeight * 0.15 - 48,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.menu, size: 24, color: Colors.white),
                  Spacer(),
                  Icon(Icons.search, size: 24, color: Colors.white),
                  SizedBox(width: 16),
                  Icon(FontAwesomeIcons.envelope,
                      size: 24, color: Colors.white),
                ],
              ),
            ),
          ),
          // white container
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: screenHeight * 0.85,
              width: screenWidth,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32.0),
                      topRight: Radius.circular(32.0))),
              // Column
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 24.0, right: 24.0, top: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // text
                    Text(
                      "Discover",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: <Widget>[
                        Text(
                          "Customers",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "Identified",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        Icon(Icons.keyboard_arrow_down, color: Colors.grey)
                      ],
                    ),
                    SizedBox(height: 8),
                    // ListView
                    Container(
                        height: 64,
                        width: screenWidth,
//                        color: Colors.pink,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: user.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(right: 16.0),
                                height: 48,
                                width: 64,
                                decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(12.0),
                                    image: DecorationImage(
                                        image: NetworkImage(user[index].image),
                                        fit: BoxFit.cover)),
                              );
                            })),
                    SizedBox(height: 24),
                    Row(
                      children: <Widget>[
                        Text(
                          "Activity",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "Today",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        Icon(Icons.keyboard_arrow_down, color: Colors.grey)
                      ],
                    ),
//                    SizedBox(height: 8),
                    // ListView
                    Container(
                      height: screenHeight - 325,  //
                      width: screenWidth,
//                      color: Colors.pink,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: user.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return Stack(
                              children: <Widget>[
                                Positioned(
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 16.0),
                                    height: 200,
                                    width: screenWidth,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                user[index].productImage),
                                            fit: BoxFit.cover),
//                                        color: Colors.yellow,
                                        borderRadius:
                                            BorderRadius.circular(12.0)),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    height: 64,
                                    width: screenWidth - 48,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius:
                                            BorderRadius.circular(12.0)),
                                    child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Expanded(flex: 2,
                                          child: Container(
                                            margin: EdgeInsets.all(8.0),
                                            height: 48,
                                            width: 48,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        user[index].image),
                                                    fit: BoxFit.cover)),
//                                          color: Colors.yellow,
                                          ),
                                        ),
                                        Expanded(flex: 7,
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(user[index].name,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                      FontWeight.bold)),
                                              Text(user[index].product,
                                                  style: TextStyle(fontSize: 12))
                                            ],
                                          ),
                                        ),
                                        Expanded(flex: 1, child: Icon(Icons.arrow_forward_ios, color: Colors.black, size: 24))
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// user accounts list
class User {
  String name;
  String image;
  String product;
  String productImage;

  User({this.name, this.image, this.product, this.productImage});
}

List<User> user = [
  User(
      name: "Michael",
      image:
          "https://cdn.pixabay.com/photo/2016/11/21/14/53/adult-1845814_960_720.jpg",
      product: "Viewed Product: Adidas Superstar1",
      productImage:
          "https://cdn.pixabay.com/photo/2014/09/03/20/15/legs-434918_960_720.jpg"),
  User(
      name: "Sara",
      image:
          "https://cdn.pixabay.com/photo/2019/09/02/13/29/portrait-4447229_960_720.jpg",
      product: "Viewed Product: Adidas Superstar2",
      productImage:
          "https://cdn.pixabay.com/photo/2016/10/18/08/13/travel-1749508_960_720.jpg"),
  User(
      name: "Jessica",
      image:
          "https://cdn.pixabay.com/photo/2015/03/26/09/42/woman-690118_960_720.jpg",
      product: "Viewed Product: Adidas Superstar3",
      productImage:
          "https://cdn.pixabay.com/photo/2017/08/12/19/01/walk-2635038_960_720.jpg"),
  User(
      name: "Victoria",
      image:
          "https://cdn.pixabay.com/photo/2016/11/22/21/42/adult-1850703_960_720.jpg",
      product: "Viewed Product: Adidas Superstar4",
      productImage:
          "https://cdn.pixabay.com/photo/2017/04/09/18/54/shoes-2216498_960_720.jpg"),
  User(
      name: "KK",
      image:
          "https://cdn.pixabay.com/photo/2019/08/13/15/37/animal-4403647_960_720.jpg",
      product: "Viewed Product: Adidas Superstar5",
      productImage:
          "https://cdn.pixabay.com/photo/2014/10/27/19/18/shoes-505471_960_720.jpg"),
  User(
      name: "Joon",
      image:
          "https://cdn.pixabay.com/photo/2014/09/25/22/14/profile-461076_960_720.jpg",
      product: "Viewed Product: Adidas Superstar6",
      productImage:
          "https://cdn.pixabay.com/photo/2016/03/27/22/16/fashion-1284496_960_720.jpg"),
];
