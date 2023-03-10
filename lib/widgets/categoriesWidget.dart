// ignore_for_file: prefer_const_constructors, unused_import
import 'package:flutter/material.dart';
import '../data/data_bestSelling.dart';
import '../models/items_model.dart';

// class Product {
//   final String name;
//   final double price;

//   Product({required this.name, required this.price});
// }

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    Key? key,
    required this.title,
    // required this.description,
    // required this.price,
  }) : super(key: key);

  final String title;
  // final String description;
  // final double price;

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
                  for (int j = 1; j < 2; j++)
                    Image.asset(
                      // i variable changes the picture using the created for loop
                      "images/$i.png",
                      width: 60,
                      height: 60,
                    ),
                  Text(
                    title,
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}
