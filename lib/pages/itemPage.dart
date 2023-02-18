// ignore_for_file: prefer_const_constructors
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
              'images/1.png',
              height: 300,
            ),
            // child: Arc(
            //   edge: Edge.TOP,
            //   arcType: ArcType.CONVEY,
            //   height: 30,
            //   child: Container(
            //     width: double.infinity,
            //   ),
            // ),
          )
        ],
      ),
    );
  }
}
