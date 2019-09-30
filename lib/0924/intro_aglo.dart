import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

// https://dribbble.com/shots/3045675-Intro-screens-for-Aglo-app-3

class IntroAglo extends StatefulWidget {
  @override
  _IntroAgloState createState() => _IntroAgloState();
}

class _IntroAgloState extends State<IntroAglo> {
  List<Slide> slides = new List();
  Color _color = Color.fromRGBO(84, 106, 195, 1);

  @override
  void initState() {
    super.initState();

    // empty slides
    slides.add(new Slide(
        title: "1",
        styleTitle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24.0),
        description:
        "1",
        styleDescription: TextStyle(color: Colors.black, fontSize: 16.0),
        pathImage: "assets/aglo1.jpeg",
        backgroundColor: Colors.white));
    slides.add(new Slide(
        title: "1",
        styleTitle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24.0),
        description:
        "1",
        styleDescription: TextStyle(color: Colors.black, fontSize: 16.0),
        pathImage: "assets/aglo1.jpeg",
        backgroundColor: Colors.white));
    slides.add(new Slide(
        title: "1",
        styleTitle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24.0),
        description:
        "1",
        styleDescription: TextStyle(color: Colors.black, fontSize: 16.0),
        pathImage: "assets/aglo1.jpeg",
        backgroundColor: Colors.white));

    // slide 1.
    slides.add(new Slide(
        title: "Find Mission",
        styleTitle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24.0),
        description:
            "Find paid Missions at nearby shops that you would like to complete",
        styleDescription: TextStyle(color: Colors.black, fontSize: 16.0),
        pathImage: "assets/aglo1.jpeg",
        backgroundColor: Colors.white));

    // slide 2.
    slides.add(new Slide(
        title: "Get Paid",
        styleTitle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24.0),
        description:
            "Submit Mission for review. On successful review, cash and points will be paid into your PayPal account.",
        styleDescription: TextStyle(color: Colors.black, fontSize: 16.0),
        pathImage: "assets/aglo2.jpeg",
        backgroundColor: Colors.white));

    // empty slides
    slides.add(new Slide(
        title: "1",
        styleTitle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24.0),
        description:
        "1",
        styleDescription: TextStyle(color: Colors.black, fontSize: 16.0),
        pathImage: "assets/aglo1.jpeg",
        backgroundColor: Colors.white));
    slides.add(new Slide(
        title: "1",
        styleTitle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24.0),
        description:
        "1",
        styleDescription: TextStyle(color: Colors.black, fontSize: 16.0),
        pathImage: "assets/aglo1.jpeg",
        backgroundColor: Colors.white));
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: this.slides,

      // Skip button
      isShowSkipBtn: true,
      renderSkipBtn: renderSkipBtn(),

      // Next button
      isScrollable: true,
      renderNextBtn: renderNextBtn(),

      // Prev button
      isShowPrevBtn: false,

      // Done button
      isShowDoneBtn: true,
      renderDoneBtn: renderDoneBtn(),

      // Dot
      sizeDot: 12.0,
      colorActiveDot: _color,
      colorDot: Colors.grey,

      shouldHideStatusBar: true,

      // List
      listCustomTabs: this.renderListCustomTabs(),
      backgroundColorAllSlides: Colors.white,
    );
  }

  Widget renderSkipBtn() {
    return Text("SKIP", style: TextStyle(color: _color, fontSize: 16.0));
  }

  Widget renderNextBtn() {
    return Icon(Icons.arrow_forward, color: _color, size: 24.0);
  }

  Widget renderDoneBtn() {
    return Text("DONE", style: TextStyle(color: _color, fontSize: 16.0));
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = new List();
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              child: Image(
                  image: AssetImage(currentSlide.pathImage), fit: BoxFit.cover),
            ),
            Container(
                margin: EdgeInsets.only(top: 24.0, bottom: 16.0),
                child: Text(currentSlide.title,
                    style: currentSlide.styleTitle,
                    textAlign: TextAlign.center)),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 72.0),
                child: Text(currentSlide.description,
                    style: currentSlide.styleDescription,
                    textAlign: TextAlign.center,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis)),
          ],
        ),
      ));
    }
    return tabs;
  }
}
