import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unit_convertor/Category.dart';

class CategoryActivity extends StatelessWidget {
  static const categoryNames = <String>[
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
  ];

  List<Color> categoryColors = <Color>[
    Colors.amber,
    Colors.redAccent,
    Colors.greenAccent,
    Colors.lightBlue,
  ];

  @override
  Widget build(BuildContext context) {
    final categories = <Category>[];
    for (int i = 0; i < 4; i++) {
      categories.add(Category(
          Icons.print, categoryNames[i], Color(0xFF485D67), Colors.white));
    }

    return Scaffold(
      body: categoryList(categories),
    );
  }

  Widget categoryList(List<Widget> categories) {
    return Container(
      color: Colors.blueGrey,
      padding: EdgeInsets.all(12),
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) => categories[index],
        itemCount: categories.length,
      ),
    );
  }

  CategoryActivity();
}
