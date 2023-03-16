// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(0, 3))
          ]),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          '\$ 50',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: Colors.blueAccent),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(CupertinoIcons.cart_badge_plus),
          label: Text(
            "Add to cart",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.grey),
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 13, horizontal: 15))),
        )
      ]),
    );
  }
}
