import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/cart.dart';
import 'package:shop/models/order_list.dart';
import 'package:shop/models/product_list.dart';
import 'package:shop/pages/cart_page.dart';
import 'package:shop/pages/orders_page.dart';
import 'package:shop/pages/product_form_page.dart';
import 'package:shop/pages/products_detail_page.dart';
import 'package:shop/pages/products_overview_page.dart';
import 'package:shop/pages/products_page.dart';
import 'package:shop/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductList(), // Gerenciamento da lista de produtos.
        ),
        ChangeNotifierProvider(
          create: (_) => Cart(), // Adiciona os produtos no carrinho.
        ),
        ChangeNotifierProvider(
          create: (_) =>
              OrderList(), // Adiciona os produtos comprados em ("My Orders")
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: "Lato",
        ),
        routes: {
          AppRoutes.HOME: (ctx) => const ProductsOverviewPage(),
          AppRoutes.PRODUCT_DETAIL: (ctx) => const ProductsDetailPage(),
          AppRoutes.CART: (ctx) => const CartPage(),
          AppRoutes.ORDERS: (ctx) => const OrdersPage(),
          AppRoutes.PRODUCTS: (ctx) => const ProductsPage(),
          AppRoutes.PRODUCT_FORM: (ctx) => const ProductFormPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
