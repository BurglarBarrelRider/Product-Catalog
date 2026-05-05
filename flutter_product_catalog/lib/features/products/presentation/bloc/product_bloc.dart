import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import '../../data/models/product_model.dart';
import 'product_event.dart';
import 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductLoading()) {
    on<LoadProducts>((event, emit) async {
      try {
        final response = await http.get(
          Uri.parse('https://dummyjson.com/products'), // here is the source to mock backend 
        );

        final data = jsonDecode(response.body);
        final List list = data['products'];

        final products = list.map((e) => Product.fromJson(e)).toList();

        emit(ProductLoaded(products));
      } catch (e) {
        emit(ProductError("Failed to load products"));
      }
    });
  }
}
