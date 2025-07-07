import 'package:ecommerce_front/models/products.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier{
  // Product List
  final List<Product> _shop = [
    Product(
      name: "Wireless Earbuds",
      price: 39.99,
      description:
          "Compact and powerful earbuds with noise cancellation and 20-hour battery life.",
    ),
    Product(
      name: "Yoga Mat Pro",
      price: 19.99,
      description:
          "Eco-friendly non-slip yoga mat ideal for home workouts and gym sessions.",
    ),
    Product(
      name: "Mechanical Keyboard",
      price: 89.99,
      description:
          "Tactile keys, RGB backlight, and a solid aluminum frame for durability.",
    ),
    Product(
      name: "Smart LED Bulb (2 Pack)",
      price: 14.99,
      description:
          "Voice-controlled smart bulbs with adjustable brightness and color settings.",
    ),
    Product(
      name: "HD Webcam with Mic",
      price: 34.99,
      description:
          "Perfect for video calls and streaming, with autofocus and built-in microphone.",
    ),
  ];


  // user cart
  List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;
  

  // get user cart
  List<Product> get cart => _cart;


  // add item to cart
  void addToCart(Product item){
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart(Product item){
    _cart.remove(item);
    notifyListeners();
  }
}


