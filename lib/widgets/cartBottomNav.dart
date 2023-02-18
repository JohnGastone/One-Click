// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total :',
                    style: TextStyle(
                        color: Color(0xFF4C53A5),
                        fontSize: 22,
                        fontWeight: FontWeight.bold)),
                Text('\$ 370',
                    style: TextStyle(
                        color: Color(0xFF4C53A5),
                        fontSize: 22,
                        fontWeight: FontWeight.bold))
              ],
            ),
            Container(
              height: 50,
              alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xFF4C53A5),
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                'Check Out',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
