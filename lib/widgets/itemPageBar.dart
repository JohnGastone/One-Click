// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ItemPageBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 30,
              color: Color(0xFF4C53A5),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text('Product X',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4C53A5),
                )),
          ),
          Icon(
            Icons.favorite_border_outlined,
            size: 30,
            color: Colors.pink,
          )
        ],
      ),
    );
  }
}
