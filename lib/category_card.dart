import 'package:flutter/material.dart';
import 'package:unit_convertor/category.dart';
import 'package:unit_convertor/converter_controller.dart';
import 'package:unit_convertor/CategoryActivity.dart';

class CategoryCard extends StatefulWidget {
  Category category;
  String title;

  CategoryCard({this.category, this.title});

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: widget.category.highlightColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(
              widget.category.text,
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              widget.category.icon,
              size: 35,
              color: CategoryActivity.accentColor,
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: CategoryActivity.accentColor,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ConverterController(widget.title,"USD","EUR")),
              );
            },
          ),
        ));
  }
}
