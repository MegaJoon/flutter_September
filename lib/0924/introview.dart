import 'package:flutter/material.dart';
import 'package:flutter_dribbble/0923/food_delivery.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

// https://github.com/duytq94/flutter-intro-slider
// https://dribbble.com/shots/6978486-Bookmark-App-Intro-Screen/attachments

class IntroView extends StatefulWidget {
  @override
  _IntroViewState createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  List<Slide> slides = new List();
  Color _color = Color.fromRGBO(255, 205, 51, 1);
  Color _descriColor = Color.fromRGBO(159, 126, 23, 1);

//  Function goToTab;

  @override
  void initState() {
    super.initState();

    // list 1.
    slides.add(new Slide(
        title: "Convenient use",
        styleTitle: TextStyle(
            color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
        description: "this is list 1.",
        styleDescription: TextStyle(color: _descriColor, fontSize: 24.0),
        pathImage: "assets/list1_image.png",
        backgroundColor: _color));

    // list 2.
    slides.add(new Slide(
        title: "list 2",
        description: "this is list 2.",
        pathImage: "assets/list2_image.png",
        backgroundColor: _color));

    // list 3.
    slides.add(new Slide(
        title: "list 3",
        description: "this is list 3.",
        pathImage: "assets/list3_image.png",
        backgroundColor: _color));
  }

  void onDonePress() {
//    this.goToTab(0);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => FoodDelivery()));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: this.slides,

      // Skip button
//      renderSkipBtn: this.renderSkipBtn(),
//      colorSkipBtn: Colors.deepPurpleAccent,
//      highlightColorSkipBtn: Colors.blue,
      isShowSkipBtn: false,

      // Next button
      renderNextBtn: this.renderNextBtn(),

      // Prev button
      renderPrevBtn: this.renderPrevBtn(),
//      colorPrevBtn: Colors.white,
      isShowPrevBtn: true,

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
//      colorDoneBtn: Colors.deepPurpleAccent,
      highlightColorDoneBtn: Colors.blue,
      onDonePress: this.onDonePress,

      // Dot indicator
      // all dot
      colorDot: Colors.white,
      sizeDot: 13.0,
      colorActiveDot: Colors.black,
//      typeDotAnimation: dotSliderAnimation.,

      // Tabs
      listCustomTabs: this.renderListCustomTabs(),
      backgroundColorAllSlides: _color,
//      refFuncGoToTab: (reffunc) {
//        this.goToTab = reffunc;
//      },

      shouldHideStatusBar: true,
      onTabChangeCompleted: this.onTabChangeCompleted,
    );
  }

  // body container
  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = new List();
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(Container(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          margin: EdgeInsets.only(top: 60.0),
          child: ListView(
            children: <Widget>[
              GestureDetector(
                child: Image.asset(
                  currentSlide.pathImage,
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                child: Text(
                  currentSlide.title,
                  style: currentSlide.styleTitle,
                  textAlign: TextAlign.center,
                ),
                margin: EdgeInsets.only(top: 20.0),
              ),
              Container(
                child: Text(
                  currentSlide.description,
                  style: currentSlide.styleDescription,
                  textAlign: TextAlign.center,
//                    maxLines: 5,
//                    overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        ),
      ));
    }
    return tabs;
  }

//  Widget renderSkipBtn() {
//    return Icon(Icons.skip_next, color: Colors.red);
//  }

  Widget renderNextBtn() {
    return FloatingActionButton(backgroundColor: Colors.black,
        child: Icon(Icons.arrow_forward_ios, color: Colors.white));
  }

  Widget renderPrevBtn() {
    return Icon(Icons.arrow_back_ios, color: Colors.red);
  }

  Widget renderDoneBtn() {
    return Icon(Icons.done, color: Colors.red);
  }

  void onTabChangeCompleted(index) {
    //
  }
}
