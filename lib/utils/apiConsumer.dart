// ignore_for_file: file_names
// // ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Fake Store API Demo',
//       home: MyHomePage(),
//     );
//   }
// }

// class Product {
//   final int id;
//   final String title;
//   final double price;
//   final String description;
//   final String category;
//   final String image;

//   Product({
//     required this.id,
//     required this.title,
//     required this.price,
//     required this.description,
//     required this.category,
//     required this.image,
//   });

//   factory Product.fromJson(Map<String, dynamic> json) {
//     return Product(
//       id: json['id'],
//       title: json['title'],
//       price: json['price'].toDouble(),
//       description: json['description'],
//       category: json['category'],
//       image: json['image'],
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<Product> _products = [];

//   @override
//   void initState() {
//     super.initState();
//     _getProducts();
//   }

//   Future<void> _getProducts() async {
//     final response =
//         await http.get(Uri.parse('https://fakestoreapi.com/products'));
//     if (response.statusCode == 200) {
//       final List<dynamic> data = jsonDecode(response.body);
//       final List<Product> products =
//           data.map((json) => Product.fromJson(json)).toList();
//       setState(() {
//         _products = products;
//       });
//     } else {
//       throw Exception('Failed to load products');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Products'),
//       ),
//       body: GridView.builder(
//         itemCount: _products.length,
//         itemBuilder: (context, index) {
//           final product = _products[index];
//           return ListTile(
//             leading: Image.network(product.image),
//             title: Text(product.title),
//             subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
//           );
//         },
//       ),
//     );
//   }
// }
