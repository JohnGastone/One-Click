// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tunzaaecommerce/models/items_model.dart';

import 'package:google_fonts/google_fonts.dart';

class CartItems extends StatelessWidget {
  CartItems({super.key});
  List<Item> displayList = List.from(ItemList.displayList);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 1; i < 9; i++)
          Container(
            height: 110,
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Radio(
                  value: "",
                  groupValue: "",
                  activeColor: Color.fromARGB(255, 126, 132, 199),
                  onChanged: (String? value) {},
                ),
                Container(
                  height: 65,
                  width: 65,
                  margin: const EdgeInsets.only(right: 15),
                  child: InkWell(
                    child: Image.asset('images/$i.png'),
                    onTap: () {
                      Navigator.pushNamed(context, 'itemPage');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        displayList[i].title,
                        style: GoogleFonts.spaceMono(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF4C53A5)),
                      ),
                      Text(
                        displayList[i].price,
                        style: GoogleFonts.spaceMono(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(252, 215, 160, 0),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.delete_outline,
                        color: Colors.blueGrey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 10)
                                ]),
                            child: Icon(
                              CupertinoIcons.plus,
                              size: 16,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 1),
                            child: Text(
                              '01',
                              style: GoogleFonts.spaceMono(
                                  fontSize: 14,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 10)
                                ]),
                            child: Icon(
                              CupertinoIcons.minus,
                              size: 16,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}
