import 'package:flutter/material.dart';
import 'package:unit_convertor/CategoryActivity.dart';

class ConverterController extends StatefulWidget {
  String title;
  String convertFrom, convertTo;

  ConverterController(this.title, this.convertFrom, this.convertTo);

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
      body: Column(
        children: <Widget>[
          Center(
              child: Text(
            widget.title,
            style: TextStyle(color: Colors.white),
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: CategoryActivity.highlightColor,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          widget.convertFrom,
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                        DropdownButton(
                          value: 'One',
                          items: <String>['One', 'Two', 'Free', 'Four']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String newValue) {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
