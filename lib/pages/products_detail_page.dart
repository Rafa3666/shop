import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';

class ProductsDetailPage extends StatelessWidget {
  const ProductsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Product product =
        ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        backgroundColor: const Color.fromARGB(255, 156, 24, 14),
        foregroundColor: Colors.white,
      ),
    );
  }
}
