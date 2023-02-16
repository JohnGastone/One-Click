// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 9; i++)
            //for (int j = 1; j < 8; j++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    // i variable changes the picture using the created for loop
                    "images/$i.png",
                    width: 60,
                    height: 60,
                  ),
                  Text(
                    "Skonkinko",
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}
