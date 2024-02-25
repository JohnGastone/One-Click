// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemPageBar extends StatelessWidget {
  const ItemPageBar({super.key});

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
              color: Colors.blueGrey,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text('Product X',
                style: GoogleFonts.spaceMono(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                )),
          ),
          SizedBox(
            width: 140,
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
