import 'package:flutter/material.dart';
import 'package:unit_convertor/category.dart';

class CategoryCard extends StatefulWidget {

  Category category;

  CategoryCard({this.category});

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.backgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        height: 100,
        padding: EdgeInsets.all(16),
        child: InkWell(
          highlightColor: Colors.amber,
          borderRadius: BorderRadius.circular(10),
          onTap: () {
            print("I was tapped!");
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8),
                child: Icon(widget.category.icon, size: 60, color: widget.textColor),
              ),
              Center(
                child: Text(
                  widget.text,
                  style: TextStyle(color: widget.textColor, fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
