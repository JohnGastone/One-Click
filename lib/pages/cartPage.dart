// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/CartAppBar.dart';
import '../widgets/cartItems.dart';

class cartPage extends StatelessWidget {
  const cartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const cartAppBar(),
          Container(
            height: 700,
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
                color: Color(0xFF4C53A5),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35))),
            child: Column(
              children: [
                CartItems(),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
