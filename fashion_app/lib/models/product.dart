import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Grey Shorts",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/products/4.png",
      color: Color.fromARGB(255, 255, 113, 113)),
  Product(
      id: 2,
      title: "Grey Jeans",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/products/5.png",
      color: Color.fromARGB(255, 100, 255, 134)),
  Product(
      id: 3,
      title: "Blue Jeans",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/products/6.png",
      color: Color.fromARGB(255, 0, 132, 255)),
  Product(
      id: 4,
      title: "Light Blue Jeans",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/products/7.png",
      color: Color.fromARGB(255, 252, 255, 75)),
  Product(
      id: 5,
      title: "Brown Skirt",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/products/8.png",
      color: Color.fromARGB(255, 183, 255, 150)),

  Product(
      id: 6,
      title: "Orange Tshirt",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/products/13.png",
      color: Color.fromARGB(255, 131, 199, 255)),

  Product(
      id: 7,
      title: "Gloves",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/products/10.png",
      color: Color.fromARGB(255, 181, 20, 255)),

      Product(
      id: 8,
      title: "Dark Blue Jeans",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/products/11.png",
      color: Color.fromARGB(255, 75, 255, 20)),

      Product(
      id: 9,
      title: "Blue Dress",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/products/12.png",
      color: Color.fromARGB(255, 253, 255, 105)),

    Product(
      id: 10,
      title: "Blue Dress",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/products/9.png",
      color: Color.fromARGB(255, 255, 49, 49)),



];
String dummyText = "This is one of the popular products.";
