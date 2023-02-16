// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import '../widgets/CartAppBar.dart';

class cartPage extends StatelessWidget {
  const cartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [cartAppBar()],
      ),
    );
  }
}
