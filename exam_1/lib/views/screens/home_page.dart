import 'package:exam_1/utils/producte_utils.dart';
import 'package:exam_1/utils/routes.dart';
import 'package:exam_1/views/componets/category_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("E-Commerce"),
        backgroundColor: Colors.blue,
        actions: [
          const Icon(Icons.search),
          const SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(MyRoutes.cartPage);
              },
              icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Comming Soon",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    "assets/gif/gif 3.gif",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Expanded(
                    child: SingleChildScrollView(
                      child: GestureDetector(
                        child: Column(
                          children: allCategories
                              .map(
                                (e) =>
                                    CategoryView(category: e, context: context),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
