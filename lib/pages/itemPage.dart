// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/material.dart';

import '../widgets/itemPageBar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: ListView(
        children: [
          ItemPageBar(),
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              'images/2.png',
              height: 300,
              width: double.infinity,
            ),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 50, bottom: 20),
                      child: Text(
                        'Product Title',
                        style: TextStyle(fontSize: 28),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
