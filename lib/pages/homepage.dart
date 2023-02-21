// ignore_for_file: prefer_const_constructors, duplicate_ignore, must_be_immutable, prefer_final_fields, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tunzaaecommerce/pages/cartPage.dart';
import 'package:tunzaaecommerce/widgets/home_bar.dart';
import 'package:curved_navigation_bar_with_label/curved_navigation_bar.dart';

import '../widgets/categoriesWidget.dart';
import '../widgets/itemsWidget.dart';

class Product {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      price: json['price'].toDouble(),
      description: json['description'],
      category: json['category'],
      image: json['image'],
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  List<Product> _products = [];

  List<Product> get _visibleProducts {
    final searchTerm = _searchController.text;
    if (searchTerm.isEmpty) {
      return _products;
    } else {
      return _products
          .where((product) =>
              product.title.toLowerCase().contains(searchTerm.toLowerCase()))
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            //height: 650,

            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                color: Color(0xFFEDECF2),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: Column(
              children: [
                // Search Widget
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 270,
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search Item..'),
                          controller: _searchController,
                        ),
                      ),
                      Icon(
                        Icons.sort,
                        color: Color.fromARGB(255, 140, 144, 182),
                      )
                    ],
                  ),
                ),

                // Categories Widget
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Varieties",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ),

                //Categories
                CategoriesWidget(
                  // description: '',
                  // price: 2,
                  title: 'Gucci',
                ),

                //Items
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Best Selling",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ),

                ItemsWidget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xFFEDECF2),
        //color: Color.fromARGB(255, 158, 164, 168),
        key: _bottomNavigationKey,
        index: index,
        height: 70.0,
        items: [
          CurvedNavigationBarItem(
            icon: Icon(Icons.home,
                size: 30, color: Color.fromARGB(255, 125, 163, 194)),
            label: "Home",
          ),
          CurvedNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                size: 30,
                color: Color.fromARGB(255, 125, 163, 194),
              ),
              label: "Cart"),
          CurvedNavigationBarItem(
              icon: Icon(Icons.favorite_outline_outlined,
                  size: 30, color: Color.fromARGB(255, 125, 163, 194)),
              label: "Favorite"),
          // CurvedNavigationBarItem(
          //     icon: Icon(Icons.call_split, size: 30), label: "Split"),
          // CurvedNavigationBarItem(
          //     icon: Icon(Icons.perm_identity, size: 30), label: "User"),
        ],
        //backgroundColor: Colors.grey,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (getSelectedWidget) {
          setState(() {
            index = getSelectedWidget;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }

  void setState(Null Function() param0) {}
  int index = 0;
  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = HomePage();
        break;
      case 1:
        widget = const cartPage();
        break;
      default:
        widget = HomePage();
        break;
    }
    return widget;
  }
}
