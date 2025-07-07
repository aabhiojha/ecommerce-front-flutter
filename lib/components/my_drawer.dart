import 'package:ecommerce_front/components/my_list_title.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.onSurface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Icon(
                  Icons.shopping_bag,
                  size: 72,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

              const SizedBox(height: 25),

              MyListTitle(
                text: "Shop",
                icon: Icons.home,
                onTap: () {
                  Navigator.pop(context);

                  Navigator.pushReplacementNamed(context, "/shop_page");
                },
              ),

              MyListTitle(
                text: "Cart",
                icon: Icons.shopping_cart,
                onTap: () {
                  // then go to the cart page
                  Navigator.pushReplacementNamed(context, "/cart_page");
                },
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: MyListTitle(
              text: "Exit",
              icon: Icons.logout_rounded,
              onTap: () {
                // take back to the homepage
                Navigator.pushReplacementNamed(context, '/intro_page');
              },
            ),
          ),

          // drawer header: logo

          // cart tile

          // exit shop tile
        ],
      ),
    );
  }
}