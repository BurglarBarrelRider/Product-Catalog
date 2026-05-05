import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/product_bloc.dart';
import '../bloc/product_event.dart';
import '../bloc/product_state.dart';
import 'product_details_page.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProductBloc()..add(LoadProducts()),
      child: Scaffold(
        appBar: AppBar(title: const Text("Products")),

        body: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {

            if (state is ProductLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is ProductLoaded) {
              return ListView.builder(
                itemCount: state.products.length,
                itemBuilder: (context, index) {

                  final product = state.products[index];

                  return ListTile(
                    leading: Image.network(product.thumbnail),
                    title: Text(product.title),
                    subtitle: Text("\$${product.price}"),

                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ProductDetailsPage(
                            product: product,
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            }

            if (state is ProductError) {
              return Center(child: Text(state.message));
            }

            return const SizedBox();
          },
        ),
      ),
    );
  }
}