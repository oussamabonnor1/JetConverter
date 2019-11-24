import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unit_convertor/category.dart';
import 'package:unit_convertor/category_card.dart';

class CategoryActivity extends StatelessWidget {

  static Color backgroundColor = Color(0xFF141414);
  static Color highlightColor = Color(0xFF474747);

  List<Category> categories = [
    Category(Icons.music_note, "Music note", backgroundColor, highlightColor, Colors.white),
    Category(Icons.favorite, "Love", backgroundColor, highlightColor, Colors.white),
    Category(Icons.directions_run, "Run", backgroundColor, highlightColor, Colors.white),
    Category(Icons.book, "Book", backgroundColor, highlightColor, Colors.white),
    Category(Icons.brush, "Bursh", backgroundColor, highlightColor, Colors.white),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
    );
  }

  Widget categoryList() {
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index){
        return CategoryCard(category: categories[index],);
      },
    );
  }
}
