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

// class _MyHomePageState extends State<MyHomePage> {
//   final List<Product> _products = [
//     Product(name: 'Product A', price: 10),
//     Product(name: 'Product B', price: 20),
//     Product(name: 'Product C', price: 30),
//   ];

//   final List<Product> _cart = [];
//   final TextEditingController _searchController = TextEditingController();
//   bool _sortAscending = true;

//   double get _cartTotal => _cart.fold(0, (sum, product) => sum + product.price);

//   List<Product> get _visibleProducts {
//     final searchTerm = _searchController.text;
//     final products = _sortProducts(_products);
//     if (searchTerm.isEmpty) {
//       return products;
//     } else {
//       return products
//           .where((product) =>
//               product.name.toLowerCase().contains(searchTerm.toLowerCase()))
//           .toList();
//     }
//   }

//   List<Product> _sortProducts(List<Product> products) {
//     if (_sortAscending) {
//       return List.from(products)..sort((a, b) => a.price.compareTo(b.price));
//     } else {
//       return List.from(products)..sort((a, b) => b.price.compareTo(a.price));
//     }
//   }

//   void _toggleSort() {
//     setState(() {
//       _sortAscending = !_sortAscending;
//     });
//   }

//   void _addToCart(Product product) {
//     setState(() {
//       _cart.add(product);
//     });
//   }

//   Widget _buildProductList() {
//     return ListView.builder(
//       itemCount: _visibleProducts.length,
//       itemBuilder: (context, index) {
//         final product = _visibleProducts[index];
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
//         title: TextField(
//           controller: _searchController,
//           decoration: InputDecoration(
//             hintText: 'Search',
//             hintStyle: TextStyle(color: Colors.white),
//             border: InputBorder.none,
//           ),
//           style: TextStyle(color: Colors.white),
//           onChanged: (value) {
//             setState(() {});
//           },
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.sort),
//             onPressed: _toggleSort,
//           ),
//         ],
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
