// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Shopping Cart Demo',
//       home: MyHomePage(),
//     );
//   }
// }

// class Product {
//   final String name;
//   final double price;

//   Product({required this.name, required this.price});
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final List<Product> _products = [
//     Product(name: 'Product A', price: 10),
//     Product(name: 'Product B', price: 20),
//     Product(name: 'Product C', price: 30),
//   ];

//   final List<Product> _cart = [];

//   double get _cartTotal => _cart.fold(0, (sum, product) => sum + product.price);

//   void _addToCart(Product product) {
//     setState(() {
//       _cart.add(product);
//     });
//   }

//   Widget _buildProductList() {
//     return ListView.builder(
//       itemCount: _products.length,
//       itemBuilder: (context, index) {
//         final product = _products[index];
//         return ListTile(
//           title: Text(product.name),
//           subtitle: Text('\$${product.price}'),
//           trailing: IconButton(
//             icon: Icon(Icons.add),
//             onPressed: () => _addToCart(product),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildCart() {
//     return Column(
//       children: [
//         ListTile(
//           title: Text('Shopping Cart'),
//           trailing: Text('\$${_cartTotal.toStringAsFixed(2)}'),
//         ),
//         Expanded(
//           child: ListView.builder(
//             itemCount: _cart.length,
//             itemBuilder: (context, index) {
//               final product = _cart[index];
//               return ListTile(
//                 title: Text(product.name),
//                 subtitle: Text('\$${product.price}'),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping Cart Demo'),
//       ),
//       body: Column(
//         children: [
//           Expanded(child: _buildProductList()),
//           Divider(),
//           _buildCart(),
//         ],
//       ),
//     );
//   }
// }
