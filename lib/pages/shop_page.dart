import 'package:ecommerce_front/components/my_drawer.dart';
import 'package:ecommerce_front/components/my_product_tile.dart';
import 'package:ecommerce_front/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop Page", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        elevation: 0,     
        actions: [
          IconButton(onPressed: () => Navigator.pushNamed(context, "/cart_page"), icon: Icon(Icons.shopping_cart_outlined)),
        ],   
),

      drawer: MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.onSurface,
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Center(
            child: Text(
              "Pick from a selected list of premium products",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),

          SizedBox(
            height: 550,
            child: ListView.builder(
              padding: EdgeInsets.all(15),
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final product = products[index];
                return MyProductTile(product: product);
              },
            ),
          ),
        ],
      ),
    );
  }
}
