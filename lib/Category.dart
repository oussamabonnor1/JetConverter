import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;

  Category(this.icon, this.text, this.color);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Container(
        height: 100,
        padding: EdgeInsets.all(16),
        child: InkWell(
          highlightColor: Colors.amber,
          onTap: () {
            print("I was tapped!");
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8),
                child: Icon(icon, size: 60, color: color),
              ),
              Center(
                child: Text(
                  text,
                  style: TextStyle(color: color, fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
