// ignore_for_file: prefer_const_constructors, file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tunzaaecommerce/models/items_model.dart';

class ItemsWidget extends StatelessWidget {
  ItemsWidget({super.key});

  List<Item> displayList = List.from(ItemList.displayList);
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      // It disable the scroll functionality of  of grid view and enables the home page to scroll in list view
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 1; i <= 10; i++)
          Expanded(
            child: Container(
              height: 330,
              width: 210,
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color(0xFF4C53A5),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        "-50%",
                        style: GoogleFonts.spaceMono(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Icon(
                      Icons.favorite_border_sharp,
                      color: Color.fromARGB(252, 215, 160, 0),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'itemPage');
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Image.asset(
                      "images/$i.png",
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    displayList[i].title,
                    style: GoogleFonts.spaceMono(
                        fontSize: 18,
                        color: const Color(0xFF4C53A5),
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    displayList[i].description,
                    style: GoogleFonts.spaceMono(
                        fontSize: 12,
                        color: const Color(0xFF4C53A5),
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          displayList[i].price,
                          style: GoogleFonts.spaceMono(
                              fontSize: 13,
                              color: Color.fromARGB(252, 215, 160, 0),
                              fontWeight: FontWeight.w500),
                        ),
                        Icon(Icons.shopping_cart_checkout_outlined,
                            color: Color(
                              0xFF4C53A5,
                            ))
                      ]),
                ),
              ]),
            ),
          ),
      ],
    );
  }
}
