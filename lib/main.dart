import 'package:flutter/material.dart';
import 'package:flutter_dribbble/0908/profile_ui.dart';
import 'package:flutter_dribbble/0915/scooters.dart';
import 'package:flutter_dribbble/0914/seekbar.dart';
import 'package:flutter_dribbble/0907/strawberry_donut.dart';
import 'package:flutter_dribbble/0904/swipe_task.dart';
import 'package:flutter_dribbble/0906/travel_app.dart';
import 'package:flutter_dribbble/0908/video_game_message_app.dart';
import 'package:flutter_dribbble/0914/video_profile.dart';
import 'package:flutter_dribbble/0914/video_profile2.dart';
import 'package:flutter_dribbble/0911/weather_app.dart';
import 'package:flutter_dribbble/0915/anxious_control.dart';
import 'package:flutter_dribbble/0907/art_selling_app.dart';
import 'package:flutter_dribbble/0908/art_selling_app2.dart';
import 'package:flutter_dribbble/0916/beer.dart';
import 'package:flutter_dribbble/0909/booking_app.dart';
import 'package:flutter_dribbble/0902/booking_page.dart';
import 'package:flutter_dribbble/0903/calculator.dart';
import 'package:flutter_dribbble/0913/chummy_ui.dart';
import 'package:flutter_dribbble/0905/cinema_ticket.dart';
import 'package:flutter_dribbble/0916/countdown.dart';
import 'package:flutter_dribbble/0907/crypto_app.dart';
import 'package:flutter_dribbble/0910/currency_wallet.dart';
import 'package:flutter_dribbble/0911/curve_ex.dart';
import 'package:flutter_dribbble/0914/custom_tabbar_test.dart';
import 'package:flutter_dribbble/0916/dashboard.dart';
import 'package:flutter_dribbble/0911/ecommerce_crm.dart';
import 'package:flutter_dribbble/0912/ecommerce_vr.dart';
import 'package:flutter_dribbble/0902/fruit_app.dart';
import 'package:flutter_dribbble/0916/horizontal_tab.dart';
import 'package:flutter_dribbble/0900/important_task.dart';
import 'package:flutter_dribbble/0916/intro_page_example.dart';
import 'package:flutter_dribbble/0911/language_learning.dart';
import 'package:flutter_dribbble/0905/manage_money.dart';
import 'package:flutter_dribbble/0908/curve.dart';
import 'package:flutter_dribbble/0924/schoolmatching_intro.dart';
import '0917/walletapp02.dart';
import '0918/car_rental.dart';
import '0919/bookmark.dart';
import '0921/travelapp02.dart';
import '0922/example.dart';
import '0922/meditation.dart';
import '0922/room_booking.dart';
import '0922/task_manage.dart';
import '0923/food_delivery.dart';
import '0923/nike_mobile.dart';
import '0924/bookmark_intro.dart';
import '0924/bottomnavigator.dart';
import '0924/delivery_intro.dart';
import '0924/intro_aglo.dart';
import '0924/introview.dart';
import '0924/school_matching.dart';
import '0930/travel_plan.dart';

// https://flutterawesome.com/a-beautiful-and-animated-bottom-navigation/
// https://medium.com/flutter-community/everything-you-need-to-know-about-flutter-page-route-transition-9ef5c1b32823

//void main() => runApp(MaterialApp(home: SchoolMatchingIntro()));

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      home: FreshFruit(),  //
//      home: ImportantTask(),  //
//      home: BookingPage(),  //  09-02
//      home: FruitApp(),  // 09-02
//      home: Calculator(),  // 09-03
//      home: SwipeTask(),  // 09-04
//      home: ManageMoney(),  // 09-05
//      home: CinemaTicket(),  // 09-05
//      home: TravelApp(),  // 09-06
//      home: ArtSellingApp(),  // 09-07
//      home: CryptoApp(),  // 09-07
//      home: StrawberryDonut(),  // 09-07
//      home: VideoGameMessageApp(),  // 09-08
//      home: CurvePage(),  // 09-08
//      home: ArtSellingApp2(),  // 09-08
//      home: ProfileUI(),  // 09-08
//      home: BookingApp(),  // 09-09
//    home: CurrencyWallet(),  // 09-10
//    home: WeatherApp(),  // 09-11
//    home: EcommerceCRM() , // 09-11
//    home: CurveEx(),  // 09-11
//    home: LanguageLearning(),  // 09-11
//    home: EcommerceVR(),  // 09-12
//    home: ChummyUI(),  // 09-13
//    home: VideoProfile(),  // 09-14
//    home: VideoProfile2() , // 09-14
//    home: SeekbarTest() , // 09-14
//    home: TabbarTest() , // 09-14
//    home: Scooters()  ,// 09-15
//    home: AnxiousControl(), // 09-15
//    home: HorizontalTabLayout() , // 09-16
//    home: BeerUI(),  // 09-16
//    home: CountDownApp(),  // 09-16
//      home: IntroPageEx(), // 09-16
//      home: DashboardApp(), // 09-16
//      home: WalletApp02(), // 09-17, 18
//      home: CarRentalApp(), // 09-18
//      home: BookMarkApp(), // 09-19
//      home: TravelApp02(), // 09-21
//      home: Example(), // 09-22
//      home: MeditationApp(), // 09-22
//      home: RoomBooking(), // 09-22
//      home: TaskManageApp(), // 09-22
//      home: NikeMobile(), // 09-23
//      home: FoodDelivery(), // 09-23
//      home: IntroView(), // 09-24
//      home: BookmarkIntro(), // 09-24
//      home: SchoolMatching(), // 09-24
//      home: SchoolMatchingIntro(), // 09-24
//    home: DeliveryIntro(), // 09-24
//    home: IntroAglo(), // 09-24
//      home: Bottom_Navigator(), // 09-24
//      home: EcoMuseumApp(),  // 0925
//      home: EcoMuseumApp2(),  // 0925
//      home: EcoMuseumApp3(),  // 0925
//      home: MovieApp(),  // 0926
//      home: MovieApp03(),  // 0926
//      home: SignInUI(),  // 0926
//      home: SignUpUI(),  // 0926
//      home: FoodDelivery(),  // 0927
//      home: FindApartment(),  // 0927
//      home: TravelApp(),  // 0927
//      home: ApexRanking(),  // 0928
//      home: MichalApp(),  // 0928
//      home: DietApp(),  // 0928
//      home: Example(),  // 0930
//      home: MovieInterfaceApp(),  // 0930
      home: TravelPlan(), // 0930
//      home: TravelPlan2(),  // 0930
    );
  }
}
