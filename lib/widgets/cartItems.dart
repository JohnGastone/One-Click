// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItems extends StatelessWidget {
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
                  activeColor: const Color(0xFF4C53A5),
                  onChanged: (String? value) {},
                ),
                Container(
                  height: 70,
                  width: 70,
                  margin: const EdgeInsets.only(right: 15),
                  child: Image.asset('images/$i.png'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Product Title",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF4C53A5)),
                      ),
                      const Text(
                        "\$ 50",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w400),
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
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              '01',
                              style: TextStyle(
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
