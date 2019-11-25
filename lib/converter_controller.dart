import 'package:flutter/material.dart';
import 'package:unit_convertor/CategoryActivity.dart';
import 'package:unit_convertor/category.dart';

class ConverterController extends StatefulWidget {
  String title;
  Category category;
  String convertFrom, convertTo;
  List<String> conversionOptions = [];

  ConverterController(this.title, this.category) {
    conversionOptions = category.conversionOptions;
    convertFrom = conversionOptions[0];
    convertTo = conversionOptions[0];
  }

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
            padding: const EdgeInsets.all(16),
            child: Card(
              color: CategoryActivity.highlightColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          widget.convertFrom,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        DropdownButton(
                          underline: SizedBox(),
                          icon: Icon(Icons.keyboard_arrow_down, color: Colors.white,),
                          value: widget.convertFrom,
                          items: widget.conversionOptions
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(color: Colors.white),
                              ),
                            );
                          }).toList(),
                          onChanged: (String newValue) {},
                        ),
                      ],
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white, fontSize: 24),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter a value",
                        hintStyle: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
