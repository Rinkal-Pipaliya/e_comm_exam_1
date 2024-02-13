import 'package:flutter/material.dart';
import 'package:exam_1/views/componets/product_cart.dart';

Widget CategoryView({required String category, required BuildContext context}) {
  Size size = MediaQuery.of(context).size;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        category,
        style: const TextStyle(
          fontSize: 25,
        ),
      ),
      ProductCart(category: category, context: context),
    ],
  );
}
