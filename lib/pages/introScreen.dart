// ignore_for_file: use_key_in_widget_constructors, file_names
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
      title: 'Register',
      subTitle: 'Register by filling the required information.',
      imageUrl: 'images/registration.png',
    ),
    Introduction(
      title: 'Making Order',
      subTitle: 'Browse the menu and order directly from the application.',
      imageUrl: 'images/cart.png',
    ),
    Introduction(
      title: 'Waiting for delivery',
      subTitle:
          'Your order will be immediately collected, packed and delivered.',
      imageUrl: 'images/deli2.jpg',
    ),
    Introduction(
      title: 'Delivery',
      subTitle: 'Receive your order in no time.',
      imageUrl: 'images/deli.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      backgroudColor: Colors.grey,
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
