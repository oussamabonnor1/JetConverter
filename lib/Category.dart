import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;

  Category(this.icon, this.text, this.color);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.red,
      child: Container(
        height: 100,
        padding: EdgeInsets.all(16),
        child: InkWell(
          highlightColor: Colors.amber,
          onTap: (){
            print("I was tapped!");
          },
          child: Row(
            children: <Widget>[
              Icon(icon, size: 60, color: color),
              Text(
                text,
                style: TextStyle(fontSize: 24, color: color),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
