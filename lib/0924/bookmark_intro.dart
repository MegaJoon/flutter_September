import 'package:flutter/material.dart';
import 'package:flutter_dribbble/0923/food_delivery.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

// https://dribbble.com/shots/6978486-Bookmark-App-Intro-Screen/attachments
// https://github.com/duytq94/flutter-intro-slider

class BookmarkIntro extends StatefulWidget {
  @override
  _BookmarkIntroState createState() => _BookmarkIntroState();
}

class _BookmarkIntroState extends State<BookmarkIntro> {
  List<Slide> slides = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // slide 1.
    slides.add(new Slide(
        title: "Convenient use",
        styleTitle: TextStyle(
            fontSize: 28.0, color: Colors.black, fontWeight: FontWeight.bold),
        description:
            "Everything for comfortable reading of your favorite books",
        styleDescription: TextStyle(color: Colors.grey[700], fontSize: 20.0),
        pathImage: "assets/list1_image.png"));

    // slide 2.
    slides.add(new Slide(
        title: "Search",
        styleTitle: TextStyle(
            fontSize: 28.0, color: Colors.black, fontWeight: FontWeight.bold),
        description:
            "Easy search by all categories and authors from all over the world",
        styleDescription: TextStyle(color: Colors.grey[700], fontSize: 20.0),
        pathImage: "assets/list2_image.png"));

    // slide 3.
    slides.add(new Slide(
        title: "Online listening",
        styleTitle: TextStyle(
            fontSize: 28.0, color: Colors.black, fontWeight: FontWeight.bold),
        description:
            "Different formats for listening to books with labels and subtitles",
        styleDescription: TextStyle(color: Colors.grey[700], fontSize: 20.0),
        pathImage: "assets/list3_image.png"));
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      slides: this.slides,

      // skip
      isShowSkipBtn: false,

      // prev
      isShowPrevBtn: true,
      renderPrevBtn: this.renderPrevBtn(),

      // next
      renderNextBtn: this.renderNextBtn(),

      // done
      isShowDoneBtn: true,
      renderDoneBtn: this.renderNextBtn(),
      // same
      onDonePress: this.onDonePress,

      // dot
      colorDot: Colors.white,
      colorActiveDot: Colors.black,
      sizeDot: 12.0,

      //
      shouldHideStatusBar: false,

      // container
      listCustomTabs: this.renderListCustomTabs(),
      backgroundColorAllSlides: Color.fromRGBO(255, 205, 51, 1),
    );
  }

  Widget renderPrevBtn() {
    return FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(Icons.arrow_left, size: 32.0, color: Colors.black));
  }

  Widget renderNextBtn() {
    return FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.arrow_right, size: 32.0, color: Colors.white));
  }

  void onDonePress() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => FoodDelivery()));
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = new List();
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(Container(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          margin: EdgeInsets.only(top: 60.0, bottom: 60.0),
          child: ListView(
            children: <Widget>[
              GestureDetector(
                child: Image.asset(
                  currentSlide.pathImage,
                  width: 200.0,
                  height: 350.0,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                child: Text(
                  currentSlide.title,
                  style: currentSlide.styleTitle,
                  textAlign: TextAlign.center,
                ),
                margin: EdgeInsets.only(top: 60.0),
              ),
              Container(
                child: Text(
                  currentSlide.description,
                  style: currentSlide.styleDescription,
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                margin: EdgeInsets.only(top: 40.0, left: 78.0, right: 78.0),
              )
            ],
          ),
        ),
      ));
    }
    return tabs;
  }
}
