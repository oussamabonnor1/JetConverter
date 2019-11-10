import 'package:flutter/material.dart';
import 'package:unit_convertor/CategoryActivity.dart';

class JetConverter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("JetConverte"),
        ),
        body: CategoryActivity(),
      ),
    );
  }
}

void main() {
  runApp(
    JetConverter(),
  );
}
