import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// https://dribbble.com/shots/6045367-Delivery-App/attachments

class DeliveryIntro extends StatefulWidget {
  @override
  _DeliveryIntroState createState() => _DeliveryIntroState();
}

class _DeliveryIntroState extends State<DeliveryIntro> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();
    // list 1.
    slides.add(new Slide(
        title: "Deliveries on your time",
        styleTitle: TextStyle(
            color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold),
        description:
            "Fetch provides a safe, reliable and convenient way to get your online orders.",
        styleDescription: TextStyle(color: Colors.grey, fontSize: 16.0),
        pathImage: "assets/delivery1.png",
        backgroundColor: Colors.grey[300]));

    // list 2.
    slides.add(new Slide(
        title: "Address change",
        styleTitle: TextStyle(
            color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold),
        description:
            "To get your package through Fetch, simply ship yout package to your local Fetch warehouse with the provided address.",
        styleDescription: TextStyle(color: Colors.grey, fontSize: 16.0),
        pathImage: "assets/delivery2.png",
        backgroundColor: Colors.grey[300]));

    // list 3.
    slides.add(new Slide(
        title: "Choose a convenint delivery window",
        styleTitle: TextStyle(
            color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold),
        description: "",
//            styleDescription: TextStyle(color: Colors.grey, fontSize: 20.0),
        pathImage: "assets/delivery3.png",
        backgroundColor: Colors.grey[300]));
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      //
      slides: this.slides,

      isShowSkipBtn: false,
      isScrollable: true,
      isShowPrevBtn: false,

      // Next btn
      renderNextBtn: renderNextBtn(),

      // Done btn
      isShowDoneBtn: true,
      renderDoneBtn: renderDoneBtn(),

      // Dot
      colorDot: Colors.grey,
      colorActiveDot: Colors.blue,
      sizeDot: 12.0,

      shouldHideStatusBar: false,
      listCustomTabs: this.renderListCustomTabs(),
      backgroundColorAllSlides: Colors.grey[300],
    );
  }

  Widget renderNextBtn() {
    // Navigator ~~
    return Container();
  }

  Widget renderDoneBtn() {
    // Navigator ~~
    return Icon(FontAwesomeIcons.angleDoubleRight,
        size: 24.0, color: Colors.blue);
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = new List();
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(Container(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          child: ListView(
            children: <Widget>[
              GestureDetector(
                child: Image.asset("assets/dog.png",
                    width: 100, height: 60, fit: BoxFit.contain),
              ),
              Container(
                  child: Text("fetch",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center)),
              Container(
                  margin: EdgeInsets.only(top: 32.0),
                  child: Text(currentSlide.title,
                      style: currentSlide.styleTitle,
                      textAlign: TextAlign.center)),
              Container(
                  margin: EdgeInsets.only(
                      top: 16.0, left: 85.0, right: 85.0, bottom: 48.0),
                  child: Text(currentSlide.description,
                      style: currentSlide.styleDescription,
                      textAlign: TextAlign.center, maxLines: 3, overflow: TextOverflow.ellipsis)),
              GestureDetector(
                child: Image.asset(currentSlide.pathImage,
                    width: 300, height: 300, fit: BoxFit.contain),
              ),
            ],
          ),
        ),
      ));
    }
    return tabs;
  }
}
