import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unit_convertor/category.dart';
import 'package:unit_convertor/category_card.dart';

void main() {
  runApp(
    CategoryActivity(),
  );
}

class CategoryActivity extends StatelessWidget {
  static Color backgroundColor = Color(0xFF141414);
  static Color highlightColor = Color(0xFF474747);
  static Color accentColor = Color(0xFFAB8F79);

  List<Category> categories = [
    Category(Icons.music_note, "Music note", backgroundColor, highlightColor,
        Colors.white, ["USD", "EUR"]),
    Category(Icons.favorite, "Love", backgroundColor, highlightColor,
        Colors.white, ["USD", "EUR"]),
    Category(Icons.directions_run, "Run", backgroundColor, highlightColor,
        Colors.white, ["USD", "EUR"]),
    Category(Icons.book, "Book", backgroundColor, highlightColor, Colors.white,
        ["USD", "EUR"]),
    Category(Icons.brush, "Bursh", backgroundColor, highlightColor,
        Colors.white, ["USD", "EUR"]),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "JetConverter",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: categoryList(),
      ),
    );
  }

  Widget categoryList() {
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return CategoryCard(
          category: categories[index],
          title: categories[index].text,
        );
      },
    );
  }
}
