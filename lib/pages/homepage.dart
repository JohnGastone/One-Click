// ignore_for_file: prefer_const_constructors, duplicate_ignore, must_be_immutable, prefer_final_fields, non_constant_identifier_names, unused_element, prefer_const_literals_to_create_immutables, unused_field, use_key_in_widget_constructors

import 'package:badges/badges.dart';
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

import '../widgets/categoriesWidget.dart';
import '../widgets/itemsWidget.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  int _page = 0;
//List<Product> _products = [];
  final _pageController = PageController(initialPage: 2);
  ScrollController _scrollController = ScrollController();

  int _selectedIndex = 0;

  int maxCount = 5;

  /// widget list for notch bar
  final List<Widget> bottomBarPages = [
    HomePage(),
    const cartPage(),
    FavoriteItems(),
    ItemPage(),
  ];

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
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Color.fromARGB(252, 215, 160, 0),
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Color.fromARGB(255, 194, 187, 187),
              color: Color(0xFF4C53A5),
              tabs: [
                GButton(
                  icon: CupertinoIcons.home,
                  text: 'Home',
                  textStyle: GoogleFonts.spaceMono(fontSize: 12),
                ),
                GButton(
                  icon: CupertinoIcons.heart,
                  text: 'Favorites',
                  textStyle: GoogleFonts.spaceMono(fontSize: 12),
                ),
                GButton(
                  icon: CupertinoIcons.cart_fill,
                  text: 'Cart',
                  textStyle: GoogleFonts.spaceMono(fontSize: 12),
                ),
                GButton(
                  icon: CupertinoIcons.person_alt,
                  text: 'Profile',
                  textStyle: GoogleFonts.spaceMono(fontSize: 12),
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
