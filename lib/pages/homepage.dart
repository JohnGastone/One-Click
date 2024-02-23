// ignore_for_file: prefer_const_constructors, duplicate_ignore, must_be_immutable, prefer_final_fields, non_constant_identifier_names, unused_element, prefer_const_literals_to_create_immutables, unused_field, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tunzaaecommerce/pages/cartPage.dart';
import 'package:tunzaaecommerce/pages/favorite.dart';
import 'package:tunzaaecommerce/pages/itemPage.dart';
import 'package:tunzaaecommerce/widgets/home_bar.dart';
import 'package:curved_navigation_bar_with_label/curved_navigation_bar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final TextEditingController _searchController = TextEditingController();
  int _page = 0;
  List<Product> _products = [];
  final _pageController = PageController(initialPage: 2);
  int _selectedIndex = 0;

  int maxCount = 5;

  /// widget list for notch bar
  final List<Widget> bottomBarPages = [
    HomePage(),
    const cartPage(),
    FavoriteItems(),
    ItemPage(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

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

  void _handleIndexChanged(int i) {
    setState(() {});
  }

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static List<Widget> _widgetOptions = <Widget>[
    Text(
      '',
      style: optionStyle,
    ),
    Text(
      '',
      style: optionStyle,
    ),
    Text(
      '',
      style: optionStyle,
    ),
    Text(
      '',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        controller: _pageController,
        // physics: const NeverScrollableScrollPhysics(),
        children: [
          Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          // To add
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
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Varieties",
                    style: GoogleFonts.spaceMono(
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
              activeColor: Color.fromARGB(255, 235, 130, 130),
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Color.fromARGB(255, 194, 187, 187),
              color: Color(0xFF4C53A5),
              tabs: [
                GButton(
                  icon: CupertinoIcons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: CupertinoIcons.heart,
                  text: 'Favorites',
                ),
                GButton(
                  icon: CupertinoIcons.cart_fill,
                  text: 'Cart',
                ),
                GButton(
                  icon: CupertinoIcons.person_alt,
                  text: 'Profile',
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
      // bottomNavigationBar: (bottomBarPages.length <= maxCount)
      //     ? AnimatedNotchBottomBar(
      //         pageController: _pageController,
      //         color: Colors.white,
      //         showLabel: false,
      //         notchColor: Colors.blueGrey,
      //         bottomBarItems: [
      //           const BottomBarItem(
      //             inActiveItem: Icon(
      //               Icons.home_filled,
      //               color: Colors.blueGrey,
      //             ),
      //             activeItem: Icon(
      //               Icons.home_filled,
      //               color: Colors.blueAccent,
      //             ),
      //             itemLabel: 'Page 1',
      //           ),
      //           const BottomBarItem(
      //             inActiveItem: Icon(
      //               Icons.star,
      //               color: Colors.blueGrey,
      //             ),
      //             activeItem: Icon(
      //               Icons.star,
      //               color: Colors.blueAccent,
      //             ),
      //             itemLabel: 'Page 2',
      //           ),

      //           ///svg example
      //           BottomBarItem(
      //             inActiveItem: SvgPicture.asset(
      //               'assets/search_icon.svg',
      //               color: Colors.blueGrey,
      //             ),
      //             activeItem: SvgPicture.asset(
      //               'assets/search_icon.svg',
      //               color: Colors.white,
      //             ),
      //             itemLabel: 'Page 3',
      //           ),
      //           const BottomBarItem(
      //             inActiveItem: Icon(
      //               Icons.settings,
      //               color: Colors.blueGrey,
      //             ),
      //             activeItem: Icon(
      //               Icons.settings,
      //               color: Colors.pink,
      //             ),
      //             itemLabel: 'Page 4',
      //           ),
      //           const BottomBarItem(
      //             inActiveItem: Icon(
      //               Icons.person,
      //               color: Colors.blueGrey,
      //             ),
      //             activeItem: Icon(
      //               Icons.person,
      //               color: Colors.yellow,
      //             ),
      //             itemLabel: 'Page 5',
      //           ),
      //         ],
      //         onTap: (index) {
      //           /// control your animation using page controller
      //           _pageController.animateToPage(
      //             index,
      //             duration: const Duration(milliseconds: 500),
      //             curve: Curves.easeIn,
      //           );
      //         },
      //       )
      //     : null,
    );
  }
}

// enum _SelectedTab { home, favorite, search, person }
