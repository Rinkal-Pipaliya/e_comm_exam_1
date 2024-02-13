import 'package:flutter/material.dart';
import 'package:exam_1/utils/producte_utils.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: cartItems
                .map(
                  (e) => Container(
                    height: size.height * 0.22,
                    color: Colors.grey,
                    margin: const EdgeInsets.only(bottom: 20),
                    alignment: Alignment.center,
                    child: Text(
                      e['title'],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
