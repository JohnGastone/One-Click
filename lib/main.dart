import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tunzaaecommerce/pages/cartPage.dart';
import 'package:tunzaaecommerce/pages/favorite.dart';
import 'package:tunzaaecommerce/pages/introScreen.dart';
import 'package:tunzaaecommerce/pages/itemPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: TestScreen(), // Adjusted to use home for the initial route
      onGenerateRoute: (settings) {
        // Handling route generation dynamically
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (_) => TestScreen());
          case 'cartPage':
            return MaterialPageRoute(builder: (_) => const cartPage());
          // Removed direct route to ItemPage
          case 'favoritePage':
            return MaterialPageRoute(builder: (_) => const FavoriteItems());
          default:
            // If no such route exists, return a route to a "Not Found" page or similar
            return MaterialPageRoute(
                builder: (_) => Scaffold(
                    body: Center(
                        child: Text('Page not found',
                            style: GoogleFonts.spaceMono(fontSize: 35)))));
        }
      },
    );
  }
}
