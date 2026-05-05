import 'package:flutter/material.dart';
import '../../data/models/product_model.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  const ProductTile({super.key, required this.product, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(product.thumbnail),
        title: Text(product.title),
        subtitle: Text("\$${product.price}"),
        onTap: onTap,
      ),
    );
  }
}
