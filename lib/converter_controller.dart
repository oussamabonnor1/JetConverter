import 'package:flutter/material.dart';
import 'package:unit_convertor/CategoryActivity.dart';

class ConverterController extends StatefulWidget {
  @override
  _ConverterControllerState createState() => _ConverterControllerState();
}

class _ConverterControllerState extends State<ConverterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CategoryActivity.backgroundColor,
      appBar: AppBar(
        backgroundColor: CategoryActivity.backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "JetConverter",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Text("hey"),
    );
  }
}
