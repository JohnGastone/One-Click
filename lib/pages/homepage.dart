// ignore_for_file: prefer_const_constructors, duplicate_ignore, must_be_immutable, prefer_final_fields, non_constant_identifier_names, unused_element, prefer_const_literals_to_create_immutables, unused_field, use_key_in_widget_constructors

import 'package:badges/badges.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tunzaaecommerce/models/items_model.dart';
import 'package:tunzaaecommerce/pages/cartPage.dart';
import 'package:tunzaaecommerce/pages/favorite.dart';
import 'package:tunzaaecommerce/pages/itemPage.dart';
//import 'package:tunzaaecommerce/widgets/home_bar.dart';
import 'package:curved_navigation_bar_with_label/curved_navigation_bar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tunzaaecommerce/pages/profile.dart';

import '../widgets/categoriesWidget.dart';
import '../widgets/itemsWidget.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final TextEditingController _searchController = TextEditingController();
  int _page = 0;
//List<Product> _products = [];
  ScrollController _scrollController = ScrollController();

  var _selectedTab = _SelectedTab.HomePage;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  void updateList(String value) {
    // We will filter our list of movies here
    setState(() {
      displayList = ItemList.items
          .where((element) =>
              element.title.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  List<Item> displayList = List.from(ItemList.displayList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0, // Minimizes the default spacing
        title: SizedBox(
          width: double
              .infinity, // Ensures the container takes all available horizontal space
          child: Center(
            child: Image.asset(
              'images/kwe2.png',
              width: 100, // Adjust width as needed
              height: 120, // Adjust height as needed
              fit: BoxFit.contain, // Ensures the image respects its bounds
            ),
          ),
        ),
      ),
      body: ListView(
        controller: _scrollController,
        // physics: const NeverScrollableScrollPhysics(),
        children: [
          // To add
          // HomeAppBar(),
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
                          onChanged: (value) => updateList(value),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search Item..',
                              hintStyle: GoogleFonts.spaceMono()),
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
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        margin:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        child: Text(
                          "Varieties",
                          style: GoogleFonts.spaceMono(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4C53A5),
                          ),
                        ),
                      ),
                      Badge(
                        badgeContent: Text(
                          "4",
                          style: GoogleFonts.spaceMono(color: Colors.white),
                        ),
                        badgeStyle: BadgeStyle(badgeColor: Colors.grey),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => cartPage(),
                            ));
                          },
                          child: Icon(
                            Icons.shopping_cart,
                            size: 33,
                            color: Color(0xFF4C53A5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //Categories
                CategoriesWidget(),

                //Items
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Best Selling",
                    style: GoogleFonts.spaceMono(
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
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(
          margin: EdgeInsets.only(left: 10, right: 10),
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          dotIndicatorColor: Colors.white,
          unselectedItemColor: Colors.blueGrey,
          backgroundColor: Color.fromARGB(255, 245, 242, 242),
          // enableFloatingNavBar: false,
          onTap: _handleIndexChanged,
          items: [
            /// Home
            DotNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              selectedColor: Color.fromARGB(252, 215, 160, 0),
            ),

            /// Likes
            DotNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 30,
              ),
              selectedColor: Color.fromARGB(252, 215, 160, 0),
            ),

            /// Search
            DotNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                size: 30,
              ),
              selectedColor: Color.fromARGB(252, 215, 160, 0),
            ),

            /// Profile
            DotNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              selectedColor: Color.fromARGB(252, 215, 160, 0),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: constant_identifier_names
enum _SelectedTab { HomePage, FavoriteItems, cartPage, Profile }
