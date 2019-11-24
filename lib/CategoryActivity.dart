import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unit_convertor/category.dart';
import 'package:unit_convertor/category_card.dart';

class CategoryActivity extends StatelessWidget {
  List categoryNames = <String>[
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
  ];

  List<Category> categories = [];

  List<Color> categoryColors = <Color>[
    Colors.amber,
    Colors.redAccent,
    Colors.greenAccent,
    Colors.lightBlue,
  ];

  Color backgroundColor = Color(0xFF141414);

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 4; i++) {
      categories.add(Category(Icons.print, categoryNames[i], Color(0xFF485D67), Colors.white));
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "JetConverte",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: categoryList(),
    );
  }

  Widget categoryList() {
    return Container(
      color: Colors.blueGrey,
      padding: EdgeInsets.all(12),
      child: ListView(
        children:
          categories.map((category) => CategoryCard(category: category)).toList(),
      ),
    );
  }
}
