import 'package:flutter/material.dart';

class CinemaTicket extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CinemaTicketState();
}

class _CinemaTicketState extends State<CinemaTicket> {
  @override
  Widget build(BuildContext context) {
    final deviceheight = MediaQuery.of(context).size.height;
    final devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Search
              SafeArea(
                left: true,
                right: true,
                child: Container(
                  height: 48,
                  width: devicewidth,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Search",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey[700].withOpacity(0.5),
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.search,
                          color: Colors.indigo,
                        )
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 24),

              // Now Playing
              Text(
                "Now Playing",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),

              SizedBox(height: 16),

              // Image
              Container(
                  height: deviceheight / 1.6,
                  width: devicewidth,
//                  color: Colors.blue,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Center(
                        child: Container(
                          height: deviceheight / 1.7,
                          width: devicewidth / 1.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 5,
                                    spreadRadius: 1)
                              ],
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://www.openaircinemas.com.au/wp-content/uploads/2019/06/268x0w.png"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      SizedBox(width: 16),
                      Center(
                        child: Container(
                          height: deviceheight / 2,
                          width: devicewidth / 1.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 5,
                                    spreadRadius: 1)
                              ],
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://file.mk.co.kr/meet/neds/2019/07/image_readtop_2019_518739_15631435563825889.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ],
                  )),

              // IMDb
              Row(
                children: <Widget>[
                  Container(
                    height: 16,
                    width: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[700]),
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                        child: Text(
                      "IMDb",
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    )),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text("8.4",
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 12))
                ],
              ),

              // Name
              Text(
                "John Wick:Chapter 3 - Parabell...",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),

              // Kind
              Text(
                "Action, Crime, Thrilier",
                style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),

              SizedBox(height: 24),

              // Premieres
              Text(
                "Premieres",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              )
            ],
          ),
        ),
      ),
    );
  }
}
