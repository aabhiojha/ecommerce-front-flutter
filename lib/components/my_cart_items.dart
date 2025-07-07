import 'package:flutter/material.dart';

class MyCartItem extends StatelessWidget {
  const MyCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.inversePrimary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          // Product name and price
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Product 1",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 4),
              Text(
                "\$99.99",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          const Spacer(),

          // Remove button
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.remove_circle_outline),
            color: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
