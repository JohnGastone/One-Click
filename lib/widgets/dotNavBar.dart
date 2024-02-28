// ignore_for_file: library_private_types_in_public_api

import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> with TickerProviderStateMixin {
  var _selectedTab = _SelectedTab.HomePage;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        child: Image.asset("imgages/1.png"),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(
          margin: EdgeInsets.only(left: 10, right: 10),
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          dotIndicatorColor: Colors.white,
          unselectedItemColor: Colors.grey[300],
          // enableFloatingNavBar: false,
          onTap: _handleIndexChanged,
          items: [
            /// NavBar
            DotNavigationBarItem(
              icon: Icon(Icons.home),
              selectedColor: Color(0xff73544C),
            ),

            /// Likes
            DotNavigationBarItem(
              icon: Icon(Icons.favorite),
              selectedColor: Color(0xff73544C),
            ),

            /// Search
            DotNavigationBarItem(
              icon: Icon(Icons.search),
              selectedColor: Color(0xff73544C),
            ),

            /// Profile
            DotNavigationBarItem(
              icon: Icon(Icons.person),
              selectedColor: Color(0xff73544C),
            ),
          ],
        ),
      ),
    );
  }
}

enum _SelectedTab { HomePage, FavoriteItems, cartPage, Profile }



// class HomePageState extends State<HomePage> with TickerProviderStateMixin {
//   // Existing code...

//   @override
//   Widget build(BuildContext context) {
//     // Determine the widget to display based on the selected tab
//     Widget bodyContent;
//     switch (_selectedTab) {
//       case _SelectedTab.HomePage:
//         bodyContent = _buildHomePageContent(); // A method to build home page content
//         break;
//       case _SelectedTab.FavoriteItems:
//         bodyContent = Favorite(); // Assuming this is your favorites page widget
//         break;
//       case _SelectedTab.cartPage:
//         bodyContent = CartPage(); // Your cart page widget
//         break;
//       case _SelectedTab.Profile:
//         bodyContent = Profile(); // Your profile page widget
//         break;
//       default:
//         bodyContent = _buildHomePageContent(); // Default to home page content
//     }

//     return Scaffold(
//       appBar: _buildAppBar(), // Method to build AppBar
//       body: bodyContent, // This now changes based on the selected tab
//       bottomNavigationBar: _buildBottomNavigationBar(), // Method to build the bottom navigation bar
//     );
//   }

//   // Method to build the AppBar widget
//   AppBar _buildAppBar() {
//     // Your existing AppBar code...
//   }

//   // Method to build the BottomNavigationBar widget
//   Widget _buildBottomNavigationBar() {
//     // Your existing BottomNavigationBar code...
//   }

//   // Method to build the HomePage content
//   Widget _buildHomePageContent() {
//     // Your existing ListView or any other widget that makes up the home content...
//   }

//   // Existing code...
// }
