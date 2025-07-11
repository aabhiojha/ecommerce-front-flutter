import 'package:ecommerce_front/models/shop.dart';
import 'package:ecommerce_front/pages/cart_page.dart';
import 'package:ecommerce_front/pages/intro_page.dart';
import 'package:ecommerce_front/pages/shop_page.dart';
import 'package:ecommerce_front/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => Shop(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: lightMode,
      routes: {
        "/intro_page": (context) => const IntroPage(),
        "/shop_page": (context) => const ShopPage(),
        "/cart_page": (context) => const CartPage(),
      },
    );
  }
}
