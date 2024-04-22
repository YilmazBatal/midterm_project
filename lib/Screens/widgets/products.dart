import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String image;
  final String title;

  Product({
    super.key,
    required this.image,
    required this.title,
  });

  // ignore: unused_field
  final _productsList = [
    {
      "image" : "image",
      "title" : "title",
      "price" : "price",
    },
    {
      "image" : "image2",
      "title" : "title2",
      "price" : "price2",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black87)
      ),
      child: const Column(
        children: [
          Text("data")
        ],
      ),
    );
  }
}