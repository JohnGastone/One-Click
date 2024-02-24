// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tunzaaecommerce/pages/homepage.dart';

class cartAppBar extends StatelessWidget {
  const cartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => HomePage(),
              ));
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              size: 30,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Cart",
              style: GoogleFonts.spaceMono(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4C53A5)),
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              // Navigator.pop(context);
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) => HomePage(),
              //));
            },
            child: const Icon(
              Icons.more_vert,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
