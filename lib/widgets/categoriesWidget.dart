import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../data/data_bestSelling.dart';
import '../models/categories_model.dart';
import '../models/items_model.dart';

class CategoriesWidget extends StatelessWidget {
  CategoriesWidget({super.key});
  List<Category1> displayCategories = List.from(CategoryList.displayCategories);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(displayCategories.length, (index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "images/${index + 1}.png", // Assuming you have images named 1.png, 2.png, etc.
                  width: 60,
                  height: 60,
                ),
                Text(
                  displayCategories[index].title,
                  style:
                      GoogleFonts.spaceMono(fontSize: 20, color: Colors.grey),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}



// // ignore_for_file: prefer_const_constructors, unused_import, file_names, must_be_immutable
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import '../data/data_bestSelling.dart';
// import '../models/categories_model.dart';
// import '../models/items_model.dart';

// // class Product {
// //   final String name;
// //   final double price;

// //   Product({required this.name, required this.price});
// // }

// class CategoriesWidget extends StatelessWidget {
//   CategoriesWidget({super.key});
//   // final String description;
//   // final double price;
//   List<Category1> displayCategories = List.from(CategoryList.displayCategories);

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: [
//           for (int i = 1; i < 9; i++)
//             //for (int j = 1; j < 8; j++)
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 8.0),
//               padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//               decoration: BoxDecoration(
//                   color: Colors.white, borderRadius: BorderRadius.circular(20)),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   for (int j = 1; j < 2; j++)
//                     Image.asset(
//                       // i variable changes the picture using the created for loop
//                       "images/$i.png",
//                       width: 60,
//                       height: 60,
//                     ),
//                   Text(
//                     displayCategories[i].title,
//                     style:
//                         GoogleFonts.spaceMono(fontSize: 20, color: Colors.grey),
//                   )
//                 ],
//               ),
//             )
//         ],
//       ),
//     );
//   }
// }
