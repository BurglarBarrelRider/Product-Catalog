import 'package:flutter/material.dart';
import 'features/products/presentation/pages/product_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProductListPage(),
    );
  }
}
// <== double main.dart O_o