import 'package:flutter/material.dart';

class Category{
  String text;
  IconData icon;
  Color backgroundColor;
  Color highlightColor;
  Color textColor;
  List<String> conversionOptions;

  Category(this.icon, this.text, this.backgroundColor, this.highlightColor, this.textColor, this.conversionOptions);
}