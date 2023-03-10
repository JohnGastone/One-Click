// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/intro_app.dart';
import 'package:tunzaaecommerce/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Color.fromARGB(23, 23, 32, 43),
        // backgroundColor: Color.fromARGB(255, 36, 34, 34),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TestScreen(),
    );
  }
}

class TestScreen extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      title: 'Register.',
      titleTextStyle: TextStyle(
          fontSize: 28,
          color: Color.fromARGB(255, 92, 120, 134),
          fontWeight: FontWeight.bold),
      subTitle: 'Register by filling the required information.',
      subTitleTextStyle: TextStyle(
          color: Colors.black54, fontWeight: FontWeight.w500, fontSize: 18),
      imageUrl: 'images/registration.png',
    ),
    Introduction(
      title: 'Place Order.',
      titleTextStyle: TextStyle(
          fontSize: 28,
          color: Color.fromARGB(255, 92, 120, 134),
          fontWeight: FontWeight.bold),
      subTitle: 'Browse the menu and order directly from the application.',
      subTitleTextStyle: TextStyle(
          color: Colors.black54, fontWeight: FontWeight.w500, fontSize: 18),
      imageUrl: 'images/cart.png',
    ),
    Introduction(
      title: 'Wait for delivery.',
      titleTextStyle: TextStyle(
          fontSize: 28,
          color: Color.fromARGB(255, 92, 120, 134),
          fontWeight: FontWeight.bold),
      subTitle:
          'Your order will be immediately collected, packed and delivered.',
      subTitleTextStyle: TextStyle(
          color: Colors.black54, fontWeight: FontWeight.w500, fontSize: 18),
      imageUrl: 'images/waiting.png',
    ),
    Introduction(
      title: '....>>>',
      titleTextStyle: TextStyle(
          fontSize: 28,
          color: Color.fromARGB(255, 92, 120, 134),
          fontWeight: FontWeight.bold),
      subTitle: 'On the run.',
      subTitleTextStyle: TextStyle(
          color: Colors.black54, fontWeight: FontWeight.w500, fontSize: 18),
      imageUrl: 'images/deli2.jpg',
    ),
    Introduction(
      title: 'Receive your order.',
      titleTextStyle: TextStyle(
          fontSize: 28,
          color: Color.fromARGB(255, 92, 120, 134),
          fontWeight: FontWeight.bold),
      subTitle: 'Receive your order in no time.',
      subTitleTextStyle: TextStyle(
          color: Colors.black54, fontWeight: FontWeight.w500, fontSize: 18),
      imageUrl: 'images/deli.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      backgroudColor: Color.fromARGB(255, 145, 218, 208),
      introductionList: list,
      onTapSkipButton: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ), //MaterialPageRoute
        );
      },
      // foregroundColor: Colors.red,
    );
  }
}
