import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SafeArea(
            left: true,
            top: true,
            child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.indigo),
                onPressed: () {}),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text("Buildings",
                style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 28,
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            height: 610,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.all(16),
                  height: 340,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                items[index].title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                items[index].subTitle,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                      Divider(),
                      Row(
                        children: <Widget>[
                          Icon(Icons.access_alarm, size: 16),
                          SizedBox(width: 8),
                          Text("Working hours"),
                        ],
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: items[index].hours.length,
                          itemBuilder: (context, idx) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(items[index].hours[idx].date),
                                  Text(items[index].hours[idx].time),
                                ],
                              ),
                            );
                          }),
                      SizedBox(height: 16),
                      Row(
                        children: <Widget>[
                          Icon(Icons.network_cell),
                          SizedBox(
                            width: 4,
                          ),
                          Text("floors"),
                          Text(items[index].floor.toString()),
                          Spacer(),
                          Icon(Icons.room_service),
                          Text(items[index].rooms.toString())
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        height: 100,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: items[index].img.length,
                            itemBuilder: (context, i) {
                              return Container(
                                margin: EdgeInsets.only(right: 16),
                                width: 160,
                                decoration: BoxDecoration(
//                                  color: Colors.red,
                                  image: DecorationImage(image: NetworkImage(items[index].img[i]),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class WorkHours {
  final String date;
  final String time;

  WorkHours({this.date, this.time});
}

class Booking {
  final String title;
  final String subTitle;
  final List<WorkHours> hours;
  final int floor;
  final int rooms;
  List<String> img;

  Booking(
      {this.title,
        this.subTitle,
        this.hours,
        this.floor,
        this.rooms,
        this.img});
}

List<Booking> items = [
  Booking(
      title: "Hoffman building",
      subTitle: "Jefferson street, 54",
      hours: [
        WorkHours(date: "Mon - Fri", time: "11.00 am - 6.00 pm"),
        WorkHours(date: "Sat - Sun", time: "9.00 am - 9.00 pm")
      ],
      floor: 6,
      rooms: 45,
      img: [
        "https://github.com/flutter/plugins/raw/master/packages/video_player/doc/demo_ipod.gif?raw=true"
            "https://pixabay.com/photos/monopoly-canadian-game-playing-2636268/",
      ]),
  Booking(
      title: "Trustcorp building",
      subTitle: "Lincoln street, 182",
      hours: [
        WorkHours(date: "Mon - Sat", time: "Day and night"),
      ],
      floor: 25,
      rooms: 159,
      img: [
        "https://pixabay.com/photos/bernikla-canadian-goose-bird-4240160/",
        "https://iso.500px.com/wp-content/uploads/2015/10/lohi_cover.jpeg",
      ])
];
