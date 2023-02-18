import 'package:flutter/material.dart';
import 'package:tunzaaecommerce/pages/cartPage.dart';
import 'package:tunzaaecommerce/pages/homepage.dart';
import 'package:tunzaaecommerce/pages/itemPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": ((context) => HomePage()),
        "cartPage": ((context) => const cartPage()),
        "itemPage": ((context) => ItemPage()),
      },
    );
  }
}
