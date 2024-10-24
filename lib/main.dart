import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/product_list.dart';
import 'package:shop/pages/products_detail_page.dart';
import 'package:shop/pages/products_overview_page.dart';
import 'package:shop/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProductList(),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: "Lato",
        ),
        home: const ProductsOverviewPage(),
        routes: {
          AppRoutes.PRODUCT_DETAIL: (ctx) => const ProductsDetailPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
