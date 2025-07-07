import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/shop_page');
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 30, 5, 30),
        child: Icon(Icons.arrow_forward,
        color: Theme.of(context).colorScheme.inversePrimary,
        size: 30
        ),
      ),
    );
  }
}
