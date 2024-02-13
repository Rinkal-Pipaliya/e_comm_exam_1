import 'package:flutter/material.dart';
import 'package:exam_1/utils/routes.dart';
import '../../utils/producte_utils.dart';

Widget ProductCart({required String category, required BuildContext context}) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        ...allProducts
            .map(
              (e) => (category == e['category'])
                  ? GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(MyRoutes.detailPage, arguments: e);
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            image: DecorationImage(
                              image: NetworkImage(e['thumbnail']),
                              fit: BoxFit.cover,
                            )),
                      ),
                    )
                  : Container(),
            )
            .toList()
      ],
    ),
  );
}
