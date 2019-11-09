import 'package:flutter/material.dart';
import 'package:unit_convertor/Category.dart';

class JetConverter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blueGrey,
        child: Center(
          child: Category(Icons.add,"hello", Colors.white),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("JetConverter"),
        ),
        body: JetConverter(),
      ),
    ),
  );
}
/*
void main() {
   runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JetConvertor',
      home: Scaffold(
        appBar: AppBar(
          title: Text('JetConvertor'),
        ),
        body: HelloRectangle(),
      ),
    ),
  );
}

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.greenAccent,
        height: 400.0,
        width: 300.0,
        child: Center(
          child: Text(
            'Hello!',
            style: TextStyle(fontSize: 40.0, color: Colors.amber),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
*/
