import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color backgroundColor;
  final Color textColor;

  Category(this.icon, this.text, this.backgroundColor, this.textColor);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(10),
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
                child: Icon(icon, size: 60, color: textColor),
              ),
              Center(
                child: Text(
                  text,
                  style: TextStyle(color: textColor, fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
