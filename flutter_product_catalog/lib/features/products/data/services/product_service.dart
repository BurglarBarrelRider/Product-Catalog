

import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/product_model.dart';

class ProductService {

  Future<List<Product>> fetchProducts() async {

    final response = await http.get(
      Uri.parse('https://dummyjson.com/products'),
    );

    final data = jsonDecode(response.body);

    final List products = data['products'];

    return products
        .map((e) => Product.fromJson(e))
        .toList();
  }
}