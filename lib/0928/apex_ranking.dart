import 'package:flutter/material.dart';
import 'package:flutter_dribbble/0928/ranking.dart';

// https://dribbble.com/shots/7234221-Daily-UI-019-Leaderboard/attachments/215148?mode=media

class ApexRanking extends StatefulWidget {
  @override
  _ApexRankingState createState() => _ApexRankingState();
}

class _ApexRankingState extends State<ApexRanking> {
  String centerTitle = "Global Ranking";

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // SafeArea
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                margin: EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0),
                height: 40,
                width: screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.arrow_back_ios, size: 20.0, color: Colors.white),
                    Text(centerTitle,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold)),
                    Icon(Icons.filter_list, size: 20.0, color: Colors.white),
                  ],
                ),
              ),
            ),

            // Container
            Container(
              height: screenHeight - 60,
              width: screenWidth,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: ranking.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 24.0, right: 24.0),
                      height: 150,
                      width: screenWidth,
//                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          // ranking
                          Expanded(
                              flex: 2,
                              child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Text((index + 1).toString(),
                                      style: TextStyle(
                                          color: ranking[index].rankingColor,
                                          fontSize: 32.0,
                                          fontWeight: FontWeight.bold)))),

                          // container
                          Expanded(
                              flex: 12,
                              child: Container(
//                            color: Colors.white,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              ranking[index].backgroundImage),
                                          fit: BoxFit.cover,
                                          colorFilter: ColorFilter.mode(
                                              ranking[index]
                                                  .color
                                                  .withOpacity(0.3),
                                              BlendMode.dstATop))),
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                          flex: 1,
                                          child: Row(
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  SizedBox(width: 8),
                                                  Container(
                                                    height: 32,
                                                    width: 32,
                                                    child: Stack(
                                                      children: <Widget>[
                                                        Container(
                                                            height: 32,
                                                            width: 32,
                                                            decoration: BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                border: Border.all(
                                                                    color: Colors
                                                                        .white,
                                                                    width: 1),
                                                                image: DecorationImage(
                                                                    image: NetworkImage(
                                                                        ranking[index]
                                                                            .profileImage),
                                                                    fit: BoxFit
                                                                        .cover))),
                                                        Positioned(
                                                          bottom: 2,
                                                          right: 0,
                                                          child: Image(
                                                              image: NetworkImage(
                                                                  ranking[index]
                                                                      .home),
                                                              fit: BoxFit.cover,
                                                              height: 8,
                                                              width: 12),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(width: 8),
                                                  Text(ranking[index].id,
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  SizedBox(width: 8),
                                                  Icon(ranking[index].game,
                                                      size: 20.0,
                                                      color: Colors.white)
                                                ],
                                              )
                                            ],
                                          )),
                                      Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 48.0),
                                            child: Row(
                                              children: <Widget>[
                                                Expanded(
                                                    flex: 1,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Text("Kills",
                                                            style: TextStyle(
                                                                color: ranking[
                                                                        index]
                                                                    .color,
                                                                fontSize: 12.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                        Text(
                                                            ranking[index].kill,
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                      ],
                                                    )),
                                                Expanded(
                                                    flex: 1,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Text("Damage",
                                                            style: TextStyle(
                                                                color: ranking[
                                                                        index]
                                                                    .color,
                                                                fontSize: 12.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                        Text(
                                                            ranking[index]
                                                                .damage,
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                      ],
                                                    )),
                                              ],
                                            ),
                                          )),
                                      Expanded(
                                          flex: 1,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 48.0),
                                              child: Row(
                                                children: <Widget>[
                                                  Expanded(
                                                      flex: 1,
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Text("Match Played",
                                                              style: TextStyle(
                                                                  color: ranking[
                                                                          index]
                                                                      .color,
                                                                  fontSize:
                                                                      12.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                          Text(
                                                              ranking[index]
                                                                  .matchPlayed,
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      16.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                        ],
                                                      )),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Text("Wins",
                                                              style: TextStyle(
                                                                  color: ranking[
                                                                          index]
                                                                      .color,
                                                                  fontSize:
                                                                      12.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                          Text(
                                                              ranking[index]
                                                                  .wins,
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      16.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                        ],
                                                      )),
                                                ],
                                              ))),
                                      SizedBox(height: 8),
                                    ],
                                  ))),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
